import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../bloc/assistant_bloc.dart';

class AssistantQuestionInput extends StatelessWidget {
  const AssistantQuestionInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<AssistantBloc, AssistantState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      GestureDetector(
                        child:
                            Icon(state.isListening ? Icons.mic : Icons.mic_off),
                        onTapDown: (_) => context
                            .read<AssistantBloc>()
                            .add(const AssistantEvent.listeningStarted()),
                        onTapUp: (_) => context
                            .read<AssistantBloc>()
                            .add(const AssistantEvent.listeningStopped()),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Ask a question',
                            isDense: true,
                            suffixIcon: IconButton(
                              icon: const Icon(IconlyBold.send),
                              onPressed: () {
                                context
                                    .read<AssistantBloc>()
                                    .add(const AssistantEvent.sendPressed());
                              },
                            ),
                          ),
                          onChanged: (message) =>
                              context.read<AssistantBloc>().add(
                                    AssistantEvent.messageChanged(message),
                                  ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
