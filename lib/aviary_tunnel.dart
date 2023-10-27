import 'dart:typed_data';

import 'aviary_tunnel_platform_interface.dart';

class AviaryTunnel {
  Future<Uint8List?> sendMessage(Uint8List? message) {
    return AviaryTunnelPlatform.instance.sendMessage(message);
  }
}
