package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1vSDK implements AppsFlyerProperties {
    private final AFc1kSDK AFLogger;
    private final Map<String, Object> d;
    private boolean registerClient;

    public AFa1vSDK(AFc1kSDK aFc1kSDK) {
        aFc1kSDK.getClass();
        this.AFLogger = aFc1kSDK;
        this.d = new LinkedHashMap();
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void clear() {
        this.d.clear();
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final boolean getBoolean(String str, boolean z) {
        String string = getString(str);
        return string != null ? Boolean.parseBoolean(string) : z;
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final int getInt(String str, int i2) {
        String string = getString(str);
        return string != null ? Integer.parseInt(string) : i2;
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final long getLong(String str, long j2) {
        String string = getString(str);
        return string != null ? Long.parseLong(string) : j2;
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized String getString(String str) {
        Object obj = this.d.get(str);
        if (!(obj instanceof String)) {
            return null;
        }
        return (String) obj;
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void loadProperties() {
        try {
            if (this.registerClient) {
                return;
            }
            String strD = this.AFLogger.d("savedProperties");
            if (strD == null) {
                return;
            }
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.PREFERENCES, "Loading properties..", false, 4, null);
            try {
                JSONObject jSONObject = new JSONObject(strD);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (this.d.get(next) == null) {
                        this.d.put(next, jSONObject.getString(next));
                    }
                }
                String[] strArr = {"AppsFlyerKey", "custom_host", "custom_host_prefix", "advertiserIdEnabled", "advertiserId"};
                for (int i2 = 0; i2 < 5; i2++) {
                    this.d.remove(strArr[i2]);
                }
                saveProperties();
                this.registerClient = true;
            } catch (JSONException e2) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.PREFERENCES, "Failed loading properties", e2, false, false, false, false, 120, null);
            }
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.PREFERENCES, "Done loading properties: " + this.registerClient, false, 4, null);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void remove(String str) {
        this.d.remove(str);
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void saveProperties() {
        this.d.remove("AppsFlyerKey");
        this.AFLogger.d("savedProperties", new JSONObject(this.d).toString());
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void set(String str, int i2) {
        this.d.put(str, String.valueOf(i2));
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void set(String str, String[] strArr) {
        this.d.put(str, strArr);
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void set(String str, String str2) {
        this.d.put(str, str2);
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void set(String str, long j2) {
        this.d.put(str, String.valueOf(j2));
    }

    @Override // com.appsflyer.AppsFlyerProperties
    public final synchronized void set(String str, boolean z) {
        this.d.put(str, String.valueOf(z));
    }
}
