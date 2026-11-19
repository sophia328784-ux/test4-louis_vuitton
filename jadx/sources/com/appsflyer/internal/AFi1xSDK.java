package com.appsflyer.internal;

import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1xSDK {
    public final String AFKeystoreWrapper;
    public final boolean d;
    public final String registerClient;
    public final String unregisterClient;

    public AFi1xSDK(String str, String str2, String str3, boolean z) {
        str.getClass();
        this.unregisterClient = str;
        this.AFKeystoreWrapper = str2;
        this.registerClient = str3;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFi1xSDK)) {
            return false;
        }
        AFi1xSDK aFi1xSDK = (AFi1xSDK) obj;
        return Intrinsics.c(this.unregisterClient, aFi1xSDK.unregisterClient) && Intrinsics.c(this.AFKeystoreWrapper, aFi1xSDK.AFKeystoreWrapper) && Intrinsics.c(this.registerClient, aFi1xSDK.registerClient) && this.d == aFi1xSDK.d;
    }

    public final int hashCode() {
        int iHashCode = this.unregisterClient.hashCode() * 31;
        String str = this.AFKeystoreWrapper;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.registerClient;
        return Boolean.hashCode(this.d) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.unregisterClient;
        String str2 = this.AFKeystoreWrapper;
        String str3 = this.registerClient;
        boolean z = this.d;
        StringBuilder sbS = fc.s("NetworkData(networkType=", str, ", carrierName=", str2, ", simOperator=");
        sbS.append(str3);
        sbS.append(", isVpnEnabled=");
        sbS.append(z);
        sbS.append(")");
        return sbS.toString();
    }
}
