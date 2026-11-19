package com.batch.android.h;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public enum d {
    APP_BUNDLE_ID("bid", "app_bundle_id"),
    DEVICE_TIMEZONE("dtz", "device_timezone"),
    FIRST_INSTALL_DATE("fda", "first_installation_date"),
    LAST_UPDATE_DATE("lda", "last_installation_date"),
    DEVICE_BRAND("brd", "device_brand"),
    OS_SDK_LEVEL("sdk", "os_sdk_level"),
    DEVICE_MODEL("dty", Payload.DEVICE_MODEL),
    DEVICE_LANGUAGE("dla", "device_language"),
    DEVICE_REGION("dre", "device_region"),
    DEVICE_CURRENT_DATE("da", null),
    INSTALL_ID("di", null),
    DEVICE_INSTALL_DATE("did", "device_installation_date"),
    SESSION_ID(NBSSpanMetricUnit.Second, null),
    APPLICATION_VERSION("apv", "app_version"),
    APPLICATION_CODE("apc", "app_build_number"),
    OS_VERSION("osv", "os_version"),
    SDK_API_LEVEL("lvl", "sdk_api_level"),
    SDK_MESSAGING_API_LEVEL("mlvl", "sdk_m_api_level"),
    CUSTOM_USER_ID("cus", null),
    BRIDGE_VERSION("brv", "bridge_version"),
    PLUGIN_VERSION("plv", "plugin_version");


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f23447c;

    d(String str, String str2) {
        this.f23446b = str;
        this.f23447c = str2;
    }

    public static d a(String str) {
        if (str != null) {
            for (d dVar : values()) {
                if (dVar.f23446b.equalsIgnoreCase(str)) {
                    return dVar;
                }
            }
            md.k("No system parameter found for short name : ".concat(str));
            return null;
        }
        r81.d("Null short name");
        return null;
    }
}
