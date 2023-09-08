import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character_location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

///Used for Character model
@freezed
class Character with _$Character {
  ///Used to construct instances
  @JsonSerializable(explicitToJson: true)
  const factory Character({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'species') required String species,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'origin') required CharacterLocation origin,
    @JsonKey(name: 'location') required CharacterLocation location,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'episode') required List<String> appearance,
  }) = _Character;

  ///Used to decode instances from json
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
