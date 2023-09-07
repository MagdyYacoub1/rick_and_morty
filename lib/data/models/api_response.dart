import 'package:freezed_annotation/freezed_annotation.dart';
import 'info.dart';
import 'model_converter.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    @ModelConverter() T? data,
    Info? info,
  }) = _ApiResponse;
}
