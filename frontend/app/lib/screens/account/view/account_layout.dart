part of 'account_page.dart';

class AccountLayout extends StatelessWidget {
  const AccountLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            onPressed: () => context.router.push(const GovernanceRoute()),
            icon: const Icon(Icons.how_to_vote_rounded),
          ),
        ),
        SliverList.list(
          children: [
            const SizedBox(height: 16),
            const _AccountHeader(),
            const SizedBox(height: 16),
            // _AccountWallets(),
            ListTile(
              title: const Text('Transactions'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AccountHeader extends StatelessWidget {
  const _AccountHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'HAQQ Network',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Account Balance',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            getIt<WCWeb3AuthenticationClient>()
                .walletConnectModalService!
                .address!,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 10,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            '0.00 ISLM',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Send'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Receive'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
