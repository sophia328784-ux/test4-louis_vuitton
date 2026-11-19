package com.appsflyer.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1pSDK implements Runnable {
    private final AFc1bSDK AFLogger;
    private final Map<String, Object> d;
    private final AFh1pSDK unregisterClient;

    public AFa1pSDK(AFc1bSDK aFc1bSDK, AFh1pSDK aFh1pSDK, Map<String, ? extends Object> map) {
        aFc1bSDK.getClass();
        aFh1pSDK.getClass();
        this.AFLogger = aFc1bSDK;
        this.unregisterClient = aFh1pSDK;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AFe1ySDK<?> aFf1vSDK;
        AFh1pSDK aFh1pSDK = this.unregisterClient;
        if (aFh1pSDK.v == null && aFh1pSDK.w == null) {
            AFf1uSDK aFf1uSDK = new AFf1uSDK(this.unregisterClient, this.AFLogger);
            aFf1uSDK.v = this.d;
            aFf1vSDK = aFf1uSDK;
        } else {
            aFf1vSDK = aFh1pSDK instanceof AFh1lSDK ? new AFf1vSDK((AFh1lSDK) this.unregisterClient, this.AFLogger) : new AFf1tSDK(this.unregisterClient, this.AFLogger, null, 4, null);
        }
        this.AFLogger.afWarnLog().d(aFf1vSDK);
    }
}
