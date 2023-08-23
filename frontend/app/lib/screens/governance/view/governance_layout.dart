part of 'governance_page.dart';

class GovernanceLayout extends StatelessWidget {
  const GovernanceLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Center(
            child: Text('No active governance proposals'),
          ),
        ),
      ],
    );
  }
}
