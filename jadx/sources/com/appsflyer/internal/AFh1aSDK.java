package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1aSDK {
    public final String AFKeystoreWrapper;
    private final boolean AFLogger;
    public final String d;
    public final AFh1gSDK registerClient;
    public final AFh1iSDK unregisterClient;

    public AFh1aSDK(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Failed to parse remote configuration JSON: originalJson is null");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("ver");
            this.AFKeystoreWrapper = string;
            this.AFLogger = jSONObject.optBoolean("test_mode");
            this.d = str;
            this.unregisterClient = string.startsWith("default") ? AFh1iSDK.DEFAULT : AFh1iSDK.CUSTOM;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("features");
            this.registerClient = jSONObjectOptJSONObject != null ? new AFh1gSDK(jSONObjectOptJSONObject) : null;
        } catch (JSONException e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Error parsing remote configuration JSON", e2, false, false);
            throw new JSONException("Failed to parse remote configuration JSON");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AFh1aSDK.class != obj.getClass()) {
            return false;
        }
        AFh1aSDK aFh1aSDK = (AFh1aSDK) obj;
        if (this.AFLogger == aFh1aSDK.AFLogger && this.AFKeystoreWrapper.equals(aFh1aSDK.AFKeystoreWrapper)) {
            return this.d.equals(aFh1aSDK.d);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.d.hashCode() + ((this.AFKeystoreWrapper.hashCode() + ((this.AFLogger ? 1 : 0) * 31)) * 31);
        AFh1gSDK aFh1gSDK = this.registerClient;
        if (aFh1gSDK == null) {
            return iHashCode;
        }
        return aFh1gSDK.hashCode() + (iHashCode * 31);
    }
}
