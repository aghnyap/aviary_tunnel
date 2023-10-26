import Flutter
import UIKit

public class AviaryTunnelPlugin: NSObject, FlutterPlugin, MessengerHostApi {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "aviary_tunnel", binaryMessenger: registrar.messenger())
    let instance = AviaryTunnelPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
		
		MessengerHostApiSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS" + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
    
    func getPlatformVersion(completion: @escaping (Result<String?, Error>) -> Void) {
        completion(.success("iOS " + UIDevice.current.systemVersion + " by Pigeon"))
    }
}
