package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1zSDK implements AFj1uSDK {
    public volatile boolean AFLogger;
    private final String d = "DeeplinkProcessedCondition";

    @Override // com.appsflyer.internal.AFj1uSDK
    public final String d() {
        return this.d;
    }

    @Override // com.appsflyer.internal.AFj1uSDK
    public final void registerClient() {
        this.AFLogger = false;
    }

    @Override // com.appsflyer.internal.AFj1uSDK
    public final boolean unregisterClient() {
        return this.AFLogger;
    }
}
