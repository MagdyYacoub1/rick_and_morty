// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharcterLoadInProgressImplCopyWith<$Res> {
  factory _$$CharcterLoadInProgressImplCopyWith(
          _$CharcterLoadInProgressImpl value,
          $Res Function(_$CharcterLoadInProgressImpl) then) =
      __$$CharcterLoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharcterLoadInProgressImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharcterLoadInProgressImpl>
    implements _$$CharcterLoadInProgressImplCopyWith<$Res> {
  __$$CharcterLoadInProgressImplCopyWithImpl(
      _$CharcterLoadInProgressImpl _value,
      $Res Function(_$CharcterLoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharcterLoadInProgressImpl implements CharcterLoadInProgress {
  const _$CharcterLoadInProgressImpl();

  @override
  String toString() {
    return 'CharactersState.characterLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharcterLoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) {
    return characterLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) {
    return characterLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterLoadInProgress != null) {
      return characterLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) {
    return characterLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) {
    return characterLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterLoadInProgress != null) {
      return characterLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class CharcterLoadInProgress implements CharactersState {
  const factory CharcterLoadInProgress() = _$CharcterLoadInProgressImpl;
}

/// @nodoc
abstract class _$$CharcterLoadMoreInProgressImplCopyWith<$Res> {
  factory _$$CharcterLoadMoreInProgressImplCopyWith(
          _$CharcterLoadMoreInProgressImpl value,
          $Res Function(_$CharcterLoadMoreInProgressImpl) then) =
      __$$CharcterLoadMoreInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$CharcterLoadMoreInProgressImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res,
        _$CharcterLoadMoreInProgressImpl>
    implements _$$CharcterLoadMoreInProgressImplCopyWith<$Res> {
  __$$CharcterLoadMoreInProgressImplCopyWithImpl(
      _$CharcterLoadMoreInProgressImpl _value,
      $Res Function(_$CharcterLoadMoreInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharcterLoadMoreInProgressImpl(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharcterLoadMoreInProgressImpl implements CharcterLoadMoreInProgress {
  const _$CharcterLoadMoreInProgressImpl(final List<Character> characters)
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharactersState.characterLoadMoreInProgress(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharcterLoadMoreInProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharcterLoadMoreInProgressImplCopyWith<_$CharcterLoadMoreInProgressImpl>
      get copyWith => __$$CharcterLoadMoreInProgressImplCopyWithImpl<
          _$CharcterLoadMoreInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) {
    return characterLoadMoreInProgress(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) {
    return characterLoadMoreInProgress?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterLoadMoreInProgress != null) {
      return characterLoadMoreInProgress(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) {
    return characterLoadMoreInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) {
    return characterLoadMoreInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterLoadMoreInProgress != null) {
      return characterLoadMoreInProgress(this);
    }
    return orElse();
  }
}

abstract class CharcterLoadMoreInProgress implements CharactersState {
  const factory CharcterLoadMoreInProgress(final List<Character> characters) =
      _$CharcterLoadMoreInProgressImpl;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$CharcterLoadMoreInProgressImplCopyWith<_$CharcterLoadMoreInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFetchedImplCopyWith<$Res> {
  factory _$$CharacterFetchedImplCopyWith(_$CharacterFetchedImpl value,
          $Res Function(_$CharacterFetchedImpl) then) =
      __$$CharacterFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResponse<Character> apiResponse});

  $ApiResponseCopyWith<Character, $Res> get apiResponse;
}

/// @nodoc
class __$$CharacterFetchedImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharacterFetchedImpl>
    implements _$$CharacterFetchedImplCopyWith<$Res> {
  __$$CharacterFetchedImplCopyWithImpl(_$CharacterFetchedImpl _value,
      $Res Function(_$CharacterFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResponse = null,
  }) {
    return _then(_$CharacterFetchedImpl(
      null == apiResponse
          ? _value.apiResponse
          : apiResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Character>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Character, $Res> get apiResponse {
    return $ApiResponseCopyWith<Character, $Res>(_value.apiResponse, (value) {
      return _then(_value.copyWith(apiResponse: value));
    });
  }
}

/// @nodoc

class _$CharacterFetchedImpl implements CharacterFetched {
  const _$CharacterFetchedImpl(this.apiResponse);

  @override
  final ApiResponse<Character> apiResponse;

  @override
  String toString() {
    return 'CharactersState.characterFetched(apiResponse: $apiResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFetchedImpl &&
            (identical(other.apiResponse, apiResponse) ||
                other.apiResponse == apiResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFetchedImplCopyWith<_$CharacterFetchedImpl> get copyWith =>
      __$$CharacterFetchedImplCopyWithImpl<_$CharacterFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) {
    return characterFetched(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) {
    return characterFetched?.call(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterFetched != null) {
      return characterFetched(apiResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) {
    return characterFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) {
    return characterFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterFetched != null) {
      return characterFetched(this);
    }
    return orElse();
  }
}

abstract class CharacterFetched implements CharactersState {
  const factory CharacterFetched(final ApiResponse<Character> apiResponse) =
      _$CharacterFetchedImpl;

  ApiResponse<Character> get apiResponse;
  @JsonKey(ignore: true)
  _$$CharacterFetchedImplCopyWith<_$CharacterFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFaildImplCopyWith<$Res> {
  factory _$$CharacterFaildImplCopyWith(_$CharacterFaildImpl value,
          $Res Function(_$CharacterFaildImpl) then) =
      __$$CharacterFaildImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CharacterFaildImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharacterFaildImpl>
    implements _$$CharacterFaildImplCopyWith<$Res> {
  __$$CharacterFaildImplCopyWithImpl(
      _$CharacterFaildImpl _value, $Res Function(_$CharacterFaildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CharacterFaildImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterFaildImpl implements CharacterFaild {
  const _$CharacterFaildImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharactersState.characterFaild(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFaildImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFaildImplCopyWith<_$CharacterFaildImpl> get copyWith =>
      __$$CharacterFaildImplCopyWithImpl<_$CharacterFaildImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) {
    return characterFaild(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) {
    return characterFaild?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterFaild != null) {
      return characterFaild(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) {
    return characterFaild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) {
    return characterFaild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterFaild != null) {
      return characterFaild(this);
    }
    return orElse();
  }
}

abstract class CharacterFaild implements CharactersState {
  const factory CharacterFaild(final String message) = _$CharacterFaildImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CharacterFaildImplCopyWith<_$CharacterFaildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterEndOfListImplCopyWith<$Res> {
  factory _$$CharacterEndOfListImplCopyWith(_$CharacterEndOfListImpl value,
          $Res Function(_$CharacterEndOfListImpl) then) =
      __$$CharacterEndOfListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$CharacterEndOfListImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharacterEndOfListImpl>
    implements _$$CharacterEndOfListImplCopyWith<$Res> {
  __$$CharacterEndOfListImplCopyWithImpl(_$CharacterEndOfListImpl _value,
      $Res Function(_$CharacterEndOfListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharacterEndOfListImpl(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharacterEndOfListImpl implements CharacterEndOfList {
  const _$CharacterEndOfListImpl(final List<Character> characters)
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharactersState.characterEndOfList(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEndOfListImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEndOfListImplCopyWith<_$CharacterEndOfListImpl> get copyWith =>
      __$$CharacterEndOfListImplCopyWithImpl<_$CharacterEndOfListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterLoadInProgress,
    required TResult Function(List<Character> characters)
        characterLoadMoreInProgress,
    required TResult Function(ApiResponse<Character> apiResponse)
        characterFetched,
    required TResult Function(String message) characterFaild,
    required TResult Function(List<Character> characters) characterEndOfList,
  }) {
    return characterEndOfList(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterLoadInProgress,
    TResult? Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult? Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult? Function(String message)? characterFaild,
    TResult? Function(List<Character> characters)? characterEndOfList,
  }) {
    return characterEndOfList?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterLoadInProgress,
    TResult Function(List<Character> characters)? characterLoadMoreInProgress,
    TResult Function(ApiResponse<Character> apiResponse)? characterFetched,
    TResult Function(String message)? characterFaild,
    TResult Function(List<Character> characters)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterEndOfList != null) {
      return characterEndOfList(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharcterLoadInProgress value)
        characterLoadInProgress,
    required TResult Function(CharcterLoadMoreInProgress value)
        characterLoadMoreInProgress,
    required TResult Function(CharacterFetched value) characterFetched,
    required TResult Function(CharacterFaild value) characterFaild,
    required TResult Function(CharacterEndOfList value) characterEndOfList,
  }) {
    return characterEndOfList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult? Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult? Function(CharacterFetched value)? characterFetched,
    TResult? Function(CharacterFaild value)? characterFaild,
    TResult? Function(CharacterEndOfList value)? characterEndOfList,
  }) {
    return characterEndOfList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharcterLoadInProgress value)? characterLoadInProgress,
    TResult Function(CharcterLoadMoreInProgress value)?
        characterLoadMoreInProgress,
    TResult Function(CharacterFetched value)? characterFetched,
    TResult Function(CharacterFaild value)? characterFaild,
    TResult Function(CharacterEndOfList value)? characterEndOfList,
    required TResult orElse(),
  }) {
    if (characterEndOfList != null) {
      return characterEndOfList(this);
    }
    return orElse();
  }
}

abstract class CharacterEndOfList implements CharactersState {
  const factory CharacterEndOfList(final List<Character> characters) =
      _$CharacterEndOfListImpl;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$CharacterEndOfListImplCopyWith<_$CharacterEndOfListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterFetch,
    required TResult Function() characterFetchMore,
    required TResult Function() fetchCharacterLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterFetch,
    TResult? Function()? characterFetchMore,
    TResult? Function()? fetchCharacterLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterFetch,
    TResult Function()? characterFetchMore,
    TResult Function()? fetchCharacterLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFetch value) characterFetch,
    required TResult Function(CharacterFetchMore value) characterFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? characterFetch,
    TResult? Function(CharacterFetchMore value)? characterFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? characterFetch,
    TResult Function(CharacterFetchMore value)? characterFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterFetchImplCopyWith<$Res> {
  factory _$$CharacterFetchImplCopyWith(_$CharacterFetchImpl value,
          $Res Function(_$CharacterFetchImpl) then) =
      __$$CharacterFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterFetchImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$CharacterFetchImpl>
    implements _$$CharacterFetchImplCopyWith<$Res> {
  __$$CharacterFetchImplCopyWithImpl(
      _$CharacterFetchImpl _value, $Res Function(_$CharacterFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterFetchImpl implements CharacterFetch {
  const _$CharacterFetchImpl();

  @override
  String toString() {
    return 'CharactersEvent.characterFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterFetch,
    required TResult Function() characterFetchMore,
    required TResult Function() fetchCharacterLocations,
  }) {
    return characterFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterFetch,
    TResult? Function()? characterFetchMore,
    TResult? Function()? fetchCharacterLocations,
  }) {
    return characterFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterFetch,
    TResult Function()? characterFetchMore,
    TResult Function()? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (characterFetch != null) {
      return characterFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFetch value) characterFetch,
    required TResult Function(CharacterFetchMore value) characterFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocations,
  }) {
    return characterFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? characterFetch,
    TResult? Function(CharacterFetchMore value)? characterFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocations,
  }) {
    return characterFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? characterFetch,
    TResult Function(CharacterFetchMore value)? characterFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (characterFetch != null) {
      return characterFetch(this);
    }
    return orElse();
  }
}

abstract class CharacterFetch implements CharactersEvent {
  const factory CharacterFetch() = _$CharacterFetchImpl;
}

/// @nodoc
abstract class _$$CharacterFetchMoreImplCopyWith<$Res> {
  factory _$$CharacterFetchMoreImplCopyWith(_$CharacterFetchMoreImpl value,
          $Res Function(_$CharacterFetchMoreImpl) then) =
      __$$CharacterFetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterFetchMoreImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$CharacterFetchMoreImpl>
    implements _$$CharacterFetchMoreImplCopyWith<$Res> {
  __$$CharacterFetchMoreImplCopyWithImpl(_$CharacterFetchMoreImpl _value,
      $Res Function(_$CharacterFetchMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterFetchMoreImpl implements CharacterFetchMore {
  const _$CharacterFetchMoreImpl();

  @override
  String toString() {
    return 'CharactersEvent.characterFetchMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterFetchMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterFetch,
    required TResult Function() characterFetchMore,
    required TResult Function() fetchCharacterLocations,
  }) {
    return characterFetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterFetch,
    TResult? Function()? characterFetchMore,
    TResult? Function()? fetchCharacterLocations,
  }) {
    return characterFetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterFetch,
    TResult Function()? characterFetchMore,
    TResult Function()? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (characterFetchMore != null) {
      return characterFetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFetch value) characterFetch,
    required TResult Function(CharacterFetchMore value) characterFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocations,
  }) {
    return characterFetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? characterFetch,
    TResult? Function(CharacterFetchMore value)? characterFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocations,
  }) {
    return characterFetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? characterFetch,
    TResult Function(CharacterFetchMore value)? characterFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (characterFetchMore != null) {
      return characterFetchMore(this);
    }
    return orElse();
  }
}

abstract class CharacterFetchMore implements CharactersEvent {
  const factory CharacterFetchMore() = _$CharacterFetchMoreImpl;
}

/// @nodoc
abstract class _$$FetchCharacterLocationsImplCopyWith<$Res> {
  factory _$$FetchCharacterLocationsImplCopyWith(
          _$FetchCharacterLocationsImpl value,
          $Res Function(_$FetchCharacterLocationsImpl) then) =
      __$$FetchCharacterLocationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCharacterLocationsImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$FetchCharacterLocationsImpl>
    implements _$$FetchCharacterLocationsImplCopyWith<$Res> {
  __$$FetchCharacterLocationsImplCopyWithImpl(
      _$FetchCharacterLocationsImpl _value,
      $Res Function(_$FetchCharacterLocationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCharacterLocationsImpl implements FetchCharacterLocations {
  const _$FetchCharacterLocationsImpl();

  @override
  String toString() {
    return 'CharactersEvent.fetchCharacterLocations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCharacterLocationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() characterFetch,
    required TResult Function() characterFetchMore,
    required TResult Function() fetchCharacterLocations,
  }) {
    return fetchCharacterLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? characterFetch,
    TResult? Function()? characterFetchMore,
    TResult? Function()? fetchCharacterLocations,
  }) {
    return fetchCharacterLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? characterFetch,
    TResult Function()? characterFetchMore,
    TResult Function()? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (fetchCharacterLocations != null) {
      return fetchCharacterLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFetch value) characterFetch,
    required TResult Function(CharacterFetchMore value) characterFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocations,
  }) {
    return fetchCharacterLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? characterFetch,
    TResult? Function(CharacterFetchMore value)? characterFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocations,
  }) {
    return fetchCharacterLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? characterFetch,
    TResult Function(CharacterFetchMore value)? characterFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocations,
    required TResult orElse(),
  }) {
    if (fetchCharacterLocations != null) {
      return fetchCharacterLocations(this);
    }
    return orElse();
  }
}

abstract class FetchCharacterLocations implements CharactersEvent {
  const factory FetchCharacterLocations() = _$FetchCharacterLocationsImpl;
}
