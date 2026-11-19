package com.appsflyer.internal;

import com.appsflyer.share.AFAdRevenueData;
import com.appsflyer.share.AdRevenueScheme;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1vSDK extends AFf1tSDK {
    private final AFh1lSDK v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1vSDK(AFh1lSDK aFh1lSDK, AFc1bSDK aFc1bSDK) {
        super(aFh1lSDK, aFc1bSDK, null, 4, null);
        aFh1lSDK.getClass();
        aFc1bSDK.getClass();
        this.v = aFh1lSDK;
    }

    @Override // com.appsflyer.internal.AFf1tSDK
    public final void d(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        super.d(aFh1pSDK);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        AFAdRevenueData aFAdRevenueData = this.v.afDebugLog;
        aFAdRevenueData.getClass();
        linkedHashMap.put("monetization_network", aFAdRevenueData.getMonetizationNetwork());
        linkedHashMap.put("event_revenue_currency", aFAdRevenueData.getCurrencyIso4217Code());
        linkedHashMap.put("mediation_network", aFAdRevenueData.getMediationNetwork().getValue());
        linkedHashMap.put("event_revenue", Double.valueOf(aFAdRevenueData.getRevenue()));
        Map<String, Object> map = this.v.AFLoggerLogLevel;
        if (map != null && !map.isEmpty()) {
            List listP = CollectionsKt.P(AdRevenueScheme.AD_TYPE, AdRevenueScheme.AD_UNIT, "country", AdRevenueScheme.PLACEMENT);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (listP.contains(key)) {
                    linkedHashMap.put(key, value);
                } else {
                    linkedHashMap2.put(key, value);
                }
            }
            linkedHashMap.put("custom_parameters", linkedHashMap2);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("name", "adrevenue_sdk");
        linkedHashMap3.put(ConfigurationName.PING_PAYLOAD, linkedHashMap);
        Map<String, Object> map2 = aFh1pSDK.d;
        map2.getClass();
        map2.put("ad_network", linkedHashMap3);
    }
}
