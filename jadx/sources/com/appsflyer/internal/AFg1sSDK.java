package com.appsflyer.internal;

import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1sSDK {
    public final String AFKeystoreWrapper;
    public final boolean AFLogger;
    public final long unregisterClient;

    public AFg1sSDK(String str, long j2, boolean z) {
        str.getClass();
        this.AFKeystoreWrapper = str;
        this.unregisterClient = j2;
        this.AFLogger = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFg1sSDK)) {
            return false;
        }
        AFg1sSDK aFg1sSDK = (AFg1sSDK) obj;
        return Intrinsics.c(this.AFKeystoreWrapper, aFg1sSDK.AFKeystoreWrapper) && this.unregisterClient == aFg1sSDK.unregisterClient && this.AFLogger == aFg1sSDK.AFLogger;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.AFLogger) + fc.a(this.AFKeystoreWrapper.hashCode() * 31, 31, this.unregisterClient);
    }

    public final String toString() {
        return "AFUninstallToken(token=" + this.AFKeystoreWrapper + ", receivedTime=" + this.unregisterClient + ", isQueued=" + this.AFLogger + ")";
    }
}
