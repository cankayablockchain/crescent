// Importing the 'get_it' package, which provides a service locator for managing singleton instances.
import 'package:app/app/router/app_router.dart';
import 'package:authentication_client/authentication_client.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:generative_ai_repository/generative_ai_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:supabase_authentication_client/supabase_authentication_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:user_repository/user_repository.dart';

import '../../screens/assistant/bloc/assistant_bloc.dart';
import '../../screens/feed/bloc/feed_bloc.dart';
import '../../screens/home/bloc/home_bloc.dart';
import '../../screens/main/bloc/main_bloc.dart';
import '../../screens/onboard/bloc/onboard_bloc.dart';
import '../../screens/settings/bloc/settings_bloc.dart';
import '../../screens/sign_in/bloc/sign_in_bloc.dart';
import '../../screens/sign_up/bloc/sign_up_bloc.dart';

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
  await Supabase.initialize(
    url: 'https://kewbcpokprptquotolie.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtld2JjcG9rcHJwdHF1b3RvbGllIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTIxNTgzNTAsImV4cCI6MjAwNzczNDM1MH0.HP3ppzZQCl1JoG8OZpmINa57Ny9Rsszl3dVR48D2aIY',
    authFlowType: AuthFlowType.pkce,
  );

  getIt
    ..registerSingleton(SpeechToText())
    ..registerSingleton(FlutterTts())

    /// Register [Repositories]
    ..registerSingleton<SupabaseClient>(Supabase.instance.client)
    ..registerSingleton<AuthenticationClient>(
      SupabaseAuthenticationClient(getIt()),
    )
    ..registerSingleton(UserRepository(getIt()))
    ..registerSingleton(
      GenerativeAiRepository(
        chat: ChatOpenAI(
          apiKey: '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',
          model: 'gpt-3.5-turbo-0613',
          temperature: 0,
        ),
        tools: [],
      )..initialize(),
    )

    /// Register [Blocs]
    ..registerFactory(() => SignUpBloc(getIt()))
    ..registerFactory(() => SignInBloc(getIt()))
    ..registerFactory(() => MainBloc(getIt()))
    ..registerFactory(SettingsBloc.new)
    ..registerFactory(OnboardBloc.new)
    ..registerFactory(HomeBloc.new)
    ..registerFactory(FeedBloc.new)
    ..registerFactory(() => AssistantBloc(getIt()));
}
