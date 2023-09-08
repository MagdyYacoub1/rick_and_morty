import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/data/models/character.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

///Used for Episods model
@freezed
class Episode with _$Episode {
  ///Used to construct instances
  @JsonSerializable(explicitToJson: true)
  const factory Episode({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'air_date') required String airDate,
    @JsonKey(name: 'episode') required String episode,
    @JsonKey(name: 'characters') required List<Character> characters,
  }) = _Episode;

  ///Used to decode instances from json
  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
