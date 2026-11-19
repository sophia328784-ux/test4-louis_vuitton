package com.appsflyer.internal;

import com.appsflyer.share.AppsFlyerConsent;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1gSDK implements AFf1eSDK {
    private final AFc1eSDK AFLogger;
    private final AFg1xSDK d;

    public AFf1gSDK(AFg1xSDK aFg1xSDK, AFc1eSDK aFc1eSDK) {
        aFg1xSDK.getClass();
        aFc1eSDK.getClass();
        this.d = aFg1xSDK;
        this.AFLogger = aFc1eSDK;
    }

    @Override // com.appsflyer.internal.AFf1eSDK
    public final void d(Map<String, Object> map, AFe1zSDK aFe1zSDK) {
        map.getClass();
        aFe1zSDK.getClass();
        AFg1ySDK aFg1ySDKRegisterClient = this.d.registerClient();
        AppsFlyerConsent appsFlyerConsent = this.AFLogger.setImeiData;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (appsFlyerConsent != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Boolean boolIsUserSubjectToGDPR = appsFlyerConsent.isUserSubjectToGDPR();
            if (boolIsUserSubjectToGDPR != null) {
                linkedHashMap2.put("gdpr_applies", boolIsUserSubjectToGDPR);
            }
            Boolean hasConsentForDataUsage = appsFlyerConsent.getHasConsentForDataUsage();
            if (hasConsentForDataUsage != null) {
                linkedHashMap2.put("ad_user_data_enabled", hasConsentForDataUsage);
            }
            Boolean hasConsentForAdsPersonalization = appsFlyerConsent.getHasConsentForAdsPersonalization();
            if (hasConsentForAdsPersonalization != null) {
                linkedHashMap2.put("ad_personalization_enabled", hasConsentForAdsPersonalization);
            }
            Boolean hasConsentForAdStorage = appsFlyerConsent.getHasConsentForAdStorage();
            if (hasConsentForAdStorage != null) {
                linkedHashMap2.put("ad_storage_enabled", hasConsentForAdStorage);
            }
            linkedHashMap.put("manual", linkedHashMap2);
        }
        if (aFg1ySDKRegisterClient != null) {
            boolean z = appsFlyerConsent != null;
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("policy_version", Integer.valueOf(aFg1ySDKRegisterClient.unregisterClient));
            linkedHashMap3.put("cmp_sdk_id", Integer.valueOf(aFg1ySDKRegisterClient.registerClient));
            linkedHashMap3.put("cmp_sdk_version", Integer.valueOf(aFg1ySDKRegisterClient.AFLogger));
            if (z) {
                linkedHashMap3.put("gdpr_applies", -1);
                linkedHashMap3.put("tcstring", "");
            } else {
                linkedHashMap3.put("gdpr_applies", Integer.valueOf(aFg1ySDKRegisterClient.d));
                linkedHashMap3.put("tcstring", aFg1ySDKRegisterClient.AFKeystoreWrapper);
            }
            linkedHashMap.put("tcf", linkedHashMap3);
        }
        if (!linkedHashMap.isEmpty()) {
            map.put("consent_data", linkedHashMap);
        }
        if (aFe1zSDK != AFd1bSDK.CONVERSION || this.AFLogger.afDebugLog == null) {
            return;
        }
        AFj1iSDK.AFLogger(map).put("api", MapsKt.h(new Pair("enableTCFDataCollection", this.AFLogger.afDebugLog)));
    }
}
