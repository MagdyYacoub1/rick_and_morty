// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T> {
  @ModelConverter()
  T? get data => throw _privateConstructorUsedError;
  Info? get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
  @useResult
  $Res call({@ModelConverter() T? data, Info? info});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$_ApiResponseCopyWith(
          _$_ApiResponse<T> value, $Res Function(_$_ApiResponse<T>) then) =
      __$$_ApiResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@ModelConverter() T? data, Info? info});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_ApiResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_ApiResponse<T>>
    implements _$$_ApiResponseCopyWith<T, $Res> {
  __$$_ApiResponseCopyWithImpl(
      _$_ApiResponse<T> _value, $Res Function(_$_ApiResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_ApiResponse<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
    ));
  }
}

/// @nodoc

class _$_ApiResponse<T> implements _ApiResponse<T> {
  const _$_ApiResponse({@ModelConverter() this.data, this.info});

  @override
  @ModelConverter()
  final T? data;
  @override
  final Info? info;

  @override
  String toString() {
    return 'ApiResponse<$T>(data: $data, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      __$$_ApiResponseCopyWithImpl<T, _$_ApiResponse<T>>(this, _$identity);
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {@ModelConverter() final T? data, final Info? info}) = _$_ApiResponse<T>;

  @override
  @ModelConverter()
  T? get data;
  @override
  Info? get info;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
