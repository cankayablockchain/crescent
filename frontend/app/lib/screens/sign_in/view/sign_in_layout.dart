part of 'sign_in_page.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar.large(title: Text('Sign In')),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SignInEmailInput(),
                SizedBox(height: 16),
                SignInPasswordInput(),
                Spacer(),
                SignInSubmitButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
