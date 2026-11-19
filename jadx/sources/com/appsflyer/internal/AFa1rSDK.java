package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.LogTag;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1rSDK {
    public static JSONObject AFKeystoreWrapper(String str, AppsFlyerProperties appsFlyerProperties) {
        JSONObject jSONObjectRegisterClient = AFg1dSDK.registerClient(str);
        if (jSONObjectRegisterClient != null) {
            try {
                if (jSONObjectRegisterClient.has("ol_id")) {
                    String strOptString = jSONObjectRegisterClient.optString("ol_scheme", null);
                    String strOptString2 = jSONObjectRegisterClient.optString("ol_domain", null);
                    String strOptString3 = jSONObjectRegisterClient.optString("ol_ver", null);
                    if (strOptString != null) {
                        appsFlyerProperties.set(AppsFlyerProperties.ONELINK_SCHEME, strOptString);
                    }
                    if (strOptString2 != null) {
                        appsFlyerProperties.set(AppsFlyerProperties.ONELINK_DOMAIN, strOptString2);
                    }
                    if (strOptString3 != null) {
                        appsFlyerProperties.set(AppsFlyerProperties.ONELINK_VERSION, strOptString3);
                        return jSONObjectRegisterClient;
                    }
                }
            } catch (Throwable th) {
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.GENERAL;
                StringBuilder sb = new StringBuilder("Error in handleResponse: ");
                sb.append(th.getMessage());
                aFLogger.e(logTag, sb.toString(), th, false, false);
                AFa1tSDK.d().AFKeystoreWrapper.AFLoggerLogLevel().registerClient();
                AFa1tSDK.d().AFKeystoreWrapper.AFLoggerLogLevel().d();
            }
        }
        return jSONObjectRegisterClient;
    }
}
