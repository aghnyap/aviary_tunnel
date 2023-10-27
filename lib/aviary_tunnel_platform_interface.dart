import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/aviary_tunnel_messenger_channel.dart';

abstract class AviaryTunnelPlatform extends PlatformInterface {
  /// Constructs a AviaryTunnelPlatform.
  AviaryTunnelPlatform() : super(token: _token);

  static final Object _token = Object();

  static AviaryTunnelPlatform _instance = AviaryTunnelMessengerChannel();

  /// The default instance of [AviaryTunnelPlatform] to use.
  ///
  /// Defaults to [AviaryTunnelDefaultMethodChannel].
  static AviaryTunnelPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AviaryTunnelPlatform] when
  /// they register themselves.
  static set instance(AviaryTunnelPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Uint8List?> sendMessage(Uint8List? message) {
    throw UnimplementedError('sendMessage() has not been implemented.');
  }
}
