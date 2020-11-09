import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

/// Flutter 工具类
class Ftools {
  static const MethodChannel _channel = const MethodChannel('ftools');

  /// 按下 Home键
  /// 仅支持 Android
  static Future<bool> get pressedHome async {
    if (Platform.isAndroid) {
      final bool pressed = await _channel.invokeMethod('pressedHome');
      return pressed;
    } else {
      return false;
    }
  }
}
