// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignUpEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmedPasswordChangedCopyWith<$Res> {
  factory _$$_ConfirmedPasswordChangedCopyWith(
          _$_ConfirmedPasswordChanged value,
          $Res Function(_$_ConfirmedPasswordChanged) then) =
      __$$_ConfirmedPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class __$$_ConfirmedPasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_ConfirmedPasswordChanged>
    implements _$$_ConfirmedPasswordChangedCopyWith<$Res> {
  __$$_ConfirmedPasswordChangedCopyWithImpl(_$_ConfirmedPasswordChanged _value,
      $Res Function(_$_ConfirmedPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(_$_ConfirmedPasswordChanged(
      null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmedPasswordChanged implements _ConfirmedPasswordChanged {
  const _$_ConfirmedPasswordChanged(this.confirmedPassword);

  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'SignUpEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmedPasswordChanged &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmedPasswordChangedCopyWith<_$_ConfirmedPasswordChanged>
      get copyWith => __$$_ConfirmedPasswordChangedCopyWithImpl<
          _$_ConfirmedPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return confirmedPasswordChanged(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return confirmedPasswordChanged?.call(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return confirmedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return confirmedPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmedPasswordChanged implements SignUpEvent {
  const factory _ConfirmedPasswordChanged(final String confirmedPassword) =
      _$_ConfirmedPasswordChanged;

  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$$_ConfirmedPasswordChangedCopyWith<_$_ConfirmedPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormSubmittedCopyWith<$Res> {
  factory _$$_FormSubmittedCopyWith(
          _$_FormSubmitted value, $Res Function(_$_FormSubmitted) then) =
      __$$_FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmittedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_FormSubmitted>
    implements _$$_FormSubmittedCopyWith<$Res> {
  __$$_FormSubmittedCopyWithImpl(
      _$_FormSubmitted _value, $Res Function(_$_FormSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'SignUpEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements SignUpEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
abstract class _$$_TogglePasswordVisibilityCopyWith<$Res> {
  factory _$$_TogglePasswordVisibilityCopyWith(
          _$_TogglePasswordVisibility value,
          $Res Function(_$_TogglePasswordVisibility) then) =
      __$$_TogglePasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TogglePasswordVisibilityCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_TogglePasswordVisibility>
    implements _$$_TogglePasswordVisibilityCopyWith<$Res> {
  __$$_TogglePasswordVisibilityCopyWithImpl(_$_TogglePasswordVisibility _value,
      $Res Function(_$_TogglePasswordVisibility) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TogglePasswordVisibility implements _TogglePasswordVisibility {
  const _$_TogglePasswordVisibility();

  @override
  String toString() {
    return 'SignUpEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TogglePasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordVisibility implements SignUpEvent {
  const factory _TogglePasswordVisibility() = _$_TogglePasswordVisibility;
}

/// @nodoc
abstract class _$$_ToggleConfirmedPasswordVisibilityCopyWith<$Res> {
  factory _$$_ToggleConfirmedPasswordVisibilityCopyWith(
          _$_ToggleConfirmedPasswordVisibility value,
          $Res Function(_$_ToggleConfirmedPasswordVisibility) then) =
      __$$_ToggleConfirmedPasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleConfirmedPasswordVisibilityCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res,
        _$_ToggleConfirmedPasswordVisibility>
    implements _$$_ToggleConfirmedPasswordVisibilityCopyWith<$Res> {
  __$$_ToggleConfirmedPasswordVisibilityCopyWithImpl(
      _$_ToggleConfirmedPasswordVisibility _value,
      $Res Function(_$_ToggleConfirmedPasswordVisibility) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleConfirmedPasswordVisibility
    implements _ToggleConfirmedPasswordVisibility {
  const _$_ToggleConfirmedPasswordVisibility();

  @override
  String toString() {
    return 'SignUpEvent.toggleConfirmedPasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleConfirmedPasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmedPasswordVisibility,
  }) {
    return toggleConfirmedPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmedPasswordVisibility,
  }) {
    return toggleConfirmedPasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleConfirmedPasswordVisibility != null) {
      return toggleConfirmedPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmedPasswordVisibility value)
        toggleConfirmedPasswordVisibility,
  }) {
    return toggleConfirmedPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
  }) {
    return toggleConfirmedPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmedPasswordVisibility value)?
        toggleConfirmedPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleConfirmedPasswordVisibility != null) {
      return toggleConfirmedPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggleConfirmedPasswordVisibility implements SignUpEvent {
  const factory _ToggleConfirmedPasswordVisibility() =
      _$_ToggleConfirmedPasswordVisibility;
}

/// @nodoc
mixin _$SignUpState {
  /// The user's input for their name.
  Name get name => throw _privateConstructorUsedError;

  /// The user's input for their email.
  Email get email => throw _privateConstructorUsedError;

  /// The user's input for their password.
  Password get password => throw _privateConstructorUsedError;

  /// The user's input for confirming the password.
  ConfirmedPassword get confirmPassword => throw _privateConstructorUsedError;

  /// Indicates whether the password input is shown or hidden.
  bool get showPassword => throw _privateConstructorUsedError;

  /// Indicates whether the confirmed password input is shown or hidden.
  bool get showConfirmedPassword => throw _privateConstructorUsedError;

  /// The current submission status of the form.
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  /// The current step in the sign-up process.
  SignStep get step => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)
        form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)?
        form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)?
        form,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Form value) form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Form value)? form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Form value)? form,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmPassword,
      bool showPassword,
      bool showConfirmedPassword,
      FormzSubmissionStatus status,
      SignStep step});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? showPassword = null,
    Object? showConfirmedPassword = null,
    Object? status = null,
    Object? step = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmedPassword: null == showConfirmedPassword
          ? _value.showConfirmedPassword
          : showConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as SignStep,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_FormCopyWith(_$_Form value, $Res Function(_$_Form) then) =
      __$$_FormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmPassword,
      bool showPassword,
      bool showConfirmedPassword,
      FormzSubmissionStatus status,
      SignStep step});
}

/// @nodoc
class __$$_FormCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Form>
    implements _$$_FormCopyWith<$Res> {
  __$$_FormCopyWithImpl(_$_Form _value, $Res Function(_$_Form) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? showPassword = null,
    Object? showConfirmedPassword = null,
    Object? status = null,
    Object? step = null,
  }) {
    return _then(_$_Form(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmedPassword: null == showConfirmedPassword
          ? _value.showConfirmedPassword
          : showConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as SignStep,
    ));
  }
}

/// @nodoc

class _$_Form implements _Form {
  const _$_Form(
      {this.name = const Name.pure(),
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.confirmPassword = const ConfirmedPassword.pure(),
      this.showPassword = true,
      this.showConfirmedPassword = true,
      this.status = FormzSubmissionStatus.initial,
      this.step = SignStep.name});

  /// The user's input for their name.
  @override
  @JsonKey()
  final Name name;

  /// The user's input for their email.
  @override
  @JsonKey()
  final Email email;

  /// The user's input for their password.
  @override
  @JsonKey()
  final Password password;

  /// The user's input for confirming the password.
  @override
  @JsonKey()
  final ConfirmedPassword confirmPassword;

  /// Indicates whether the password input is shown or hidden.
  @override
  @JsonKey()
  final bool showPassword;

  /// Indicates whether the confirmed password input is shown or hidden.
  @override
  @JsonKey()
  final bool showConfirmedPassword;

  /// The current submission status of the form.
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  /// The current step in the sign-up process.
  @override
  @JsonKey()
  final SignStep step;

  @override
  String toString() {
    return 'SignUpState.form(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, showPassword: $showPassword, showConfirmedPassword: $showConfirmedPassword, status: $status, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Form &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showConfirmedPassword, showConfirmedPassword) ||
                other.showConfirmedPassword == showConfirmedPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password,
      confirmPassword, showPassword, showConfirmedPassword, status, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormCopyWith<_$_Form> get copyWith =>
      __$$_FormCopyWithImpl<_$_Form>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)
        form,
  }) {
    return form(name, email, password, confirmPassword, showPassword,
        showConfirmedPassword, status, step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)?
        form,
  }) {
    return form?.call(name, email, password, confirmPassword, showPassword,
        showConfirmedPassword, status, step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Name name,
            Email email,
            Password password,
            ConfirmedPassword confirmPassword,
            bool showPassword,
            bool showConfirmedPassword,
            FormzSubmissionStatus status,
            SignStep step)?
        form,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(name, email, password, confirmPassword, showPassword,
          showConfirmedPassword, status, step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Form value) form,
  }) {
    return form(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Form value)? form,
  }) {
    return form?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Form value)? form,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class _Form implements SignUpState {
  const factory _Form(
      {final Name name,
      final Email email,
      final Password password,
      final ConfirmedPassword confirmPassword,
      final bool showPassword,
      final bool showConfirmedPassword,
      final FormzSubmissionStatus status,
      final SignStep step}) = _$_Form;

  @override

  /// The user's input for their name.
  Name get name;
  @override

  /// The user's input for their email.
  Email get email;
  @override

  /// The user's input for their password.
  Password get password;
  @override

  /// The user's input for confirming the password.
  ConfirmedPassword get confirmPassword;
  @override

  /// Indicates whether the password input is shown or hidden.
  bool get showPassword;
  @override

  /// Indicates whether the confirmed password input is shown or hidden.
  bool get showConfirmedPassword;
  @override

  /// The current submission status of the form.
  FormzSubmissionStatus get status;
  @override

  /// The current step in the sign-up process.
  SignStep get step;
  @override
  @JsonKey(ignore: true)
  _$$_FormCopyWith<_$_Form> get copyWith => throw _privateConstructorUsedError;
}
