part of 'onboard_page.dart';

class OnboardLayout extends StatelessWidget {
  const OnboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(flex: 2),
          const Spacer(flex: 2),
          FilledButton.tonal(
            onPressed: () {
              context.router.push(const SignUpRoute());
            },
            child: const Text('Create Account'),
          ),
          TextButton(
            onPressed: () {
              context.router.push(const SignInRoute());
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
