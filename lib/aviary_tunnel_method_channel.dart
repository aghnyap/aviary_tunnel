import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'aviary_tunnel_platform_interface.dart';

/// An implementation of [AviaryTunnelPlatform] that uses method channels.
class MethodChannelAviaryTunnel extends AviaryTunnelPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('aviary_tunnel');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
