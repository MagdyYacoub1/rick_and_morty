// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int,
      name: json['name'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin:
          CharacterLocation.fromJson(json['origin'] as Map<String, dynamic>),
      location:
          CharacterLocation.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      status: json['status'] as String,
      appearance:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin.toJson(),
      'location': instance.location.toJson(),
      'image': instance.image,
      'status': instance.status,
      'episode': instance.appearance,
    };
