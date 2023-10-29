package org.aghnyap.aviary.aviary_tunnel

import MessageOuterClass.Message
import MessengerHostApi

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** AviaryTunnelPlugin */
class AviaryTunnelPlugin: FlutterPlugin, MessengerHostApi {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    MessengerHostApi.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    MessengerHostApi.setUp(binding.binaryMessenger, null)
  }

  override fun sendMessage(message: ByteArray?, callback: (Result<ByteArray?>) -> Unit) {
    val message = Message.newBuilder().apply {
      subject = "platform"
      body = "Android ${android.os.Build.VERSION.RELEASE} by Pigeon with Protobuf"
    }.build()

    callback(Result.success(message.toByteArray()))
  }
}
