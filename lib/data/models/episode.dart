import 'character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  @JsonSerializable(explicitToJson: true)
  const factory Episode({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'air_date') required String airDate,
    @JsonKey(name: 'episode') required String episode,
    @JsonKey(name: 'characters') required List<Character> characters,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
