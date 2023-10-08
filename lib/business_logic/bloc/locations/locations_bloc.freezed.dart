// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationInitialCopyWith<$Res> {
  factory _$$LocationInitialCopyWith(
          _$LocationInitial value, $Res Function(_$LocationInitial) then) =
      __$$LocationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationInitialCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationInitial>
    implements _$$LocationInitialCopyWith<$Res> {
  __$$LocationInitialCopyWithImpl(
      _$LocationInitial _value, $Res Function(_$LocationInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationInitial implements LocationInitial {
  const _$LocationInitial();

  @override
  String toString() {
    return 'LocationState.locationInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) {
    return locationInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) {
    return locationInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationInitial != null) {
      return locationInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) {
    return locationInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) {
    return locationInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationInitial != null) {
      return locationInitial(this);
    }
    return orElse();
  }
}

abstract class LocationInitial implements LocationState {
  const factory LocationInitial() = _$LocationInitial;
}

/// @nodoc
abstract class _$$_LocationLoadInProgressCopyWith<$Res> {
  factory _$$_LocationLoadInProgressCopyWith(_$_LocationLoadInProgress value,
          $Res Function(_$_LocationLoadInProgress) then) =
      __$$_LocationLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationLoadInProgressCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationLoadInProgress>
    implements _$$_LocationLoadInProgressCopyWith<$Res> {
  __$$_LocationLoadInProgressCopyWithImpl(_$_LocationLoadInProgress _value,
      $Res Function(_$_LocationLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LocationLoadInProgress implements _LocationLoadInProgress {
  const _$_LocationLoadInProgress();

  @override
  String toString() {
    return 'LocationState.locationLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) {
    return locationLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) {
    return locationLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationLoadInProgress != null) {
      return locationLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) {
    return locationLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) {
    return locationLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationLoadInProgress != null) {
      return locationLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LocationLoadInProgress implements LocationState {
  const factory _LocationLoadInProgress() = _$_LocationLoadInProgress;
}

/// @nodoc
abstract class _$$LocationFetchedCopyWith<$Res> {
  factory _$$LocationFetchedCopyWith(
          _$LocationFetched value, $Res Function(_$LocationFetched) then) =
      __$$LocationFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResponse<List<Location>> apiResponse});

  $ApiResponseCopyWith<List<Location>, $Res> get apiResponse;
}

/// @nodoc
class __$$LocationFetchedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationFetched>
    implements _$$LocationFetchedCopyWith<$Res> {
  __$$LocationFetchedCopyWithImpl(
      _$LocationFetched _value, $Res Function(_$LocationFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResponse = null,
  }) {
    return _then(_$LocationFetched(
      null == apiResponse
          ? _value.apiResponse
          : apiResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Location>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Location>, $Res> get apiResponse {
    return $ApiResponseCopyWith<List<Location>, $Res>(_value.apiResponse,
        (value) {
      return _then(_value.copyWith(apiResponse: value));
    });
  }
}

/// @nodoc

class _$LocationFetched implements LocationFetched {
  const _$LocationFetched(this.apiResponse);

  @override
  final ApiResponse<List<Location>> apiResponse;

  @override
  String toString() {
    return 'LocationState.locationFetched(apiResponse: $apiResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFetched &&
            (identical(other.apiResponse, apiResponse) ||
                other.apiResponse == apiResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFetchedCopyWith<_$LocationFetched> get copyWith =>
      __$$LocationFetchedCopyWithImpl<_$LocationFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) {
    return locationFetched(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) {
    return locationFetched?.call(apiResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(apiResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) {
    return locationFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) {
    return locationFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(this);
    }
    return orElse();
  }
}

abstract class LocationFetched implements LocationState {
  const factory LocationFetched(final ApiResponse<List<Location>> apiResponse) =
      _$LocationFetched;

  ApiResponse<List<Location>> get apiResponse;
  @JsonKey(ignore: true)
  _$$LocationFetchedCopyWith<_$LocationFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFaildCopyWith<$Res> {
  factory _$$LocationFaildCopyWith(
          _$LocationFaild value, $Res Function(_$LocationFaild) then) =
      __$$LocationFaildCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationFaildCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationFaild>
    implements _$$LocationFaildCopyWith<$Res> {
  __$$LocationFaildCopyWithImpl(
      _$LocationFaild _value, $Res Function(_$LocationFaild) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocationFaild(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationFaild implements LocationFaild {
  const _$LocationFaild(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationState.locationFaild(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFaild &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFaildCopyWith<_$LocationFaild> get copyWith =>
      __$$LocationFaildCopyWithImpl<_$LocationFaild>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) {
    return locationFaild(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) {
    return locationFaild?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationFaild != null) {
      return locationFaild(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) {
    return locationFaild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) {
    return locationFaild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationFaild != null) {
      return locationFaild(this);
    }
    return orElse();
  }
}

abstract class LocationFaild implements LocationState {
  const factory LocationFaild(final String message) = _$LocationFaild;

  String get message;
  @JsonKey(ignore: true)
  _$$LocationFaildCopyWith<_$LocationFaild> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationEndOfListCopyWith<$Res> {
  factory _$$LocationEndOfListCopyWith(
          _$LocationEndOfList value, $Res Function(_$LocationEndOfList) then) =
      __$$LocationEndOfListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationEndOfListCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationEndOfList>
    implements _$$LocationEndOfListCopyWith<$Res> {
  __$$LocationEndOfListCopyWithImpl(
      _$LocationEndOfList _value, $Res Function(_$LocationEndOfList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationEndOfList implements LocationEndOfList {
  const _$LocationEndOfList();

  @override
  String toString() {
    return 'LocationState.locationEndOfList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationEndOfList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationInitial,
    required TResult Function() locationLoadInProgress,
    required TResult Function(ApiResponse<List<Location>> apiResponse)
        locationFetched,
    required TResult Function(String message) locationFaild,
    required TResult Function() locationEndOfList,
  }) {
    return locationEndOfList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationInitial,
    TResult? Function()? locationLoadInProgress,
    TResult? Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult? Function(String message)? locationFaild,
    TResult? Function()? locationEndOfList,
  }) {
    return locationEndOfList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationInitial,
    TResult Function()? locationLoadInProgress,
    TResult Function(ApiResponse<List<Location>> apiResponse)? locationFetched,
    TResult Function(String message)? locationFaild,
    TResult Function()? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationEndOfList != null) {
      return locationEndOfList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) locationInitial,
    required TResult Function(_LocationLoadInProgress value)
        locationLoadInProgress,
    required TResult Function(LocationFetched value) locationFetched,
    required TResult Function(LocationFaild value) locationFaild,
    required TResult Function(LocationEndOfList value) locationEndOfList,
  }) {
    return locationEndOfList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? locationInitial,
    TResult? Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult? Function(LocationFetched value)? locationFetched,
    TResult? Function(LocationFaild value)? locationFaild,
    TResult? Function(LocationEndOfList value)? locationEndOfList,
  }) {
    return locationEndOfList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? locationInitial,
    TResult Function(_LocationLoadInProgress value)? locationLoadInProgress,
    TResult Function(LocationFetched value)? locationFetched,
    TResult Function(LocationFaild value)? locationFaild,
    TResult Function(LocationEndOfList value)? locationEndOfList,
    required TResult orElse(),
  }) {
    if (locationEndOfList != null) {
      return locationEndOfList(this);
    }
    return orElse();
  }
}

abstract class LocationEndOfList implements LocationState {
  const factory LocationEndOfList() = _$LocationEndOfList;
}

/// @nodoc
mixin _$LocationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationFetch,
    required TResult Function() locationFetchMore,
    required TResult Function() fetchCharacterLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationFetch,
    TResult? Function()? locationFetchMore,
    TResult? Function()? fetchCharacterLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationFetch,
    TResult Function()? locationFetchMore,
    TResult Function()? fetchCharacterLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) locationFetch,
    required TResult Function(LocationFetchMore value) locationFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? locationFetch,
    TResult? Function(LocationFetchMore value)? locationFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? locationFetch,
    TResult Function(LocationFetchMore value)? locationFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res, LocationsEvent>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res, $Val extends LocationsEvent>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationFetchCopyWith<$Res> {
  factory _$$LocationFetchCopyWith(
          _$LocationFetch value, $Res Function(_$LocationFetch) then) =
      __$$LocationFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationFetchCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$LocationFetch>
    implements _$$LocationFetchCopyWith<$Res> {
  __$$LocationFetchCopyWithImpl(
      _$LocationFetch _value, $Res Function(_$LocationFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationFetch implements LocationFetch {
  const _$LocationFetch();

  @override
  String toString() {
    return 'LocationsEvent.locationFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationFetch,
    required TResult Function() locationFetchMore,
    required TResult Function() fetchCharacterLocation,
  }) {
    return locationFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationFetch,
    TResult? Function()? locationFetchMore,
    TResult? Function()? fetchCharacterLocation,
  }) {
    return locationFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationFetch,
    TResult Function()? locationFetchMore,
    TResult Function()? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (locationFetch != null) {
      return locationFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) locationFetch,
    required TResult Function(LocationFetchMore value) locationFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocation,
  }) {
    return locationFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? locationFetch,
    TResult? Function(LocationFetchMore value)? locationFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocation,
  }) {
    return locationFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? locationFetch,
    TResult Function(LocationFetchMore value)? locationFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (locationFetch != null) {
      return locationFetch(this);
    }
    return orElse();
  }
}

abstract class LocationFetch implements LocationsEvent {
  const factory LocationFetch() = _$LocationFetch;
}

/// @nodoc
abstract class _$$LocationFetchMoreCopyWith<$Res> {
  factory _$$LocationFetchMoreCopyWith(
          _$LocationFetchMore value, $Res Function(_$LocationFetchMore) then) =
      __$$LocationFetchMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationFetchMoreCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$LocationFetchMore>
    implements _$$LocationFetchMoreCopyWith<$Res> {
  __$$LocationFetchMoreCopyWithImpl(
      _$LocationFetchMore _value, $Res Function(_$LocationFetchMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationFetchMore implements LocationFetchMore {
  const _$LocationFetchMore();

  @override
  String toString() {
    return 'LocationsEvent.locationFetchMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationFetchMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationFetch,
    required TResult Function() locationFetchMore,
    required TResult Function() fetchCharacterLocation,
  }) {
    return locationFetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationFetch,
    TResult? Function()? locationFetchMore,
    TResult? Function()? fetchCharacterLocation,
  }) {
    return locationFetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationFetch,
    TResult Function()? locationFetchMore,
    TResult Function()? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (locationFetchMore != null) {
      return locationFetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) locationFetch,
    required TResult Function(LocationFetchMore value) locationFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocation,
  }) {
    return locationFetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? locationFetch,
    TResult? Function(LocationFetchMore value)? locationFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocation,
  }) {
    return locationFetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? locationFetch,
    TResult Function(LocationFetchMore value)? locationFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (locationFetchMore != null) {
      return locationFetchMore(this);
    }
    return orElse();
  }
}

abstract class LocationFetchMore implements LocationsEvent {
  const factory LocationFetchMore() = _$LocationFetchMore;
}

/// @nodoc
abstract class _$$FetchCharacterLocationsCopyWith<$Res> {
  factory _$$FetchCharacterLocationsCopyWith(_$FetchCharacterLocations value,
          $Res Function(_$FetchCharacterLocations) then) =
      __$$FetchCharacterLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCharacterLocationsCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$FetchCharacterLocations>
    implements _$$FetchCharacterLocationsCopyWith<$Res> {
  __$$FetchCharacterLocationsCopyWithImpl(_$FetchCharacterLocations _value,
      $Res Function(_$FetchCharacterLocations) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCharacterLocations implements FetchCharacterLocations {
  const _$FetchCharacterLocations();

  @override
  String toString() {
    return 'LocationsEvent.fetchCharacterLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCharacterLocations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationFetch,
    required TResult Function() locationFetchMore,
    required TResult Function() fetchCharacterLocation,
  }) {
    return fetchCharacterLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationFetch,
    TResult? Function()? locationFetchMore,
    TResult? Function()? fetchCharacterLocation,
  }) {
    return fetchCharacterLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationFetch,
    TResult Function()? locationFetchMore,
    TResult Function()? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (fetchCharacterLocation != null) {
      return fetchCharacterLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) locationFetch,
    required TResult Function(LocationFetchMore value) locationFetchMore,
    required TResult Function(FetchCharacterLocations value)
        fetchCharacterLocation,
  }) {
    return fetchCharacterLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? locationFetch,
    TResult? Function(LocationFetchMore value)? locationFetchMore,
    TResult? Function(FetchCharacterLocations value)? fetchCharacterLocation,
  }) {
    return fetchCharacterLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? locationFetch,
    TResult Function(LocationFetchMore value)? locationFetchMore,
    TResult Function(FetchCharacterLocations value)? fetchCharacterLocation,
    required TResult orElse(),
  }) {
    if (fetchCharacterLocation != null) {
      return fetchCharacterLocation(this);
    }
    return orElse();
  }
}

abstract class FetchCharacterLocations implements LocationsEvent {
  const factory FetchCharacterLocations() = _$FetchCharacterLocations;
}
