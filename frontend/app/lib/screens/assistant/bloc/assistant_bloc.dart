import 'package:app/app/injection/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generative_ai_repository/generative_ai_repository.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'assistant_event.dart';
part 'assistant_state.dart';
part 'assistant_bloc.freezed.dart';

class AssistantBloc extends Bloc<AssistantEvent, AssistantState> {
  AssistantBloc(GenerativeAiRepository aiRepository)
      : _aiRepository = aiRepository,
        super(const _State()) {
    on<_MessageChanged>(_onMessageChanged);
    on<_SendPressed>(_onSendPressed);
    on<_ListeningStarted>(_onListeningStarted);
    on<_ListeningStopped>(_onListeningStopped);
  }

  final GenerativeAiRepository _aiRepository;
  String? text;

  Future<void> _onListeningStarted(
    _ListeningStarted event,
    Emitter<AssistantState> emit,
  ) async {
    final speedch = getIt<SpeechToText>();
    await speedch.initialize(
      finalTimeout: const Duration(seconds: 30),
      debugLogging: true,
    );

    if (!state.isListening) {
      if (speedch.isAvailable) {
        emit(state.copyWith(isListening: true));
        await speedch
            .listen(
              onResult: (result) {
                text = result.recognizedWords;
              },
              partialResults: false,
            )
            .then((value) => emit(state.copyWith(message: text)));
      } else {
        // ignore: avoid_print
        print('The user has denied the use of speech recognition.');
      }
    }
  }

  Future<void> _onListeningStopped(
    _ListeningStopped event,
    Emitter<AssistantState> emit,
  ) async {
    await getIt<SpeechToText>().stop();
    emit(state.copyWith(isListening: false));
    print(state.message);
    add(const _SendPressed());
  }

  void _onMessageChanged(
    _MessageChanged event,
    Emitter<AssistantState> emit,
  ) {
    emit(state.copyWith(message: event.message));
  }

  Future<void> _onSendPressed(
    _SendPressed event,
    Emitter<AssistantState> emit,
  ) async {
    final message = state.message;
    if (message == null || message.isEmpty) return;

    // Create a copy of the chatlog list.
    final chatlogCopy = state.chatlog.toList()

      // Add the new message to the copy.
      ..add(ChatLog(messages: message, isMe: true));

    // Emit the new state with the updated chatlog.
    emit(state.copyWith());

    // Emit a state with the status set to "thinking".
    emit(state.copyWith(status: AssistantStatus.thinking));

    // Get the answer from the assistant.
    final answer = await _aiRepository.generateResponse(state.message!);

    // Create a new ChatLog object for the answer.
    final answerChatLog = ChatLog(messages: answer, isMe: false);

    // Add the answer to the chatlog copy.
    chatlogCopy.add(answerChatLog);

    // Emit a state with the updated chatlog and the status set to "idle".
    emit(
      state.copyWith(
        status: AssistantStatus.idle,
        chatlog: chatlogCopy,
      ),
    );

    await getIt<FlutterTts>().speak(answerChatLog.messages);
  }
}
