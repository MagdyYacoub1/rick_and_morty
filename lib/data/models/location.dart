import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/data/models/character.dart';

part 'location.freezed.dart';
part 'location.g.dart';

///Used for Location model
@freezed
class Location with _$Location {
  ///Used to construct instances
  @JsonSerializable(explicitToJson: true)
  const factory Location({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'dimension') required String dimension,
    @JsonKey(name: 'residents') required List<String> residents,
  }) = _Location;

  ///Used to decode instances from json
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
