import 'package:rick_and_morty/data/models/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  @JsonSerializable(explicitToJson: true)
  const factory Episode({
    required int id,
    required String name,
    required String airDate,
    required String episode,
    required List<Character> characters,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
