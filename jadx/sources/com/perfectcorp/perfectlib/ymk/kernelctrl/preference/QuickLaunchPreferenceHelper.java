package com.perfectcorp.perfectlib.ymk.kernelctrl.preference;

import com.perfectcorp.common.utility.BasicPreferences;

/* JADX INFO: loaded from: classes3.dex */
public abstract class QuickLaunchPreferenceHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BasicPreferences f42021a = new BasicPreferences("YCMKSDK_ANDROID_QUICK_LAUNCH_SETTING");

    public static String a() {
        return f42021a.getString("SETTING_COUNTRY_CODE", "");
    }

    public static String b() {
        return f42021a.getString("SETTING_LANGUAGE_LOCALE_CODE", "");
    }

    public static void c(String str) {
        f42021a.edit().remove("KEY_BUILT_IN_CONTENT_VERSION").putString("BUILT_IN_CONTENT_VERSION_STRING", str).apply();
    }
}
