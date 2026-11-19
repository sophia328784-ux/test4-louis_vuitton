package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1bSDK {
    private static String AFLogger(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (i2 == 0 || i2 == str.length() - 1) {
                sb.append(str.charAt(i2));
            } else {
                sb.append(Browse.CAPS_WILDCARD);
            }
        }
        return sb.toString();
    }

    public static void registerClient(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has("appsflyerKey")) {
                    jSONObject.put("appsflyerKey", AFLogger(jSONObject.getString("appsflyerKey")));
                }
                if (jSONObject.has("tcstring")) {
                    jSONObject.put("tcstring", unregisterClient("tcstring"));
                }
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.OTHER;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(jSONObject);
                aFLogger.i(logTag, sb.toString());
            } catch (JSONException e2) {
                AFLogger.INSTANCE.e(LogTag.OTHER, "Not able to log the payload", e2);
            }
        }
    }

    public static String unregisterClient(String str) {
        return str.length() > 20 ? str.substring(0, 10).concat("...") : str;
    }
}
