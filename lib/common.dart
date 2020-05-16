import 'dart:async';

import 'package:flutter/services.dart';

class Common {
  static const MethodChannel _channel =
      const MethodChannel('common');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get getNickName async {
    final String nickName = await _channel.invokeMethod('getNickName');
    return nickName;
  }

  static Future<void> showToast(String text) async {
    await _channel.invokeMethod("showToast", text);
  }
}
