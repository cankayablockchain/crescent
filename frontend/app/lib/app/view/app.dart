import 'package:app/app/injection/injection.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      builder: (context, widget) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: const AppTheme().themeData,
        darkTheme: const AppDarkTheme().themeData,
        routerDelegate: getIt<AppRouter>().delegate(
          navigatorObservers: () => [TalkerRouteObserver(getIt<Talker>())],
        ),
        routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
        builder: (context, widget) {
          /// Prevent app from scaling with device font
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: Scaffold(
              body: SafeArea(
                child: widget!,
              ),
            ),
          );
        },
      ),
    );
  }
}
