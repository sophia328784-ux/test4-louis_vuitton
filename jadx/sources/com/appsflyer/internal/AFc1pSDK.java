package com.appsflyer.internal;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1pSDK {
    final int AFKeystoreWrapper;
    final String d;
    final List<AFe1zSDK> unregisterClient;

    /* JADX WARN: Multi-variable type inference failed */
    public AFc1pSDK(String str, List<? extends AFe1zSDK> list, int i2) {
        str.getClass();
        list.getClass();
        this.d = str;
        this.unregisterClient = list;
        this.AFKeystoreWrapper = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFc1pSDK)) {
            return false;
        }
        AFc1pSDK aFc1pSDK = (AFc1pSDK) obj;
        return Intrinsics.c(this.d, aFc1pSDK.d) && Intrinsics.c(this.unregisterClient, aFc1pSDK.unregisterClient) && this.AFKeystoreWrapper == aFc1pSDK.AFKeystoreWrapper;
    }

    public final int hashCode() {
        return Integer.hashCode(this.AFKeystoreWrapper) + n00.a(this.d.hashCode() * 31, 31, this.unregisterClient);
    }

    public final String toString() {
        return defpackage.a.i(this.AFKeystoreWrapper, ")", d21.t("StorageConfigTypeEntry(cacheDirName=", this.d, ", eventTypes=", this.unregisterClient, ", maxCapacity="));
    }
}
