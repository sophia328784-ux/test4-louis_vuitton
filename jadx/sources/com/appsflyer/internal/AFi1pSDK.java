package com.appsflyer.internal;

import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1pSDK {
    public final long AFKeystoreWrapper;
    public final String d;
    public final long registerClient;
    public final String unregisterClient;

    public AFi1pSDK(long j2, long j3, String str, String str2) {
        this.registerClient = j2;
        this.AFKeystoreWrapper = j3;
        this.unregisterClient = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFi1pSDK)) {
            return false;
        }
        AFi1pSDK aFi1pSDK = (AFi1pSDK) obj;
        return this.registerClient == aFi1pSDK.registerClient && this.AFKeystoreWrapper == aFi1pSDK.AFKeystoreWrapper && Intrinsics.c(this.unregisterClient, aFi1pSDK.unregisterClient) && Intrinsics.c(this.d, aFi1pSDK.d);
    }

    public final int hashCode() {
        int iA = fc.a(Long.hashCode(this.registerClient) * 31, 31, this.AFKeystoreWrapper);
        String str = this.unregisterClient;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        long j2 = this.registerClient;
        long j3 = this.AFKeystoreWrapper;
        String str = this.unregisterClient;
        String str2 = this.d;
        StringBuilder sbQ = pq0.q(j2, "PlayIntegrityApiData(piaTimestamp=", ", ttrMillis=");
        sbQ.append(j3);
        sbQ.append(", piaToken=");
        sbQ.append(str);
        return d21.p(sbQ, ", errorCode=", str2, ")");
    }
}
