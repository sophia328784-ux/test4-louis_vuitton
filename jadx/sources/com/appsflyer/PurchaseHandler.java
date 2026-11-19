package com.appsflyer;

import com.appsflyer.internal.AFc1bSDK;
import com.appsflyer.internal.AFc1iSDK;
import com.appsflyer.internal.AFe1wSDK;
import com.appsflyer.internal.AFj1nSDK;
import com.appsflyer.share.network.http.ResponseNetwork;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PurchaseHandler {
    public final AFc1bSDK AFKeystoreWrapper;
    private final AFc1iSDK registerClient;
    public final AFe1wSDK unregisterClient;

    public interface PurchaseValidationCallback {
        void onFailure(Throwable th);

        void onResponse(ResponseNetwork<String> responseNetwork);
    }

    public PurchaseHandler(AFc1bSDK aFc1bSDK) {
        this.AFKeystoreWrapper = aFc1bSDK;
        this.registerClient = aFc1bSDK.AFLogger();
        this.unregisterClient = aFc1bSDK.afWarnLog();
    }

    public final boolean registerClient(Map<String, Object> map, PurchaseValidationCallback purchaseValidationCallback, String... strArr) {
        boolean zAFLogger = AFj1nSDK.AFLogger(map, strArr, this.registerClient);
        if (!zAFLogger && purchaseValidationCallback != null) {
            purchaseValidationCallback.onFailure(new IllegalArgumentException("Invalid Request Data"));
        }
        return zAFLogger;
    }
}
