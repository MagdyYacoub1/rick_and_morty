// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_date')
  String get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode')
  String get episode => throw _privateConstructorUsedError;
  @JsonKey(name: 'characters')
  List<Character> get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'air_date') String airDate,
      @JsonKey(name: 'episode') String episode,
      @JsonKey(name: 'characters') List<Character> characters});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? characters = null,
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
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'air_date') String airDate,
      @JsonKey(name: 'episode') String episode,
      @JsonKey(name: 'characters') List<Character> characters});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? characters = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EpisodeImpl with DiagnosticableTreeMixin implements _Episode {
  const _$EpisodeImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'air_date') required this.airDate,
      @JsonKey(name: 'episode') required this.episode,
      @JsonKey(name: 'characters') required final List<Character> characters})
      : _characters = characters;

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'air_date')
  final String airDate;
  @override
  @JsonKey(name: 'episode')
  final String episode;
  final List<Character> _characters;
  @override
  @JsonKey(name: 'characters')
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Episode(id: $id, name: $name, airDate: $airDate, episode: $episode, characters: $characters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Episode'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('airDate', airDate))
      ..add(DiagnosticsProperty('episode', episode))
      ..add(DiagnosticsProperty('characters', characters));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, airDate, episode,
      const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'air_date') required final String airDate,
      @JsonKey(name: 'episode') required final String episode,
      @JsonKey(name: 'characters')
      required final List<Character> characters}) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'air_date')
  String get airDate;
  @override
  @JsonKey(name: 'episode')
  String get episode;
  @override
  @JsonKey(name: 'characters')
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
