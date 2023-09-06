
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/models/model_converter.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  @JsonSerializable(explicitToJson: true)
  const factory ApiResponse({
    required bool success,
    required String message,
    @ModelConverter()
   T? data,
    Info? info,
    required int statusCode,
    required String statusMessage,
  }) = _ApiResponse;
	
  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
			_$ApiResponseFromJson(json);
}
