import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';

part 'character_location.freezed.dart';
part 'character_location.g.dart';

///Class For Location used in [Character] class
@freezed
class CharacterLocation with _$CharacterLocation {
  ///Used to construct instances
  const factory CharacterLocation({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'url') required String url,
  }) = _CharacterLocation;

  ///Used to decode instances from json
  factory CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationFromJson(json);
}
