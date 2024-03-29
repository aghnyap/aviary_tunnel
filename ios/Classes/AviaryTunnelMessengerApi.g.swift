// Autogenerated from Pigeon (v12.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol MessengerHostApi {
  func sendMessage(message: FlutterStandardTypedData?, completion: @escaping (Result<FlutterStandardTypedData?, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class MessengerHostApiSetup {
  /// The codec used by MessengerHostApi.
  /// Sets up an instance of `MessengerHostApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: MessengerHostApi?) {
    let sendMessageChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.aviary_tunnel_messenger_api.MessengerHostApi.sendMessage", binaryMessenger: binaryMessenger)
    if let api = api {
      sendMessageChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let messageArg: FlutterStandardTypedData? = nilOrValue(args[0])
        api.sendMessage(message: messageArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      sendMessageChannel.setMessageHandler(nil)
    }
  }
}
