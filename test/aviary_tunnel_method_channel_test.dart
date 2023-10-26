import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aviary_tunnel/aviary_tunnel_default_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  AviaryTunnelDefaultMethodChannel platform =
      AviaryTunnelDefaultMethodChannel();
  const MethodChannel channel = MethodChannel('aviary_tunnel');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
