package com.appsflyer.internal;

import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class AFf1xSDK {
    final AFh1dSDK AFKeystoreWrapper;
    final String AFLogger;
    final AFd1fSDK<?> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f22641e;
    final long registerClient;
    final AFh1aSDK unregisterClient;
    final Throwable v;

    public AFf1xSDK(String str, long j2, AFd1fSDK<?> aFd1fSDK, AFh1aSDK aFh1aSDK, AFh1dSDK aFh1dSDK, String str2, Throwable th) {
        str.getClass();
        this.AFLogger = str;
        this.registerClient = j2;
        this.d = aFd1fSDK;
        this.unregisterClient = aFh1aSDK;
        this.AFKeystoreWrapper = aFh1dSDK;
        this.f22641e = str2;
        this.v = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1xSDK)) {
            return false;
        }
        AFf1xSDK aFf1xSDK = (AFf1xSDK) obj;
        return Intrinsics.c(this.AFLogger, aFf1xSDK.AFLogger) && this.registerClient == aFf1xSDK.registerClient && Intrinsics.c(this.d, aFf1xSDK.d) && Intrinsics.c(this.unregisterClient, aFf1xSDK.unregisterClient) && this.AFKeystoreWrapper == aFf1xSDK.AFKeystoreWrapper && Intrinsics.c(this.f22641e, aFf1xSDK.f22641e) && Intrinsics.c(this.v, aFf1xSDK.v);
    }

    public final int hashCode() {
        int iA = fc.a(this.AFLogger.hashCode() * 31, 31, this.registerClient);
        AFd1fSDK<?> aFd1fSDK = this.d;
        int iHashCode = (iA + (aFd1fSDK == null ? 0 : aFd1fSDK.hashCode())) * 31;
        AFh1aSDK aFh1aSDK = this.unregisterClient;
        int iHashCode2 = (iHashCode + (aFh1aSDK == null ? 0 : aFh1aSDK.hashCode())) * 31;
        AFh1dSDK aFh1dSDK = this.AFKeystoreWrapper;
        int iHashCode3 = (iHashCode2 + (aFh1dSDK == null ? 0 : aFh1dSDK.hashCode())) * 31;
        String str = this.f22641e;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Throwable th = this.v;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "SaveMetadataParams(cdnToken=" + this.AFLogger + ", updateStartTime=" + this.registerClient + ", response=" + this.d + ", config=" + this.unregisterClient + ", signatureStatus=" + this.AFKeystoreWrapper + ", cdnCacheStatus=" + this.f22641e + ", error=" + this.v + ")";
    }
}
