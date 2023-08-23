import 'dart:typed_data';

import 'package:walletconnect_flutter_v2/walletconnect_flutter_v2.dart';
import 'package:walletconnect_modal_flutter/services/walletconnect_modal/walletconnect_modal_service.dart';
import 'package:webthree/crypto.dart';
import 'package:webthree/webthree.dart';

class WCWeb3AuthenticationClient {
  Web3App? walletConnect;
  WalletConnectModalService? walletConnectModalService;

  Future<void> initWalletConnect() async {
    walletConnect = await Web3App.createInstance(
      projectId: '',
      metadata: const PairingMetadata(
        name: 'CRESCENT',
        description: 'CRESCENT WalletConnect',
        url: 'https://walletconnect.com/',
        icons: ['https://walletconnect.com/walletconnect-logo.png'],
        redirect: Redirect(
          native: 'flutterdapp://',
          universal: 'https://www.walletconnect.com',
        ),
      ),
    );

    walletConnectModalService = WalletConnectModalService(
      web3App: walletConnect!,
      metadata: const PairingMetadata(
        name: 'CRESCENT',
        description: 'CRESCENT WalletConnect',
        url: 'https://walletconnect.com/',
        icons: ['https://walletconnect.com/walletconnect-logo.png'],
        redirect: Redirect(
          native: 'app://',
          universal: 'https://www.walletconnect.com',
        ),
      ),
      requiredNamespaces: {
        kShortChainId: const RequiredNamespace(
          chains: [kFullChainId],
          methods: [
            'eth_sign',
            'eth_signTransaction',
            'eth_sendTransaction',
          ],
          events: [
            'chainChanged',
            'accountsChanged',
          ],
        ),
      },
    );
  }

  static const String launchError = 'Metamask wallet not installed';
  static const String kShortChainId = 'eip155';
  static const String kFullChainId = 'eip155:11235';

  static String? _url;

  String get deepLinkUrl => 'metamask://wc?uri=$_url';

  String? _pairingTopic;
  Future<ConnectResponse?> createSession() async {
    if (walletConnect == null) {
      await initWalletConnect();
    }

    final ConnectResponse connectResponse = await walletConnect!.connect(
      requiredNamespaces: {
        kShortChainId: const RequiredNamespace(
          chains: [kFullChainId],
          methods: [
            'eth_sign',
            'eth_signTransaction',
            'eth_sendTransaction',
          ],
          events: [
            'chainChanged',
            'accountsChanged',
          ],
        ),
      },
    );
    final Uri? uri = connectResponse.uri;
    _url = Uri.encodeComponent('$uri');

    _pairingTopic = connectResponse.pairingTopic;

    print('pairingTopic: $_pairingTopic');

    return connectResponse;
  }

  Future<void> disconnect() async {
    if (_pairingTopic != null) {
      await walletConnect?.disconnectSession(
        topic: _pairingTopic!,
        reason: Errors.getSdkError(Errors.USER_DISCONNECTED),
      );
    }
  }

  Future<void> switchNetwork(String chainId) async {
    final params = <String, dynamic>{
      'chainId': 'eip155:11235',
    };
    final response = await walletConnect!.request(
        topic:
            "ce086dc3437644366091f2b5cf21e45097b0745e63d6f1f05d13c70651c6b642",
        chainId: 'eip155:11235',
        request: SessionRequestParams(
          method: 'wallet_switchEthereumChain',
          params: [params],
        ));

    print(response);
  }

  Future<void> addNetwork() async {
    final params = <String, dynamic>{
      'chainId': '0x2be3',
      'chainName': 'Haqq Mainnet',
      'nativeCurrency': <String, dynamic>{
        'name': 'ISLM',
        'symbol': 'ISLM',
        'decimals': 18,
      },
      'rpcUrls': ['https://rpc.eth.haqq.network'],
      'blockExplorerUrls': ['https://explorer.haqq.network/'],
      'iconUrls': [''],
    };

    final response = await walletConnect!.request(
        topic: _pairingTopic!,
        chainId: 'eip155:11235',
        request: SessionRequestParams(
          method: 'wallet_addEthereumChain',
          params: [params],
        ));

    // final response = await connector.sendCustomRequest(method: 'wallet_addEthereumChain', params: [params]);
    print(response);
  }
}

class WalletConnectEthereumCredentialsV2 extends CustomTransactionSender {
  WalletConnectEthereumCredentialsV2(
      {required this.wcClient, required this.session});

  final Web3App wcClient;
  final SessionData session;

  @override
  Future<String> sendTransaction(Transaction transaction) async {
    final from = await extractAddress();
    final signResponse = await wcClient.request(
      topic: session.topic,
      chainId: 'eip155:80001',
      request: SessionRequestParams(
        method: 'eth_sendTransaction',
        params: [
          {
            'from': from.hex,
            'to': transaction.to?.hex,
            // 'gas': '0x${transaction.maxGas!.toRadixString(16)}',
            // 'gasPrice': '0x${transaction.gasPrice?.getInWei.toRadixString(16) ?? '0'}',
            'value':
                '0x${transaction.value?.getInWei.toRadixString(16) ?? '0'}',
            'data':
                transaction.data != null ? bytesToHex(transaction.data!) : null,
            'nonce': transaction.nonce,
          }
        ],
      ),
    );

    return signResponse.toString();
  }

  EthereumAddress get address => EthereumAddress.fromHex(
      session.namespaces.values.first.accounts.first.split(':').last);

  @override
  Future<EthereumAddress> extractAddress() =>
      Future(() => EthereumAddress.fromHex(
          session.namespaces.values.first.accounts.first.split(':').last));

  MsgSignature signToEcSignature(Uint8List payload,
      {int? chainId, bool isEIP1559 = false}) {
    throw UnimplementedError();
  }

  @override
  signToSignature(Uint8List payload, {int? chainId, bool isEIP1559 = false}) {
    throw UnimplementedError();
  }
}
