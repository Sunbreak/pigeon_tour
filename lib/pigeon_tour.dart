import 'dart:async';

import 'package:flutter/services.dart';

class PigeonTour {
  static const MethodChannel _channel = const MethodChannel('pigeon_tour');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
