import 'dart:js_interop';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'timezone_provider_platform_interface.dart';

/// The web implementation of [TimezoneProviderPlatform].
///
/// Resolves the device's IANA timezone name from the browser's
/// `Intl.DateTimeFormat().resolvedOptions().timeZone`.
class TimezoneProviderWeb extends TimezoneProviderPlatform {
  /// Registers this class as the default instance of
  /// [TimezoneProviderPlatform].
  static void registerWith(Registrar registrar) {
    TimezoneProviderPlatform.instance = TimezoneProviderWeb();
  }

  @override
  Future<String> getTimezone() async {
    return _DateTimeFormat().resolvedOptions().timeZone;
  }
}

@JS('Intl.DateTimeFormat')
extension type _DateTimeFormat._(JSObject _) implements JSObject {
  external factory _DateTimeFormat();
  external _ResolvedOptions resolvedOptions();
}

extension type _ResolvedOptions._(JSObject _) implements JSObject {
  external String get timeZone;
}
