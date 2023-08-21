part of 'assistant_bloc.dart';

@freezed
class AssistantState with _$AssistantState {
  const factory AssistantState.state({
    @Default(AssistantStatus.idle) AssistantStatus status,
    @Default(false) bool isListening,
    String? message,
    @Default([]) List<ChatLog> chatlog,
  }) = _State;
}

enum AssistantStatus { idle, thinking }

class ChatLog {
  ChatLog({required this.messages, required this.isMe});

  final String messages;
  final bool isMe;
}
