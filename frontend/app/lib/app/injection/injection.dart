// Importing the 'get_it' package, which provides a service locator for managing singleton instances.
import 'package:app/app/router/app_router.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:generative_ai_repository/generative_ai_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:wc_web3_authentication_client/wc_web3_authentication_client.dart';

import '../../screens/assistant/bloc/assistant_bloc.dart';
import '../../screens/home/bloc/home_bloc.dart';
import '../../screens/main/bloc/main_bloc.dart';
import '../../screens/onboard/bloc/onboard_bloc.dart';
import '../../screens/settings/bloc/settings_bloc.dart';

/// [GetIt] is a powerful service locator that allows you to register and access singleton instances
/// of various classes throughout your application. It helps with managing dependencies and ensures
/// that only one instance of each class is created and shared when requested.

/// The [getIt] instance serves as the singleton object of the [GetIt] class, enabling you to easily
/// register and retrieve instances of classes using a single entry point.

// Creating an instance of GetIt for service location.
final getIt = GetIt.instance;

///
Future<void> injectBeforeSplash() async {
  getIt

    /// Register [AppRouter] for navigation
    ..registerSingleton(AppRouter())

    /// Register [Talker] for logging
    ..registerSingleton(TalkerFlutter.init());
}

///
Future<void> injectInSplash() async {
  getIt
    ..registerSingleton(SpeechToText())
    ..registerSingleton(FlutterTts())
    ..registerSingleton(WCWeb3AuthenticationClient())

    /// Register [Repositories]
    ..registerSingleton(
      GenerativeAiRepository(
        chat: ChatOpenAI(
          apiKey: '',
          model: 'gpt-3.5-turbo-0613',
          temperature: 0,
        ),
        tools: [],
      )..initialize(),
    )

    /// Register [Blocs]
    ..registerFactory(() => MainBloc(getIt()))
    ..registerFactory(SettingsBloc.new)
    ..registerFactory(OnboardBloc.new)
    ..registerFactory(HomeBloc.new)
    ..registerFactory(() => AssistantBloc(getIt()));

  await getIt<WCWeb3AuthenticationClient>().initWalletConnect();
  await getIt<WCWeb3AuthenticationClient>().createSession();

  await getIt<WCWeb3AuthenticationClient>().walletConnectModalService!.init();
}
