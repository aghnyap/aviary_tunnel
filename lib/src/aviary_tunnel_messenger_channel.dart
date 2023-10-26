import 'package:aviary_tunnel/aviary_tunnel_platform_interface.dart';

import 'aviary_tunnel_messenger_api.g.dart';

class AviaryTunnelMessengerChannel extends AviaryTunnelPlatform {
  final _messengerHostApi = MessengerHostApi();

  @override
  Future<String?> getPlatformVersion() {
    return _messengerHostApi.getPlatformVersion();
  }
}
