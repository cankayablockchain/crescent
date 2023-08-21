part of 'sign_up_page.dart';

/// The layout widget for the sign-up screen.
class SignUpLayout extends StatelessWidget {
  /// Constructs a [SignUpLayout].
  const SignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar.large(title: Text('Sign Up')),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SignUpHeader(),
                Spacer(),
                SignUpStepper(),
                Spacer(flex: 2),
                SignUpSubmitButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
