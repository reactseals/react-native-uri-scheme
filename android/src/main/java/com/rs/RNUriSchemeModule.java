package com.rs;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;
import android.util.Log;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.HashMap;
import java.util.Map;

public class RNUriSchemeModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNUriSchemeModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNUriScheme";
  }

  @Override
  public @Nullable
  Map<String, Object> getConstants() {
    HashMap<String, Object> constants = new HashMap<String, Object>();
    PackageManager packageManager = this.reactContext.getPackageManager();
    String packageName = this.reactContext.getPackageName();

    try {
      ApplicationInfo ai = packageManager.getApplicationInfo(packageName, PackageManager.GET_META_DATA);
      constants.put("uriScheme", ai.metaData.getString("uriScheme"));
    } catch (Exception e) {
      Log.e("URI_SCHEME", e.getMessage());
    }

    return constants;
  }
}
