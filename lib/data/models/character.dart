import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:rick_and_morty/data/models/location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  @JsonSerializable(explicitToJson: true)
  const factory Character({
    required int id,
    required String name,
    required String species,
    required String type,
    required String gender,
    required Location origin,
    required Location location,
    required String image,
    required String status,
    required List<int> appearance,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
