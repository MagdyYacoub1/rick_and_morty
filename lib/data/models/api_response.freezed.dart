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

ApiResponse<T> _$ApiResponseFromJson<T>(Map<String, dynamic> json) {
  return _ApiResponse<T>.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse<T> {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @ModelConverter()
  T? get data => throw _privateConstructorUsedError;
  Info? get info => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {bool success,
      String message,
      @ModelConverter() T? data,
      Info? info,
      int statusCode,
      String statusMessage});

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
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? statusCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {bool success,
      String message,
      @ModelConverter() T? data,
      Info? info,
      int statusCode,
      String statusMessage});

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
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? statusCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_$_ApiResponse<T>(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ApiResponse<T> implements _ApiResponse<T> {
  const _$_ApiResponse(
      {required this.success,
      required this.message,
      @ModelConverter() this.data,
      this.info,
      required this.statusCode,
      required this.statusMessage});

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  @ModelConverter()
  final T? data;
  @override
  final Info? info;
  @override
  final int statusCode;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'ApiResponse<$T>(success: $success, message: $message, data: $data, info: $info, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(data),
      info,
      statusCode,
      statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      __$$_ApiResponseCopyWithImpl<T, _$_ApiResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseToJson<T>(
      this,
    );
  }
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {required final bool success,
      required final String message,
      @ModelConverter() final T? data,
      final Info? info,
      required final int statusCode,
      required final String statusMessage}) = _$_ApiResponse<T>;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse<T>.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @ModelConverter()
  T? get data;
  @override
  Info? get info;
  @override
  int get statusCode;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
