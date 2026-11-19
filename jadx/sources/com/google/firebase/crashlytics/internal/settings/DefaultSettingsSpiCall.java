package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.network.HttpGetRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.md;
import java.util.HashMap;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes2.dex */
class DefaultSettingsSpiCall implements SettingsSpiCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HttpRequestFactory f35034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f35035c;

    public DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory) {
        Logger logger = Logger.f34483b;
        if (str == null) {
            md.n("url must not be null.");
            throw null;
        }
        this.f35035c = logger;
        this.f35034b = httpRequestFactory;
        this.f35033a = str;
    }

    public static void a(HttpGetRequest httpGetRequest, SettingsRequest settingsRequest) {
        String str = settingsRequest.f35056a;
        if (str != null) {
            httpGetRequest.c("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        }
        httpGetRequest.c("X-CRASHLYTICS-API-CLIENT-TYPE", ReferenceApiV3ConstKt.OS_NAME);
        httpGetRequest.c("X-CRASHLYTICS-API-CLIENT-VERSION", "20.1.0");
        httpGetRequest.c(LVConstants.LV_JSON_KEY, InitUrlConnection.CONTENT_TYPE_VALUE);
        String str2 = settingsRequest.f35057b;
        if (str2 != null) {
            httpGetRequest.c("X-CRASHLYTICS-DEVICE-MODEL", str2);
        }
        String str3 = settingsRequest.f35058c;
        if (str3 != null) {
            httpGetRequest.c("X-CRASHLYTICS-OS-BUILD-VERSION", str3);
        }
        String str4 = settingsRequest.d;
        if (str4 != null) {
            httpGetRequest.c("X-CRASHLYTICS-OS-DISPLAY-VERSION", str4);
        }
        String strA = settingsRequest.f35059e.a().a();
        if (strA != null) {
            httpGetRequest.c("X-CRASHLYTICS-INSTALLATION-ID", strA);
        }
    }

    public static HashMap b(SettingsRequest settingsRequest) {
        HashMap map = new HashMap();
        map.put("build_version", settingsRequest.f35061h);
        map.put("display_version", settingsRequest.g);
        map.put(Payload.SOURCE, Integer.toString(settingsRequest.f35062i));
        String str = settingsRequest.f35060f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }
}
