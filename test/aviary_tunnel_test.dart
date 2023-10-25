import 'package:flutter_test/flutter_test.dart';
import 'package:aviary_tunnel/aviary_tunnel.dart';
import 'package:aviary_tunnel/aviary_tunnel_platform_interface.dart';
import 'package:aviary_tunnel/aviary_tunnel_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAviaryTunnelPlatform
    with MockPlatformInterfaceMixin
    implements AviaryTunnelPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AviaryTunnelPlatform initialPlatform = AviaryTunnelPlatform.instance;

  test('$MethodChannelAviaryTunnel is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAviaryTunnel>());
  });

  test('getPlatformVersion', () async {
    AviaryTunnel aviaryTunnelPlugin = AviaryTunnel();
    MockAviaryTunnelPlatform fakePlatform = MockAviaryTunnelPlatform();
    AviaryTunnelPlatform.instance = fakePlatform;

    expect(await aviaryTunnelPlugin.getPlatformVersion(), '42');
  });
}
