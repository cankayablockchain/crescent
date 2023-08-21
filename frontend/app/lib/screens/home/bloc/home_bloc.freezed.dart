// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IndexChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$_IndexChangedCopyWith(
          _$_IndexChanged value, $Res Function(_$_IndexChanged) then) =
      __$$_IndexChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_IndexChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_IndexChanged>
    implements _$$_IndexChangedCopyWith<$Res> {
  __$$_IndexChangedCopyWithImpl(
      _$_IndexChanged _value, $Res Function(_$_IndexChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_IndexChanged(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IndexChanged implements _IndexChanged {
  const _$_IndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndexChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndexChangedCopyWith<_$_IndexChanged> get copyWith =>
      __$$_IndexChangedCopyWithImpl<_$_IndexChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
  }) {
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
  }) {
    return indexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
  }) {
    return indexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _IndexChanged implements HomeEvent {
  const factory _IndexChanged(final int index) = _$_IndexChanged;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_IndexChangedCopyWith<_$_IndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FeedCopyWith<$Res> {
  factory _$$_FeedCopyWith(_$_Feed value, $Res Function(_$_Feed) then) =
      __$$_FeedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FeedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res, _$_Feed>
    implements _$$_FeedCopyWith<$Res> {
  __$$_FeedCopyWithImpl(_$_Feed _value, $Res Function(_$_Feed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Feed implements _Feed {
  const _$_Feed();

  @override
  String toString() {
    return 'HomeState.feed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Feed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) {
    return feed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) {
    return feed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (feed != null) {
      return feed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) {
    return feed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) {
    return feed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (feed != null) {
      return feed(this);
    }
    return orElse();
  }
}

abstract class _Feed implements HomeState {
  const factory _Feed() = _$_Feed;
}

/// @nodoc
abstract class _$$_MarketCopyWith<$Res> {
  factory _$$_MarketCopyWith(_$_Market value, $Res Function(_$_Market) then) =
      __$$_MarketCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MarketCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Market>
    implements _$$_MarketCopyWith<$Res> {
  __$$_MarketCopyWithImpl(_$_Market _value, $Res Function(_$_Market) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Market implements _Market {
  const _$_Market();

  @override
  String toString() {
    return 'HomeState.market()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Market);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) {
    return market();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) {
    return market?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (market != null) {
      return market();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) {
    return market(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) {
    return market?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (market != null) {
      return market(this);
    }
    return orElse();
  }
}

abstract class _Market implements HomeState {
  const factory _Market() = _$_Market;
}

/// @nodoc
abstract class _$$_AssistantCopyWith<$Res> {
  factory _$$_AssistantCopyWith(
          _$_Assistant value, $Res Function(_$_Assistant) then) =
      __$$_AssistantCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AssistantCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Assistant>
    implements _$$_AssistantCopyWith<$Res> {
  __$$_AssistantCopyWithImpl(
      _$_Assistant _value, $Res Function(_$_Assistant) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Assistant implements _Assistant {
  const _$_Assistant();

  @override
  String toString() {
    return 'HomeState.assistant()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Assistant);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) {
    return assistant();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) {
    return assistant?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) {
    return assistant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) {
    return assistant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant(this);
    }
    return orElse();
  }
}

abstract class _Assistant implements HomeState {
  const factory _Assistant() = _$_Assistant;
}

/// @nodoc
abstract class _$$_ActionsCopyWith<$Res> {
  factory _$$_ActionsCopyWith(
          _$_Actions value, $Res Function(_$_Actions) then) =
      __$$_ActionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Actions>
    implements _$$_ActionsCopyWith<$Res> {
  __$$_ActionsCopyWithImpl(_$_Actions _value, $Res Function(_$_Actions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Actions implements _Actions {
  const _$_Actions();

  @override
  String toString() {
    return 'HomeState.actions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Actions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) {
    return actions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) {
    return actions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (actions != null) {
      return actions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) {
    return actions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) {
    return actions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (actions != null) {
      return actions(this);
    }
    return orElse();
  }
}

abstract class _Actions implements HomeState {
  const factory _Actions() = _$_Actions;
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings();

  @override
  String toString() {
    return 'HomeState.settings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Settings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() feed,
    required TResult Function() market,
    required TResult Function() assistant,
    required TResult Function() actions,
    required TResult Function() settings,
  }) {
    return settings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? feed,
    TResult? Function()? market,
    TResult? Function()? assistant,
    TResult? Function()? actions,
    TResult? Function()? settings,
  }) {
    return settings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? feed,
    TResult Function()? market,
    TResult Function()? assistant,
    TResult Function()? actions,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Feed value) feed,
    required TResult Function(_Market value) market,
    required TResult Function(_Assistant value) assistant,
    required TResult Function(_Actions value) actions,
    required TResult Function(_Settings value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Feed value)? feed,
    TResult? Function(_Market value)? market,
    TResult? Function(_Assistant value)? assistant,
    TResult? Function(_Actions value)? actions,
    TResult? Function(_Settings value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Feed value)? feed,
    TResult Function(_Market value)? market,
    TResult Function(_Assistant value)? assistant,
    TResult Function(_Actions value)? actions,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements HomeState {
  const factory _Settings() = _$_Settings;
}
