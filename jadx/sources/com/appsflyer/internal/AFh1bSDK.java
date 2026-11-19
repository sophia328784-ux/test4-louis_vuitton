package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1bSDK {
    public final String AFKeystoreWrapper;
    public final long AFLogger;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f22651e;
    public final AFh1dSDK force;
    public final int registerClient;
    public final long unregisterClient;
    public final String w;

    public AFh1bSDK(String str, String str2, long j2, long j3, int i2, AFh1dSDK aFh1dSDK, String str3, Throwable th) {
        this.d = str;
        this.AFKeystoreWrapper = str2;
        this.AFLogger = j2;
        this.unregisterClient = j3;
        this.registerClient = i2;
        this.force = aFh1dSDK;
        this.w = str3;
        this.f22651e = th;
    }
}
