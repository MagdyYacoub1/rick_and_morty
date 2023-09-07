import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_location.freezed.dart';
part 'character_location.g.dart';

@freezed
class CharacterLocation with _$CharacterLocation {
  const factory CharacterLocation({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'url') required String url,
  }) = _CharacterLocation;

  factory CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationFromJson(json);
}
