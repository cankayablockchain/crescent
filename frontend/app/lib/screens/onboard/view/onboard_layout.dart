part of 'onboard_page.dart';

class OnboardLayout extends StatelessWidget {
  const OnboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 2),
          const Text(
            'CRESCENT',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(flex: 2),
          TextButton(
            onPressed: () {
              getIt<WCWeb3AuthenticationClient>()
                  .walletConnectModalService!
                  .open(context: context);
            },
            child: const Text('Connect Wallet'),
          ),
        ],
      ),
    );
  }
}
