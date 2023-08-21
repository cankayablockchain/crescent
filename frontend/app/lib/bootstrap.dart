import 'dart:async';

import 'package:app/app/injection/injection.dart';
import 'package:flutter/material.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  /// Injecting dependencies before the splash screen is displayed.
  /// This is useful for registering dependencies that are required by the splash screen.
  /// For example, if you need to display a logo on the splash screen, you can register
  /// the [ImageProvider] dependency here.
  await injectBeforeSplash();

  runApp(await builder());
}
