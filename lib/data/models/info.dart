import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

///Used for Info model
@freezed
class Info with _$Info {
  ///Used to construct instances
  const factory Info({
    required int count,
    required int pages,
    required String? next,
    required String? prev,
  }) = _Info;

  ///Used to decode instances from json
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
