package org.aghnyap.aviary.aviary_tunnel

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

  override fun sendMessage(message: ByteArray, callback: (Result<ByteArray?>) -> Unit) {
    TODO("Not yet implemented")
  }
}
