// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OfferCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCreateEventCopyWith<$Res> {
  factory $OfferCreateEventCopyWith(
          OfferCreateEvent value, $Res Function(OfferCreateEvent) then) =
      _$OfferCreateEventCopyWithImpl<$Res, OfferCreateEvent>;
}

/// @nodoc
class _$OfferCreateEventCopyWithImpl<$Res, $Val extends OfferCreateEvent>
    implements $OfferCreateEventCopyWith<$Res> {
  _$OfferCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OfferCreateEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OfferCreateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_TitleChanged>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_TitleChanged(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'OfferCreateEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements OfferCreateEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedCopyWith<$Res> {
  factory _$$_DescriptionChangedCopyWith(_$_DescriptionChanged value,
          $Res Function(_$_DescriptionChanged) then) =
      __$$_DescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_DescriptionChanged>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$_DescriptionChanged(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'OfferCreateEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChanged &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      __$$_DescriptionChangedCopyWithImpl<_$_DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements OfferCreateEvent {
  const factory _DescriptionChanged(final String description) =
      _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PriceChangedCopyWith<$Res> {
  factory _$$_PriceChangedCopyWith(
          _$_PriceChanged value, $Res Function(_$_PriceChanged) then) =
      __$$_PriceChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String price});
}

/// @nodoc
class __$$_PriceChangedCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_PriceChanged>
    implements _$$_PriceChangedCopyWith<$Res> {
  __$$_PriceChangedCopyWithImpl(
      _$_PriceChanged _value, $Res Function(_$_PriceChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_PriceChanged(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriceChanged implements _PriceChanged {
  const _$_PriceChanged(this.price);

  @override
  final String price;

  @override
  String toString() {
    return 'OfferCreateEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceChanged &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceChangedCopyWith<_$_PriceChanged> get copyWith =>
      __$$_PriceChangedCopyWithImpl<_$_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return priceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements OfferCreateEvent {
  const factory _PriceChanged(final String price) = _$_PriceChanged;

  String get price;
  @JsonKey(ignore: true)
  _$$_PriceChangedCopyWith<_$_PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuantityChangedCopyWith<$Res> {
  factory _$$_QuantityChangedCopyWith(
          _$_QuantityChanged value, $Res Function(_$_QuantityChanged) then) =
      __$$_QuantityChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String quantity});
}

/// @nodoc
class __$$_QuantityChangedCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_QuantityChanged>
    implements _$$_QuantityChangedCopyWith<$Res> {
  __$$_QuantityChangedCopyWithImpl(
      _$_QuantityChanged _value, $Res Function(_$_QuantityChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$_QuantityChanged(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuantityChanged implements _QuantityChanged {
  const _$_QuantityChanged(this.quantity);

  @override
  final String quantity;

  @override
  String toString() {
    return 'OfferCreateEvent.quantityChanged(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuantityChanged &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuantityChangedCopyWith<_$_QuantityChanged> get copyWith =>
      __$$_QuantityChangedCopyWithImpl<_$_QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return quantityChanged(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return quantityChanged?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return quantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class _QuantityChanged implements OfferCreateEvent {
  const factory _QuantityChanged(final String quantity) = _$_QuantityChanged;

  String get quantity;
  @JsonKey(ignore: true)
  _$$_QuantityChangedCopyWith<_$_QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOfferCopyWith<$Res> {
  factory _$$_CreateOfferCopyWith(
          _$_CreateOffer value, $Res Function(_$_CreateOffer) then) =
      __$$_CreateOfferCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateOfferCopyWithImpl<$Res>
    extends _$OfferCreateEventCopyWithImpl<$Res, _$_CreateOffer>
    implements _$$_CreateOfferCopyWith<$Res> {
  __$$_CreateOfferCopyWithImpl(
      _$_CreateOffer _value, $Res Function(_$_CreateOffer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateOffer implements _CreateOffer {
  const _$_CreateOffer();

  @override
  String toString() {
    return 'OfferCreateEvent.createOffer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateOffer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String quantity) quantityChanged,
    required TResult Function() createOffer,
  }) {
    return createOffer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function(String quantity)? quantityChanged,
    TResult? Function()? createOffer,
  }) {
    return createOffer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String quantity)? quantityChanged,
    TResult Function()? createOffer,
    required TResult orElse(),
  }) {
    if (createOffer != null) {
      return createOffer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_CreateOffer value) createOffer,
  }) {
    return createOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_PriceChanged value)? priceChanged,
    TResult? Function(_QuantityChanged value)? quantityChanged,
    TResult? Function(_CreateOffer value)? createOffer,
  }) {
    return createOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_CreateOffer value)? createOffer,
    required TResult orElse(),
  }) {
    if (createOffer != null) {
      return createOffer(this);
    }
    return orElse();
  }
}

abstract class _CreateOffer implements OfferCreateEvent {
  const factory _CreateOffer() = _$_CreateOffer;
}

/// @nodoc
mixin _$OfferCreateState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String description, int price, int quantity)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String description, int price, int quantity)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, int price, int quantity)?
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
  $OfferCreateStateCopyWith<OfferCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCreateStateCopyWith<$Res> {
  factory $OfferCreateStateCopyWith(
          OfferCreateState value, $Res Function(OfferCreateState) then) =
      _$OfferCreateStateCopyWithImpl<$Res, OfferCreateState>;
  @useResult
  $Res call({String title, String description, int price, int quantity});
}

/// @nodoc
class _$OfferCreateStateCopyWithImpl<$Res, $Val extends OfferCreateState>
    implements $OfferCreateStateCopyWith<$Res> {
  _$OfferCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $OfferCreateStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, int price, int quantity});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$OfferCreateStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$_State(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.title = '',
      this.description = '',
      this.price = 0,
      this.quantity = 0});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'OfferCreateState.state(title: $title, description: $description, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String description, int price, int quantity)
        state,
  }) {
    return state(title, description, price, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String description, int price, int quantity)?
        state,
  }) {
    return state?.call(title, description, price, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, int price, int quantity)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(title, description, price, quantity);
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

abstract class _State implements OfferCreateState {
  const factory _State(
      {final String title,
      final String description,
      final int price,
      final int quantity}) = _$_State;

  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
