package com.appsflyer.internal;

import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1ySDK {
    final String AFKeystoreWrapper;
    final int AFLogger;
    final int d;
    final int registerClient;
    final int unregisterClient;

    public AFg1ySDK(int i2, int i3, int i4, int i5, String str) {
        str.getClass();
        this.unregisterClient = i2;
        this.d = i3;
        this.registerClient = i4;
        this.AFLogger = i5;
        this.AFKeystoreWrapper = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFg1ySDK)) {
            return false;
        }
        AFg1ySDK aFg1ySDK = (AFg1ySDK) obj;
        return this.unregisterClient == aFg1ySDK.unregisterClient && this.d == aFg1ySDK.d && this.registerClient == aFg1ySDK.registerClient && this.AFLogger == aFg1ySDK.AFLogger && Intrinsics.c(this.AFKeystoreWrapper, aFg1ySDK.AFKeystoreWrapper);
    }

    public final int hashCode() {
        return this.AFKeystoreWrapper.hashCode() + tr.b(this.AFLogger, tr.b(this.registerClient, tr.b(this.d, Integer.hashCode(this.unregisterClient) * 31, 31), 31), 31);
    }

    public final String toString() {
        int i2 = this.unregisterClient;
        int i3 = this.d;
        int i4 = this.registerClient;
        int i5 = this.AFLogger;
        String str = this.AFKeystoreWrapper;
        StringBuilder sbP = fc.p(i2, i3, "CmpTcfData(policyVersion=", ", gdprApplies=", ", cmpSdkId=");
        fc.x(i4, i5, ", cmpSdkVersion=", ", tcString=", sbP);
        return n00.r(str, ")", sbP);
    }
}
