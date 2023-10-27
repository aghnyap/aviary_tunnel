import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/aviary_tunnel_messenger_api.g.dart',
    dartOptions: DartOptions(),
    kotlinOut:
        'android/src/main/kotlin/org/aghnyap/aviary/aviary_tunnel/AviaryTunnelMessengerApi.g.kt',
    kotlinOptions: KotlinOptions(),
    swiftOut: 'ios/Classes/AviaryTunnelMessengerApi.g.swift',
    swiftOptions: SwiftOptions(),
    dartPackageName: 'aviary_tunnel_messenger_api',
  ),
)
@HostApi()
abstract class MessengerHostApi {
  @async
  Uint8List? sendMessage(Uint8List? message);
}
