part of 'assistant_bloc.dart';

@freezed
class AssistantEvent with _$AssistantEvent {
  const factory AssistantEvent.messageChanged(String message) = _MessageChanged;
  const factory AssistantEvent.sendPressed() = _SendPressed;
  const factory AssistantEvent.listeningStarted() = _ListeningStarted;
  const factory AssistantEvent.listeningStopped() = _ListeningStopped;
}
