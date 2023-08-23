import 'dart:async';

import 'package:flutter/material.dart';
import 'package:walletconnect_modal_flutter/walletconnect_modal_flutter.dart';
import 'package:web3_repository/src/models/auth_state.dart';

/// Repository responsible for handling Web3 authentication and state management.
class Web3Repository {
  /// Creates a [Web3Repository] with the provided [Web3Repository].
  Web3Repository(this._walletConnectModalService);

  final WalletConnectModalService _walletConnectModalService;

  final StreamController<AuthState> _controller =
      StreamController<AuthState>.broadcast();

  /// Stream that provides the current authentication state.
  Stream<AuthState> get authState async* {
    yield AuthState.unknown;
    yield* _controller.stream;
  }

  void _walletConnectModalListener() {
    var isConnected = _walletConnectModalService.isConnected;
    if (isConnected) {
      _updateStatus(_walletConnectModalService.address);
    } else {
      _updateStatus(null);
    }
  }

  void init() {
    _walletConnectModalService.addListener(_walletConnectModalListener);
  }

  /// Returns `true` if a user is logged in, otherwise `false`.
  bool get isLoggedIn => _walletConnectModalService.isConnected;

  /// Returns the address of the currently authenticated user, or `null` if not authenticated.
  String? get address => _walletConnectModalService.address;

  /// Initiates the login process using the provided [BuildContext].
  Future<void> logIn(BuildContext context) async {
    await _walletConnectModalService.open(context: context);
  }

  /// Logs the user out by disconnecting from the Web3 provider.
  Future<void> logOut() async {
    await _walletConnectModalService.disconnect();
  }

  /// Updates the authentication state based on the provided [address].
  void updateAuthState(String? address) => _updateStatus(address);

  /// Example function: Send a Web3 transaction.
  Future<void> sendTransaction({
    required String toAddress,
    required BigInt amount,
  }) async {}

  /// Example function: Get the balance of the authenticated user's address.
  Future<BigInt> getBalance() async {
    // Implement your Web3 balance retrieval logic here.
    return BigInt.zero;
  }

  /// Example function: Interact with a smart contract by sending a transaction.
  Future<void> interactWithSmartContract({
    required String contractAddress,
    required String functionName,
    required List<dynamic> functionArgs,
  }) async {
    // Implement logic to interact with a smart contract using Web3.
  }

  /// Example function: Get the current gas price for transactions.
  Future<BigInt> getGasPrice() async {
    // Implement logic to fetch the current gas price using Web3.
    return BigInt.zero;
  }

  /// Example function: Sign a message using the user's private key.
  Future<String> signMessage(String message) async {
    // Implement logic to sign a message using Web3.
    return '';
  }

  /// Example function: Verify the authenticity of a signed message.
  bool verifySignedMessage(
      String message, String signature, String signerAddress) {
    // Implement logic to verify the signed message using Web3.
    return false;
  }

  /// Example function: Call a read-only function on a smart contract.
  Future<dynamic> callSmartContractFunction({
    required String contractAddress,
    required String functionName,
    required List<dynamic> functionArgs,
  }) async {
    // Implement logic to call a read-only function on a smart contract using Web3.
    return null;
  }

  /// Private method to update the authentication status based on the provided [address].
  void _updateStatus(String? address) {
    if (address != null) {
      _controller.add(AuthState.authenticated);
    } else {
      _controller.add(AuthState.unauthenticated);
    }
    _controller.add(AuthState.unknown);
  }
}
