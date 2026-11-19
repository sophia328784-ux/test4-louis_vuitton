package com.appsflyer.internal;

import defpackage.d21;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1gSDK {
    final String AFLogger;
    final String registerClient;

    public AFd1gSDK(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.registerClient = str;
        this.AFLogger = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFd1gSDK)) {
            return false;
        }
        AFd1gSDK aFd1gSDK = (AFd1gSDK) obj;
        return Intrinsics.c(this.registerClient, aFd1gSDK.registerClient) && Intrinsics.c(this.AFLogger, aFd1gSDK.AFLogger);
    }

    public final int hashCode() {
        return this.AFLogger.hashCode() + (this.registerClient.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("HostConfig(prefix=", this.registerClient, ", host=", this.AFLogger, ")");
    }
}
