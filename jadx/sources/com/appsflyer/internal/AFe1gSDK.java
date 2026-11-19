package com.appsflyer.internal;

import com.appsflyer.PurchaseHandler;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1gSDK extends AFe1rSDK {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1gSDK(Map<String, ? extends Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback, AFc1bSDK aFc1bSDK) {
        super(AFd1bSDK.PURCHASE_VALIDATE, new AFe1zSDK[]{AFd1bSDK.RC_CDN, AFd1bSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, map, purchaseValidationCallback);
        map.getClass();
        aFc1bSDK.getClass();
        AFd1bSDK aFd1bSDK = AFd1bSDK.CONVERSION;
        aFd1bSDK.getClass();
        this.AFKeystoreWrapper.add(aFd1bSDK);
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final AFd1pSDK<String> d(Map<String, Object> map, String str) {
        map.getClass();
        str.getClass();
        return getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String().unregisterClient(map, str);
    }
}
