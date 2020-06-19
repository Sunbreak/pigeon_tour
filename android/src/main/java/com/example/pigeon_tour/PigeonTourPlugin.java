package com.example.pigeon_tour;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * PigeonTourPlugin
 */
public class PigeonTourPlugin implements FlutterPlugin, Messages.Api {
  // This static function is optional and equivalent to onAttachedToEngine. It supports the old
  // pre-Flutter-1.12 Android projects. You are encouraged to continue supporting
  // plugin registration via this function while apps migrate to use the new Android APIs
  // post-flutter-1.12 via https://flutter.dev/go/android-project-migration.
  //
  // It is encouraged to share logic between onAttachedToEngine and registerWith to keep
  // them functionally equivalent. Only one of onAttachedToEngine or registerWith will be called
  // depending on the user's project. onAttachedToEngine or registerWith must both be defined
  // in the same class.
  public static void registerWith(Registrar registrar) {
    Messages.Api.setup(registrar.messenger(), new PigeonTourPlugin());
  }

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    Messages.Api.setup(flutterPluginBinding.getBinaryMessenger(), this);
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {

  }

  @Override
  public Messages.SearchReply search(Messages.SearchRequest arg) {
    if (arg != null && "getPlatformVersion".equals(arg.getQuery())) {
      Messages.SearchReply searchReply = new Messages.SearchReply();
      searchReply.setResult("Android " + android.os.Build.VERSION.RELEASE);
      return searchReply;
    } else {
      return null;
    }
  }
}
