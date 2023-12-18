package com.loopmarket.clisitef

import android.os.Looper
import android.app.Activity
import androidx.annotation.NonNull
import br.com.softwareexpress.sitef.android.CliSiTef
import com.loopmarket.clisitef.channel.DataHandler
import com.loopmarket.clisitef.channel.EventHandler
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.Log
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


/** ClisitefPlugin */
class ClisitefPlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  private lateinit var methodChannel : MethodChannel

  private lateinit var activity: Activity

  private lateinit var eventChannel: EventChannel

  private lateinit var dataChannel: EventChannel

  private lateinit var cliSiTef: CliSiTef

  private lateinit var tefMethods: TefMethods

  private lateinit var pinPadMethods: PinPadMethods;

  private lateinit var cliSiTefListener: CliSiTefListener;

  private val CHANNEL = "com.loopmarket.clisitef"

  override fun onAttachedToActivity(activityPluginBinding: ActivityPluginBinding) {
    activity = activityPluginBinding.activity

    if(cliSiTef != null){
      cliSiTef.setActivity(activity)
    }
  }

  override fun onDetachedFromActivityForConfigChanges() {
    if(cliSiTef != null){
      cliSiTef.setActivity(null)
    }
  }

  override fun onReattachedToActivityForConfigChanges(activityPluginBinding: ActivityPluginBinding) {
    activity = activityPluginBinding.activity

    if(cliSiTef != null){
      cliSiTef.setActivity(activity)
    }

  }

  override fun onDetachedFromActivity() {
    if(cliSiTef != null){
      cliSiTef.setActivity(null)
    }
  }

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    methodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, CHANNEL)

    cliSiTef = CliSiTef(flutterPluginBinding.applicationContext)

    cliSiTefListener = CliSiTefListener(cliSiTef)

    eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, "$CHANNEL/events")
    eventChannel.setStreamHandler(EventHandler.setListener(cliSiTefListener))

    dataChannel = EventChannel(flutterPluginBinding.binaryMessenger, "$CHANNEL/events/data")
    dataChannel.setStreamHandler(DataHandler.setListener(cliSiTefListener))

    cliSiTef.setMessageHandler(cliSiTefListener.onMessage(Looper.getMainLooper()));

    tefMethods = TefMethods(cliSiTef)
    pinPadMethods = PinPadMethods(cliSiTef)

    methodChannel.setMethodCallHandler(this)
  }


  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    tefMethods.setResultHandler(result);
    pinPadMethods.setResultHandler(result);
    when (call.method) {
      "setPinpadDisplayMessage" -> pinPadMethods.setDisplayMessage(call.argument<String>("message")!!)
      "pinpadReadYesNo" -> pinPadMethods.readYesOrNo(call.argument<String>("message")!!)
      "pinpadIsPresent" -> pinPadMethods.isPresent()
      "configure" -> tefMethods.configure(call.argument<String>("enderecoSitef")!!, call.argument<String>("codigoLoja")!!, call.argument<String>("numeroTerminal")!!, "[TipoPinPad="+call.argument<String>("tipoPinPad")!!+"];[ParmsClient=1="+call.argument<String>("cnpjLoja")!!+";2="+call.argument<String>("cnpjAutomacao")!!+";"+call.argument<String>("parametrosAdicionais")!!+"]")
      "getQttPendingTransactions" -> tefMethods.getQttPendingTransactions(call.argument<String>("dataFiscal")!!, call.argument<String>("cupomFiscal")!!)
      "startTransaction" -> tefMethods.startTransaction(cliSiTefListener, call.argument<Int>("modalidade")!!, call.argument<String>("valor")!!, call.argument<String>("cupomFiscal")!!, call.argument<String>("dataFiscal")!!, call.argument<String>("horario")!!, call.argument<String>("operador")!!, call.argument<String>("restricoes")!!)
      "finishLastTransaction" -> tefMethods.finishLastTransaction(call.argument<Int>("confirma")!!)
      "finishTransaction" -> tefMethods.finishTransaction(call.argument<Int>("confirma")!!, call.argument<String>("cupomFiscal")!!, call.argument<String>("dataFiscal")!!, call.argument<String>("horaFiscal")!!)
      "abortTransaction" -> tefMethods.abortTransaction(call.argument<Int>("continua")!!)
      "continueTransaction" -> tefMethods.continueTransaction(call.argument<String>("data")!!)
      else -> result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    methodChannel.setMethodCallHandler(null)
    eventChannel.setStreamHandler(null)
    dataChannel.setStreamHandler(null)
  }
}
