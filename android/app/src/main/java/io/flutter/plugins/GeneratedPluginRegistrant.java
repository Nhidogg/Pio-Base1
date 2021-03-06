package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    ShimPluginRegistry shimPluginRegistry = new ShimPluginRegistry(flutterEngine);
      com.github.florent37.assetsaudioplayer.AssetsAudioPlayerPlugin.registerWith(shimPluginRegistry.registrarFor("com.github.florent37.assetsaudioplayer.AssetsAudioPlayerPlugin"));
      de.esys.esysfluttershare.EsysFlutterSharePlugin.registerWith(shimPluginRegistry.registrarFor("de.esys.esysfluttershare.EsysFlutterSharePlugin"));
      io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin.registerWith(shimPluginRegistry.registrarFor("io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin"));
    flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
      com.shatsy.pinchzoomimage.PinchZoomImagePlugin.registerWith(shimPluginRegistry.registrarFor("com.shatsy.pinchzoomimage.PinchZoomImagePlugin"));
    flutterEngine.getPlugins().add(new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
      io.flutter.plugins.urllauncher.UrlLauncherPlugin.registerWith(shimPluginRegistry.registrarFor("io.flutter.plugins.urllauncher.UrlLauncherPlugin"));
  }
}
