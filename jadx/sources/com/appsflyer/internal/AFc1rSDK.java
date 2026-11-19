package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1rSDK {
    public final int AFKeystoreWrapper;
    public final String unregisterClient;

    public AFc1rSDK(int i2, String str) {
        str.getClass();
        this.AFKeystoreWrapper = i2;
        this.unregisterClient = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFc1rSDK)) {
            return false;
        }
        AFc1rSDK aFc1rSDK = (AFc1rSDK) obj;
        return this.AFKeystoreWrapper == aFc1rSDK.AFKeystoreWrapper && Intrinsics.c(this.unregisterClient, aFc1rSDK.unregisterClient);
    }

    public final int hashCode() {
        return this.unregisterClient.hashCode() + (Integer.hashCode(this.AFKeystoreWrapper) * 31);
    }

    public final String toString() {
        return "AppSetIdModel(scope=" + this.AFKeystoreWrapper + ", id=" + this.unregisterClient + ")";
    }
}
