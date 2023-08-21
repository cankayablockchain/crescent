// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssistantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) messageChanged,
    required TResult Function() sendPressed,
    required TResult Function() listeningStarted,
    required TResult Function() listeningStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? messageChanged,
    TResult? Function()? sendPressed,
    TResult? Function()? listeningStarted,
    TResult? Function()? listeningStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? messageChanged,
    TResult Function()? sendPressed,
    TResult Function()? listeningStarted,
    TResult Function()? listeningStopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_ListeningStarted value) listeningStarted,
    required TResult Function(_ListeningStopped value) listeningStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageChanged value)? messageChanged,
    TResult? Function(_SendPressed value)? sendPressed,
    TResult? Function(_ListeningStarted value)? listeningStarted,
    TResult? Function(_ListeningStopped value)? listeningStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_ListeningStarted value)? listeningStarted,
    TResult Function(_ListeningStopped value)? listeningStopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantEventCopyWith<$Res> {
  factory $AssistantEventCopyWith(
          AssistantEvent value, $Res Function(AssistantEvent) then) =
      _$AssistantEventCopyWithImpl<$Res, AssistantEvent>;
}

/// @nodoc
class _$AssistantEventCopyWithImpl<$Res, $Val extends AssistantEvent>
    implements $AssistantEventCopyWith<$Res> {
  _$AssistantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MessageChangedCopyWith<$Res> {
  factory _$$_MessageChangedCopyWith(
          _$_MessageChanged value, $Res Function(_$_MessageChanged) then) =
      __$$_MessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_MessageChangedCopyWithImpl<$Res>
    extends _$AssistantEventCopyWithImpl<$Res, _$_MessageChanged>
    implements _$$_MessageChangedCopyWith<$Res> {
  __$$_MessageChangedCopyWithImpl(
      _$_MessageChanged _value, $Res Function(_$_MessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageChanged(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageChanged implements _MessageChanged {
  const _$_MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AssistantEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageChanged &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageChangedCopyWith<_$_MessageChanged> get copyWith =>
      __$$_MessageChangedCopyWithImpl<_$_MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) messageChanged,
    required TResult Function() sendPressed,
    required TResult Function() listeningStarted,
    required TResult Function() listeningStopped,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? messageChanged,
    TResult? Function()? sendPressed,
    TResult? Function()? listeningStarted,
    TResult? Function()? listeningStopped,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? messageChanged,
    TResult Function()? sendPressed,
    TResult Function()? listeningStarted,
    TResult Function()? listeningStopped,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_ListeningStarted value) listeningStarted,
    required TResult Function(_ListeningStopped value) listeningStopped,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageChanged value)? messageChanged,
    TResult? Function(_SendPressed value)? sendPressed,
    TResult? Function(_ListeningStarted value)? listeningStarted,
    TResult? Function(_ListeningStopped value)? listeningStopped,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_ListeningStarted value)? listeningStarted,
    TResult Function(_ListeningStopped value)? listeningStopped,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageChanged implements AssistantEvent {
  const factory _MessageChanged(final String message) = _$_MessageChanged;

  String get message;
  @JsonKey(ignore: true)
  _$$_MessageChangedCopyWith<_$_MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendPressedCopyWith<$Res> {
  factory _$$_SendPressedCopyWith(
          _$_SendPressed value, $Res Function(_$_SendPressed) then) =
      __$$_SendPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendPressedCopyWithImpl<$Res>
    extends _$AssistantEventCopyWithImpl<$Res, _$_SendPressed>
    implements _$$_SendPressedCopyWith<$Res> {
  __$$_SendPressedCopyWithImpl(
      _$_SendPressed _value, $Res Function(_$_SendPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendPressed implements _SendPressed {
  const _$_SendPressed();

  @override
  String toString() {
    return 'AssistantEvent.sendPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) messageChanged,
    required TResult Function() sendPressed,
    required TResult Function() listeningStarted,
    required TResult Function() listeningStopped,
  }) {
    return sendPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? messageChanged,
    TResult? Function()? sendPressed,
    TResult? Function()? listeningStarted,
    TResult? Function()? listeningStopped,
  }) {
    return sendPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? messageChanged,
    TResult Function()? sendPressed,
    TResult Function()? listeningStarted,
    TResult Function()? listeningStopped,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_ListeningStarted value) listeningStarted,
    required TResult Function(_ListeningStopped value) listeningStopped,
  }) {
    return sendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageChanged value)? messageChanged,
    TResult? Function(_SendPressed value)? sendPressed,
    TResult? Function(_ListeningStarted value)? listeningStarted,
    TResult? Function(_ListeningStopped value)? listeningStopped,
  }) {
    return sendPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_ListeningStarted value)? listeningStarted,
    TResult Function(_ListeningStopped value)? listeningStopped,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(this);
    }
    return orElse();
  }
}

abstract class _SendPressed implements AssistantEvent {
  const factory _SendPressed() = _$_SendPressed;
}

/// @nodoc
abstract class _$$_ListeningStartedCopyWith<$Res> {
  factory _$$_ListeningStartedCopyWith(
          _$_ListeningStarted value, $Res Function(_$_ListeningStarted) then) =
      __$$_ListeningStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListeningStartedCopyWithImpl<$Res>
    extends _$AssistantEventCopyWithImpl<$Res, _$_ListeningStarted>
    implements _$$_ListeningStartedCopyWith<$Res> {
  __$$_ListeningStartedCopyWithImpl(
      _$_ListeningStarted _value, $Res Function(_$_ListeningStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ListeningStarted implements _ListeningStarted {
  const _$_ListeningStarted();

  @override
  String toString() {
    return 'AssistantEvent.listeningStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListeningStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) messageChanged,
    required TResult Function() sendPressed,
    required TResult Function() listeningStarted,
    required TResult Function() listeningStopped,
  }) {
    return listeningStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? messageChanged,
    TResult? Function()? sendPressed,
    TResult? Function()? listeningStarted,
    TResult? Function()? listeningStopped,
  }) {
    return listeningStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? messageChanged,
    TResult Function()? sendPressed,
    TResult Function()? listeningStarted,
    TResult Function()? listeningStopped,
    required TResult orElse(),
  }) {
    if (listeningStarted != null) {
      return listeningStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_ListeningStarted value) listeningStarted,
    required TResult Function(_ListeningStopped value) listeningStopped,
  }) {
    return listeningStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageChanged value)? messageChanged,
    TResult? Function(_SendPressed value)? sendPressed,
    TResult? Function(_ListeningStarted value)? listeningStarted,
    TResult? Function(_ListeningStopped value)? listeningStopped,
  }) {
    return listeningStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_ListeningStarted value)? listeningStarted,
    TResult Function(_ListeningStopped value)? listeningStopped,
    required TResult orElse(),
  }) {
    if (listeningStarted != null) {
      return listeningStarted(this);
    }
    return orElse();
  }
}

abstract class _ListeningStarted implements AssistantEvent {
  const factory _ListeningStarted() = _$_ListeningStarted;
}

/// @nodoc
abstract class _$$_ListeningStoppedCopyWith<$Res> {
  factory _$$_ListeningStoppedCopyWith(
          _$_ListeningStopped value, $Res Function(_$_ListeningStopped) then) =
      __$$_ListeningStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListeningStoppedCopyWithImpl<$Res>
    extends _$AssistantEventCopyWithImpl<$Res, _$_ListeningStopped>
    implements _$$_ListeningStoppedCopyWith<$Res> {
  __$$_ListeningStoppedCopyWithImpl(
      _$_ListeningStopped _value, $Res Function(_$_ListeningStopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ListeningStopped implements _ListeningStopped {
  const _$_ListeningStopped();

  @override
  String toString() {
    return 'AssistantEvent.listeningStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListeningStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) messageChanged,
    required TResult Function() sendPressed,
    required TResult Function() listeningStarted,
    required TResult Function() listeningStopped,
  }) {
    return listeningStopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? messageChanged,
    TResult? Function()? sendPressed,
    TResult? Function()? listeningStarted,
    TResult? Function()? listeningStopped,
  }) {
    return listeningStopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? messageChanged,
    TResult Function()? sendPressed,
    TResult Function()? listeningStarted,
    TResult Function()? listeningStopped,
    required TResult orElse(),
  }) {
    if (listeningStopped != null) {
      return listeningStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_ListeningStarted value) listeningStarted,
    required TResult Function(_ListeningStopped value) listeningStopped,
  }) {
    return listeningStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageChanged value)? messageChanged,
    TResult? Function(_SendPressed value)? sendPressed,
    TResult? Function(_ListeningStarted value)? listeningStarted,
    TResult? Function(_ListeningStopped value)? listeningStopped,
  }) {
    return listeningStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_ListeningStarted value)? listeningStarted,
    TResult Function(_ListeningStopped value)? listeningStopped,
    required TResult orElse(),
  }) {
    if (listeningStopped != null) {
      return listeningStopped(this);
    }
    return orElse();
  }
}

abstract class _ListeningStopped implements AssistantEvent {
  const factory _ListeningStopped() = _$_ListeningStopped;
}

/// @nodoc
mixin _$AssistantState {
  AssistantStatus get status => throw _privateConstructorUsedError;
  bool get isListening => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ChatLog> get chatlog => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssistantStatus status, bool isListening,
            String? message, List<ChatLog> chatlog)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssistantStatus status, bool isListening, String? message,
            List<ChatLog> chatlog)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssistantStatus status, bool isListening, String? message,
            List<ChatLog> chatlog)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssistantStateCopyWith<AssistantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantStateCopyWith<$Res> {
  factory $AssistantStateCopyWith(
          AssistantState value, $Res Function(AssistantState) then) =
      _$AssistantStateCopyWithImpl<$Res, AssistantState>;
  @useResult
  $Res call(
      {AssistantStatus status,
      bool isListening,
      String? message,
      List<ChatLog> chatlog});
}

/// @nodoc
class _$AssistantStateCopyWithImpl<$Res, $Val extends AssistantState>
    implements $AssistantStateCopyWith<$Res> {
  _$AssistantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isListening = null,
    Object? message = freezed,
    Object? chatlog = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssistantStatus,
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatlog: null == chatlog
          ? _value.chatlog
          : chatlog // ignore: cast_nullable_to_non_nullable
              as List<ChatLog>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $AssistantStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AssistantStatus status,
      bool isListening,
      String? message,
      List<ChatLog> chatlog});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$AssistantStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isListening = null,
    Object? message = freezed,
    Object? chatlog = null,
  }) {
    return _then(_$_State(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssistantStatus,
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatlog: null == chatlog
          ? _value._chatlog
          : chatlog // ignore: cast_nullable_to_non_nullable
              as List<ChatLog>,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.status = AssistantStatus.idle,
      this.isListening = false,
      this.message,
      final List<ChatLog> chatlog = const []})
      : _chatlog = chatlog;

  @override
  @JsonKey()
  final AssistantStatus status;
  @override
  @JsonKey()
  final bool isListening;
  @override
  final String? message;
  final List<ChatLog> _chatlog;
  @override
  @JsonKey()
  List<ChatLog> get chatlog {
    if (_chatlog is EqualUnmodifiableListView) return _chatlog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatlog);
  }

  @override
  String toString() {
    return 'AssistantState.state(status: $status, isListening: $isListening, message: $message, chatlog: $chatlog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isListening, isListening) ||
                other.isListening == isListening) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._chatlog, _chatlog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isListening, message,
      const DeepCollectionEquality().hash(_chatlog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssistantStatus status, bool isListening,
            String? message, List<ChatLog> chatlog)
        state,
  }) {
    return state(status, isListening, message, chatlog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssistantStatus status, bool isListening, String? message,
            List<ChatLog> chatlog)?
        state,
  }) {
    return state?.call(status, isListening, message, chatlog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssistantStatus status, bool isListening, String? message,
            List<ChatLog> chatlog)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(status, isListening, message, chatlog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements AssistantState {
  const factory _State(
      {final AssistantStatus status,
      final bool isListening,
      final String? message,
      final List<ChatLog> chatlog}) = _$_State;

  @override
  AssistantStatus get status;
  @override
  bool get isListening;
  @override
  String? get message;
  @override
  List<ChatLog> get chatlog;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
