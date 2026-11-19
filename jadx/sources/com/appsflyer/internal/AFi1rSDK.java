package com.appsflyer.internal;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.cj;
import defpackage.d21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001cR\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0017R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\u0017R\u0016\u0010\"\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0017R\u0016\u0010 \u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001c"}, d2 = {"Lcom/appsflyer/internal/AFi1rSDK;", "", "", "p0", "", "p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "<init>", "(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "registerClient", "Ljava/lang/String;", "unregisterClient", "AFKeystoreWrapper", "Z", "AFLogger", "Ljava/lang/Boolean;", NBSSpanMetricUnit.Day, "e", "i", "w", "v", "force"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AFi1rSDK {
    public final boolean AFKeystoreWrapper;

    /* JADX INFO: renamed from: AFLogger, reason: from kotlin metadata */
    public final Boolean registerClient;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public final String AFLogger;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public final String i;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public final Boolean w;

    /* JADX INFO: renamed from: registerClient, reason: from kotlin metadata */
    public final String unregisterClient;

    /* JADX INFO: renamed from: unregisterClient, reason: from kotlin metadata */
    public final Boolean d;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    public final String force;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    public final String e;

    public AFi1rSDK(String str, boolean z, Boolean bool, Boolean bool2, String str2, String str3, String str4, String str5, Boolean bool3) {
        str.getClass();
        this.unregisterClient = str;
        this.AFKeystoreWrapper = z;
        this.registerClient = bool;
        this.d = bool2;
        this.AFLogger = str2;
        this.i = str3;
        this.e = str4;
        this.force = str5;
        this.w = bool3;
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof AFi1rSDK)) {
            return false;
        }
        AFi1rSDK aFi1rSDK = (AFi1rSDK) p0;
        return Intrinsics.c(this.unregisterClient, aFi1rSDK.unregisterClient) && this.AFKeystoreWrapper == aFi1rSDK.AFKeystoreWrapper && Intrinsics.c(this.registerClient, aFi1rSDK.registerClient) && Intrinsics.c(this.d, aFi1rSDK.d) && Intrinsics.c(this.AFLogger, aFi1rSDK.AFLogger) && Intrinsics.c(this.i, aFi1rSDK.i) && Intrinsics.c(this.e, aFi1rSDK.e) && Intrinsics.c(this.force, aFi1rSDK.force) && Intrinsics.c(this.w, aFi1rSDK.w);
    }

    public final int hashCode() {
        int iB = o60.b(this.unregisterClient.hashCode() * 31, 31, this.AFKeystoreWrapper);
        Boolean bool = this.registerClient;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.d;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str = this.AFLogger;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.i;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.force;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool3 = this.w;
        return iHashCode6 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.unregisterClient;
        boolean z = this.AFKeystoreWrapper;
        Boolean bool = this.registerClient;
        Boolean bool2 = this.d;
        String str2 = this.AFLogger;
        String str3 = this.i;
        String str4 = this.e;
        String str5 = this.force;
        Boolean bool3 = this.w;
        StringBuilder sbS = d21.s("NetworkTroubleshootingData(networkType=", str, ", isVpnEnabled=", ", hasInternetCapability=", z);
        d21.B(sbS, bool, ", hasValidatedCapability=", bool2, ", dataState=");
        cj.C(sbS, str2, ", vpnUnderlyingTransport=", str3, ", devicePrivateVpnAddress=");
        cj.C(sbS, str4, ", customDnsServerName=", str5, ", customDnsEnabled=");
        sbS.append(bool3);
        sbS.append(")");
        return sbS.toString();
    }
}
