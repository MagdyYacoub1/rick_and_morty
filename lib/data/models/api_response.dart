
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/models/model_converter.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    @ModelConverter()
   T? data,
    Info? info,
  }) = _ApiResponse;
}
