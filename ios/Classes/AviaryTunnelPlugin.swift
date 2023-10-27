import Flutter
import UIKit

public class AviaryTunnelPlugin: NSObject, FlutterPlugin, MessengerHostApi {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = AviaryTunnelPlugin()
        MessengerHostApiSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
    }
    
    func sendMessage(message: FlutterStandardTypedData?, completion: @escaping (Result<FlutterStandardTypedData?, Error>) -> Void) {
        let message = Message.with { (message) in
            message.subject = "platform"
            message.body = "iOS " + UIDevice.current.systemVersion + " by Pigeon with Protobuf"
        }
        guard let data = try? message.serializedData() else {
            return
        }
        completion(.success(FlutterStandardTypedData(bytes: data)))
    }
}
