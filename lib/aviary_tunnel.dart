
import 'aviary_tunnel_platform_interface.dart';

class AviaryTunnel {
  Future<String?> getPlatformVersion() {
    return AviaryTunnelPlatform.instance.getPlatformVersion();
  }
}
