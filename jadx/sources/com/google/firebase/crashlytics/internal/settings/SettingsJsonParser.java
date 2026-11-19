package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.SystemCurrentTimeProvider;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsJsonParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SystemCurrentTimeProvider f35055a;

    public SettingsJsonParser(SystemCurrentTimeProvider systemCurrentTimeProvider) {
        this.f35055a = systemCurrentTimeProvider;
    }

    public final Settings a(JSONObject jSONObject) {
        SettingsJsonTransform settingsV3JsonTransform;
        if (jSONObject.getInt("settings_version") != 3) {
            Logger.f34483b.b();
            settingsV3JsonTransform = new DefaultSettingsJsonTransform();
        } else {
            settingsV3JsonTransform = new SettingsV3JsonTransform();
        }
        return settingsV3JsonTransform.a(this.f35055a, jSONObject);
    }
}
