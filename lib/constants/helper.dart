import 'package:flutter/foundation.dart';

class Log {
  static debug(Object? object) {
    if (kDebugMode) print(object);
  }
}
