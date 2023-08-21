part of 'splash_page.dart';

class SplashLayout extends StatelessWidget {
  const SplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.mapOrNull(
          ready: (_) => context.router.replace(const MainRoute()),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
