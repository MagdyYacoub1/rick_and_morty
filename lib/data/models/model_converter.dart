import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';
import 'episode.dart';
import 'location.dart';

class ModelConverter<T> implements JsonConverter<T, Object> {
  const ModelConverter();
  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      if (json.containsKey('gender')) {
        return Character.fromJson(json) as T;
      } else if (json.containsKey('dimension')) {
        return Location.fromJson(json) as T;
      } else if (json.containsKey('air_date')) {
        return Episode.fromJson(json) as T;
      }
    }
    return throw ArgumentError.value(
        json,
        'json',
        'OperationResult._fromJson cannot handle'
            ' this JSON payload. Please add a handler to _fromJson.');
  }

  @override
  Object toJson(T object) {
    if (object is JsonSerializable) {
      return object.toJson();
    }
    throw ArgumentError.value(
        object,
        'Cannot serialize to JSON',
        'OperationResult._toJson this object or List either is not '
            'Serializable or is unrecognized.');
  }
}
