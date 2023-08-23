import 'package:flutter/material.dart';

import '../../models/chain_metadata.dart';

class ChainData {
  static final List<ChainMetadata> mainChains = [
    ChainMetadata(
      type: ChainType.eip155,
      chainId: 'eip155:1',
      name: 'Ethereum',
      logo: '/chain-logos/eip155-1.png',
      color: Colors.blue.shade300,
      rpc: ['https://cloudflare-eth.com/'],
    ),
    ChainMetadata(
      type: ChainType.eip155,
      chainId: 'eip155:137',
      name: 'Polygon',
      logo: '/chain-logos/eip155-137.png',
      color: Colors.purple.shade300,
      rpc: ['https://polygon-rpc.com/'],
    ),
    // const ChainMetadata(
    //   type: ChainType.solana,
    //   chainId: 'solana:4sGjMW1sUnHzSxGspuhpqLDx6wiyjNtZ',
    //   name: 'Solana',
    //   logo: 'TODO',
    //   color: Colors.black,
    //   rpc: [
    //     "https://api.mainnet-beta.solana.com",
    //     "https://solana-api.projectserum.com",
    //   ],
    // ),
    // ChainMetadata(
    //   type: ChainType.kadena,
    //   chainId: 'kadena:mainnet01',
    //   name: 'Kadena',
    //   logo: 'TODO',
    //   color: Colors.purple.shade600,
    //   rpc: [
    //     "https://api.testnet.chainweb.com",
    //   ],
    // ),
  ];

  static final List<ChainMetadata> testChains = [
    ChainMetadata(
      type: ChainType.eip155,
      chainId: 'eip155:11235',
      name: 'Haqq Chain Test net',
      logo: 'ISLMT',
      color: Colors.purple.shade600,
      rpc: [
        "https://rpc.eth.testedge2.haqq.network",
      ],
    ),
  ];

  static final List<ChainMetadata> allChains = [...mainChains, ...testChains];
}
