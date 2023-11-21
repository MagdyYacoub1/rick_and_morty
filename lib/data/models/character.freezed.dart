// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'species')
  String get species => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin')
  CharacterLocation get origin => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  CharacterLocation get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode')
  List<String> get appearance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'species') String species,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'origin') CharacterLocation origin,
      @JsonKey(name: 'location') CharacterLocation location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'episode') List<String> appearance});

  $CharacterLocationCopyWith<$Res> get origin;
  $CharacterLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? status = null,
    Object? appearance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterLocation,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocation,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterLocationCopyWith<$Res> get origin {
    return $CharacterLocationCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterLocationCopyWith<$Res> get location {
    return $CharacterLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'species') String species,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'origin') CharacterLocation origin,
      @JsonKey(name: 'location') CharacterLocation location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'episode') List<String> appearance});

  @override
  $CharacterLocationCopyWith<$Res> get origin;
  @override
  $CharacterLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? status = null,
    Object? appearance = null,
  }) {
    return _then(_$CharacterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterLocation,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocation,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      appearance: null == appearance
          ? _value._appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CharacterImpl with DiagnosticableTreeMixin implements _Character {
  const _$CharacterImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'species') required this.species,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'origin') required this.origin,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'episode') required final List<String> appearance})
      : _appearance = appearance;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'species')
  final String species;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'origin')
  final CharacterLocation origin;
  @override
  @JsonKey(name: 'location')
  final CharacterLocation location;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'status')
  final String status;
  final List<String> _appearance;
  @override
  @JsonKey(name: 'episode')
  List<String> get appearance {
    if (_appearance is EqualUnmodifiableListView) return _appearance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appearance);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Character(id: $id, name: $name, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, status: $status, appearance: $appearance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Character'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('origin', origin))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('appearance', appearance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._appearance, _appearance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      species,
      type,
      gender,
      origin,
      location,
      image,
      status,
      const DeepCollectionEquality().hash(_appearance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'species') required final String species,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'gender') required final String gender,
          @JsonKey(name: 'origin') required final CharacterLocation origin,
          @JsonKey(name: 'location') required final CharacterLocation location,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'episode') required final List<String> appearance}) =
      _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'species')
  String get species;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(name: 'origin')
  CharacterLocation get origin;
  @override
  @JsonKey(name: 'location')
  CharacterLocation get location;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'episode')
  List<String> get appearance;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
