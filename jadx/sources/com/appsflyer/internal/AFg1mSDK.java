package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.AFInAppEventParameterName;
import com.appsflyer.share.AppsFlyerConversionListener;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.appsflyer.share.network.http.ResponseNetwork;
import defpackage.fc;
import defpackage.tr;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1mSDK extends AFe1kSDK<Map<String, ? extends Object>> {
    private final AppsFlyerConversionListener AFLoggerLogLevel;
    private final AFh1xSDK afDebugLog;
    private String afInfoLog;
    private Map<String, ? extends Object> afWarnLog;
    private final AFc1iSDK force;
    private final AFc1kSDK v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFg1mSDK(AFc1bSDK aFc1bSDK) {
        super(AFd1bSDK.GCDSDK, new AFe1zSDK[]{AFd1bSDK.RC_CDN}, aFc1bSDK, "GCD-FETCH");
        aFc1bSDK.getClass();
        AFc1iSDK aFc1iSDKAFLogger = aFc1bSDK.AFLogger();
        aFc1iSDKAFLogger.getClass();
        this.force = aFc1iSDKAFLogger;
        AFc1kSDK aFc1kSDKAFKeystoreWrapper = aFc1bSDK.AFKeystoreWrapper();
        aFc1kSDKAFKeystoreWrapper.getClass();
        this.v = aFc1kSDKAFKeystoreWrapper;
        AFh1xSDK aFh1xSDKE = aFc1bSDK.e();
        aFh1xSDKE.getClass();
        this.afDebugLog = aFh1xSDKE;
        this.AFLoggerLogLevel = aFc1bSDK.setUserFirstName();
        AFd1bSDK aFd1bSDK = AFd1bSDK.CONVERSION;
        aFd1bSDK.getClass();
        this.AFKeystoreWrapper.add(aFd1bSDK);
        AFd1bSDK aFd1bSDK2 = AFd1bSDK.LAUNCH;
        aFd1bSDK2.getClass();
        this.AFKeystoreWrapper.add(aFd1bSDK2);
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<Map<String, ? extends Object>> AFLogger(String str) {
        str.getClass();
        AFc1kSDK aFc1kSDK = this.v;
        String strAFLogger = this.force.AFLogger("CHANNEL");
        String strConcat = "";
        if (strAFLogger != null && strAFLogger.equals("")) {
            strAFLogger = null;
        }
        String strD = AFa1tSDK.d(aFc1kSDK, strAFLogger);
        if (strD != null && !StringsKt.w(strD)) {
            List list = AFg1jSDK.AFKeystoreWrapper;
            Locale locale = Locale.ROOT;
            locale.getClass();
            String lowerCase = strD.toLowerCase(locale);
            lowerCase.getClass();
            if (list.contains(lowerCase)) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, fc.h("[GCD] AF detected using redundant Google-Play channel for attribution - ", strD, ". Using without channel postfix."), false, 4, null);
            } else {
                strConcat = "-".concat(strD);
            }
        }
        AFd1pSDK<Map<String, ? extends Object>> aFd1pSDKAFKeystoreWrapper = getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String().AFKeystoreWrapper(strConcat, str);
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, tr.g("[GCD-B01] URL: ", aFd1pSDKAFKeystoreWrapper.unregisterClient.d), false, 4, null);
        return aFd1pSDKAFKeystoreWrapper;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final /* bridge */ /* synthetic */ AppsFlyerRequestListener afWarnLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean e() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final void force() {
        super.force();
        Map<String, ? extends Object> map = this.afWarnLog;
        if (map != null) {
            AFg1kSDK.d(map, this.AFLoggerLogLevel);
            return;
        }
        String str = this.afInfoLog;
        if (str == null || str.length() == 0) {
            str = null;
        }
        if (str == null) {
            str = "Unknown error";
        }
        AFg1kSDK.registerClient(str, this.AFLoggerLogLevel);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Code duplicated, block: B:80:0x012f A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final AFd1cSDK registerClient() {
        AFd1cSDK aFd1cSDK;
        String str;
        AFh1xSDK aFh1xSDK;
        if (getUnregisterClient().AFLogger()) {
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-E03] 'isStopTracking' enabled", false, 4, null);
            this.afInfoLog = "'isStopTracking' enabled";
            throw new AFe1qSDK();
        }
        int i2 = 0;
        while (i2 < 3) {
            boolean z = i2 == 2;
            this.afDebugLog.afDebugLog = System.currentTimeMillis();
            try {
                try {
                    super.registerClient();
                    ResponseNetwork responseNetwork = ((AFe1kSDK) this).v;
                    if (responseNetwork != null) {
                        int statusCode = responseNetwork.getStatusCode();
                        boolean z2 = statusCode == 403 || statusCode >= 500;
                        if (responseNetwork.isSuccessful() || statusCode == 404) {
                            Object body = responseNetwork.getBody();
                            body.getClass();
                            Map<String, ? extends Object> mapC = TypeIntrinsics.c(body);
                            if (responseNetwork.getStatusCode() == 404) {
                                mapC.remove("error_reason");
                                mapC.remove("status_code");
                                mapC.put("af_status", "Organic");
                                mapC.put("af_message", "organic install");
                            }
                            Object obj = mapC.get("iscache");
                            Boolean bool = Boolean.FALSE;
                            if (Intrinsics.c(obj, bool)) {
                                this.v.AFLogger("appsflyerConversionDataCacheExpiration", System.currentTimeMillis());
                            }
                            if (mapC.containsKey("af_siteid")) {
                                if (mapC.containsKey(AFInAppEventParameterName.AF_CHANNEL)) {
                                    str = "[Invite] Detected App-Invite via channel: " + mapC.get(AFInAppEventParameterName.AF_CHANNEL);
                                } else {
                                    str = String.format("[CrossPromotion] App was installed via %s's Cross Promotion", Arrays.copyOf(new Object[]{mapC.get("af_siteid")}, 1));
                                }
                                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, str, false, 4, null);
                            }
                            mapC.put("is_first_launch", bool);
                            this.v.d("attributionId", new JSONObject(mapC).toString());
                            if (!this.v.AFKeystoreWrapper("sixtyDayConversionData")) {
                                mapC.put("is_first_launch", Boolean.TRUE);
                            }
                            this.afWarnLog = mapC;
                            aFd1cSDK = AFd1cSDK.SUCCESS;
                        } else if (z || !z2) {
                            this.afInfoLog = "Error connection to server: " + statusCode;
                            aFd1cSDK = AFd1cSDK.FAILURE;
                        }
                        aFh1xSDK = this.afDebugLog;
                        if (aFd1cSDK == null) {
                            aFh1xSDK.AFLogger(i2);
                            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                            return aFd1cSDK;
                        }
                        aFh1xSDK.AFLogger(i2);
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                        i2++;
                    }
                    aFd1cSDK = null;
                    aFh1xSDK = this.afDebugLog;
                    if (aFd1cSDK == null) {
                        aFh1xSDK.AFLogger(i2);
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                        return aFd1cSDK;
                    }
                    aFh1xSDK.AFLogger(i2);
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                    i2++;
                } catch (AFe1uSDK e2) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-E05] AppsFlyer dev key is missing", false, 4, null);
                    this.afInfoLog = "AppsFlyer dev key is missing";
                    throw e2;
                } catch (Exception e3) {
                    AFLogger aFLogger = AFLogger.INSTANCE;
                    LogTag logTag = LogTag.GCD;
                    String message = e3.getMessage();
                    if (message == null) {
                        message = "unknown error during GCD fetch";
                    }
                    AFLoggerBase.e$default(aFLogger, logTag, "[GCD] Error: " + message, e3, true, false, false, false, 64, null);
                    if (z) {
                        this.afInfoLog = e3.getMessage();
                        throw e3;
                    }
                    this.afDebugLog.AFLogger(i2);
                    AFLoggerBase.d$default(aFLogger, logTag, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                }
            } catch (Throwable th) {
                this.afDebugLog.AFLogger(i2);
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A03] Server retrieving attempt finished", false, 4, null);
                throw th;
            }
        }
        return AFd1cSDK.FAILURE;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        return false;
    }
}
