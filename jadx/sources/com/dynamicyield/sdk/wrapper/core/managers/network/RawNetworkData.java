package com.dynamicyield.sdk.wrapper.core.managers.network;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;", "", "", m.v, "", "message", "", "isSuccessful", "body", ConfigurationName.PING_PAYLOAD, "sdkVersionHeader", "<init>", "(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RawNetworkData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25934c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f25935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f25936f;

    public RawNetworkData(int i2, String str, boolean z, String str2, String str3, String str4) {
        str.getClass();
        this.f25932a = i2;
        this.f25933b = str;
        this.f25934c = z;
        this.d = str2;
        this.f25935e = str3;
        this.f25936f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RawNetworkData)) {
            return false;
        }
        RawNetworkData rawNetworkData = (RawNetworkData) obj;
        return this.f25932a == rawNetworkData.f25932a && Intrinsics.c(this.f25933b, rawNetworkData.f25933b) && this.f25934c == rawNetworkData.f25934c && Intrinsics.c(this.d, rawNetworkData.d) && Intrinsics.c(this.f25935e, rawNetworkData.f25935e) && Intrinsics.c(this.f25936f, rawNetworkData.f25936f);
    }

    public final int hashCode() {
        int iB = o60.b(fc.b(Integer.hashCode(this.f25932a) * 31, 31, this.f25933b), 31, this.f25934c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f25935e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f25936f;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RawNetworkData(code=");
        sb.append(this.f25932a);
        sb.append(", message=");
        sb.append(this.f25933b);
        sb.append(", isSuccessful=");
        sb.append(this.f25934c);
        sb.append(", body=");
        sb.append(this.d);
        sb.append(", payload=");
        sb.append(this.f25935e);
        sb.append(", sdkVersionHeader=");
        return fc.l(sb, this.f25936f, ')');
    }
}
