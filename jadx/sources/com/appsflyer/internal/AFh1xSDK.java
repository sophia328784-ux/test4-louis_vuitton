package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.deeplink.DeepLinkResult;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1xSDK {
    public final AFc1kSDK AFKeystoreWrapper;
    public long afInfoLog;
    public final AFc1iSDK unregisterClient;
    public final Map<String, Object> d = new ConcurrentHashMap();
    public final Map<String, Object> registerClient = new ConcurrentHashMap();
    public final Map<String, Object> AFLogger = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f22658i = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f22657e = 0;
    public final long[] force = new long[2];
    public final long[] v = new long[2];
    public final long[] w = new long[2];
    public long afErrorLog = 0;
    public long afDebugLog = 0;

    public AFh1xSDK(AFc1kSDK aFc1kSDK, AFc1iSDK aFc1iSDK) {
        this.AFKeystoreWrapper = aFc1kSDK;
        this.unregisterClient = aFc1iSDK;
    }

    public final void AFLogger() {
        this.f22657e = System.currentTimeMillis();
        if (this.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 0) {
            long j2 = this.f22658i;
            if (j2 == 0) {
                AFLogger.INSTANCE.i(LogTag.GENERAL, "Metrics collection skipped: initialization timestamp not recorded");
                return;
            }
            this.d.put("init_to_fg", Long.valueOf(this.f22657e - j2));
            this.AFKeystoreWrapper.d("first_launch", new JSONObject(this.d).toString());
        }
    }

    public final void registerClient(DeepLinkResult deepLinkResult, long j2) {
        this.registerClient.put("status", deepLinkResult.getStatus().toString());
        this.registerClient.put("timeout_value", Long.valueOf(j2));
    }

    public final void unregisterClient(AFh1uSDK aFh1uSDK) {
        if (this.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 0) {
            this.d.put("api_name", aFh1uSDK.toString());
            this.AFKeystoreWrapper.d("first_launch", new JSONObject(this.d).toString());
        }
    }

    public final void AFLogger(int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.afDebugLog;
        if (j2 != 0) {
            this.AFLogger.put("net", Long.valueOf(jCurrentTimeMillis - j2));
        } else {
            AFLogger.INSTANCE.i(LogTag.GENERAL, "Metrics collection skipped: GCD start timestamp not recorded");
        }
        this.AFLogger.put("retries", Integer.valueOf(i2));
        this.AFKeystoreWrapper.d("gcd", new JSONObject(this.AFLogger).toString());
    }

    public final Map<String, Object> AFLogger(String str) {
        Map<String, Object> map = Collections.EMPTY_MAP;
        String strD = this.AFKeystoreWrapper.d(str);
        if (strD != null) {
            try {
                return AFg1dSDK.unregisterClient(new JSONObject(strD));
            } catch (Exception e2) {
                AFLogger.INSTANCE.e(LogTag.GENERAL, "Error while parsing cached JSON data for metrics", e2);
            }
        }
        return map;
    }
}
