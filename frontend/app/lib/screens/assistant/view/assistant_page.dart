import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../bloc/assistant_bloc.dart';
import '../widgets/assistant_chat_message.dart';
import '../widgets/assistant_question_input.dart';

part 'assistant_layout.dart';

@RoutePage(name: 'AssistantRoute')
class AssistantPage extends StatelessWidget implements AutoRouteWrapper {
  const AssistantPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Assistant'),
          centerTitle: true,
        ),
        body: const AssistantLayout(),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: _create,
        child: this,
      );

  AssistantBloc _create(BuildContext context) {
    return getIt<AssistantBloc>();
  }
}
