package com.appsflyer.internal;

import android.os.Build;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AFe1lSDK extends AFe1kSDK<String> {
    private final AFf1eSDK AFLoggerLogLevel;
    private final AFc1eSDK afDebugLog;
    private final AFg1rSDK afInfoLog;
    private final AFc1iSDK afWarnLog;
    private final AFe1zSDK force;
    private final Map<String, Object> v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1lSDK(AFe1zSDK aFe1zSDK, AFe1zSDK[] aFe1zSDKArr, AFc1bSDK aFc1bSDK, String str, Map<String, ? extends Object> map) {
        super(aFe1zSDK, aFe1zSDKArr, aFc1bSDK, null);
        aFe1zSDK.getClass();
        aFe1zSDKArr.getClass();
        aFc1bSDK.getClass();
        map.getClass();
        this.force = aFe1zSDK;
        this.v = map;
        AFc1iSDK aFc1iSDKAFLogger = aFc1bSDK.AFLogger();
        aFc1iSDKAFLogger.getClass();
        this.afWarnLog = aFc1iSDKAFLogger;
        AFg1rSDK aFg1rSDKForce = aFc1bSDK.force();
        aFg1rSDKForce.getClass();
        this.afInfoLog = aFg1rSDKForce;
        AFf1eSDK oaidData = aFc1bSDK.setOaidData();
        oaidData.getClass();
        this.AFLoggerLogLevel = oaidData;
        AFc1eSDK androidIdData = aFc1bSDK.setAndroidIdData();
        androidIdData.getClass();
        this.afDebugLog = androidIdData;
    }

    public String AFKeystoreWrapper(Map<String, Object> map) {
        map.getClass();
        return null;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<String> AFLogger(String str) {
        AFd1oSDK aFd1oSDK;
        str.getClass();
        Map<String, Object> mapR = MapsKt.r(this.v);
        String strRegisterClient = registerClient(mapR);
        String strAFKeystoreWrapper = AFKeystoreWrapper(mapR);
        Map<String, Object> linkedHashMap = new LinkedHashMap<>(mapR);
        registerClient(linkedHashMap, strRegisterClient);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String strAFLogger = this.afWarnLog.AFLogger();
        if (strAFLogger != null && !StringsKt.w(strAFLogger)) {
            linkedHashMap2.put("advertising_id", strAFLogger);
        }
        AFb1lSDK aFb1lSDKUnregisterClient = AFb1iSDK.unregisterClient(this.afWarnLog.d.d);
        String str2 = null;
        String str3 = aFb1lSDKUnregisterClient != null ? aFb1lSDKUnregisterClient.d : null;
        if (str3 != null && !StringsKt.w(str3)) {
            linkedHashMap2.put("oaid", str3);
        }
        AFb1lSDK aFb1lSDKH_ = AFb1iSDK.h_(this.afWarnLog.d.d.getContentResolver());
        String str4 = aFb1lSDKH_ != null ? aFb1lSDKH_.d : null;
        if (str4 != null && !StringsKt.w(str4)) {
            linkedHashMap2.put("amazon_aid", str4);
        }
        AFc1eSDK aFc1eSDK = this.afDebugLog;
        if (aFc1eSDK.afInfoLog) {
            linkedHashMap.put("deviceTrackingDisabled", "true");
        } else {
            String str5 = aFc1eSDK.AFLoggerLogLevel;
            if (str5 != null && !StringsKt.w(str5)) {
                linkedHashMap2.put("imei", str5);
            }
        }
        String strAFLogger2 = AFb1jSDK.AFLogger(this.afWarnLog.AFKeystoreWrapper);
        if (strAFLogger2 == null) {
            strAFLogger2 = "";
        }
        linkedHashMap2.put("appsflyer_id", strAFLogger2);
        linkedHashMap2.put("os_version", String.valueOf(Build.VERSION.SDK_INT));
        linkedHashMap2.put("sdk_version", "7.0.1");
        if (strAFKeystoreWrapper != null && !StringsKt.w(strAFKeystoreWrapper)) {
            linkedHashMap2.put("sdk_connector_version", strAFKeystoreWrapper);
        }
        this.afInfoLog.unregisterClient(linkedHashMap2, this.force);
        linkedHashMap.put("device_data", linkedHashMap2);
        this.AFLoggerLogLevel.d(linkedHashMap, this.force);
        this.afInfoLog.unregisterClient(linkedHashMap);
        AFd1pSDK<String> aFd1pSDKD = d(linkedHashMap, str);
        if (aFd1pSDKD != null && (aFd1oSDK = aFd1pSDKD.unregisterClient) != null) {
            str2 = aFd1oSDK.d;
        }
        if (str2 != null) {
            JSONObject jSONObject = new JSONObject(linkedHashMap);
            AFg1bSDK.registerClient(this + ": preparing data: ", jSONObject);
            AFd1uSDK aFKeystoreWrapper = getAFKeystoreWrapper();
            String string = jSONObject.toString();
            string.getClass();
            aFKeystoreWrapper.AFKeystoreWrapper(str2, string);
        }
        return aFd1pSDKD;
    }

    public boolean AFLoggerLogLevel() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AppsFlyerRequestListener afWarnLog() {
        return null;
    }

    public abstract AFd1pSDK<String> d(Map<String, Object> map, String str);

    public void registerClient(Map<String, Object> map, String str) {
        map.getClass();
        map.put("app_id", this.afWarnLog.d.d.getPackageName());
        String str2 = this.afWarnLog.registerClient.valueOf;
        if (str2 != null) {
            map.put("cuid", str2);
        }
        map.put("app_version_name", this.afWarnLog.r_().versionName);
        if (AFLoggerLogLevel()) {
            map.put("event_timestamp", Long.valueOf(this.afInfoLog.unregisterClient()));
        }
        if (str != null) {
            map.put("billing_lib_version", str);
        }
    }

    public String registerClient(Map<String, Object> map) {
        map.getClass();
        return null;
    }
}
