// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse<T> _$$_ApiResponseFromJson<T>(Map<String, dynamic> json) =>
    _$_ApiResponse<T>(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: _$JsonConverterFromJson<Object, T>(
          json['data'], ModelConverter<T?>().fromJson),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int,
      statusMessage: json['statusMessage'] as String,
    );

Map<String, dynamic> _$$_ApiResponseToJson<T>(_$_ApiResponse<T> instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': _$JsonConverterToJson<Object, T>(
          instance.data, ModelConverter<T?>().toJson),
      'info': instance.info?.toJson(),
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
