package com.vuitton.android.presentation.screen.pdp.models;

import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;", "", "", "customerServicePhoneNumber", "cartUrl", "lvWebSiteUrl", "arModelReferenceApiUrl", "emailUsUrl", "storeLocatorUrl", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;", "virtualStudioConfigValues", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PdpAppConfigValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f61549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61551c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f61553f;
    public final PdpVirtualStudioConfigValues g;

    public /* synthetic */ PdpAppConfigValues(String str, String str2, String str3, String str4, String str5, String str6, PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? new String() : str6, (i2 & 64) != 0 ? null : pdpVirtualStudioConfigValues);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PdpAppConfigValues)) {
            return false;
        }
        PdpAppConfigValues pdpAppConfigValues = (PdpAppConfigValues) obj;
        return Intrinsics.c(this.f61549a, pdpAppConfigValues.f61549a) && Intrinsics.c(this.f61550b, pdpAppConfigValues.f61550b) && Intrinsics.c(this.f61551c, pdpAppConfigValues.f61551c) && Intrinsics.c(this.d, pdpAppConfigValues.d) && Intrinsics.c(this.f61552e, pdpAppConfigValues.f61552e) && Intrinsics.c(this.f61553f, pdpAppConfigValues.f61553f) && Intrinsics.c(this.g, pdpAppConfigValues.g);
    }

    public final int hashCode() {
        String str = this.f61549a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f61550b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f61551c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f61552e;
        int iB = fc.b((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.f61553f);
        PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = this.g;
        return iB + (pdpVirtualStudioConfigValues != null ? pdpVirtualStudioConfigValues.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PdpAppConfigValues(customerServicePhoneNumber=", this.f61549a, ", cartUrl=", this.f61550b, ", lvWebSiteUrl=");
        cj.C(sbS, this.f61551c, ", arModelReferenceApiUrl=", this.d, ", emailUsUrl=");
        cj.C(sbS, this.f61552e, ", storeLocatorUrl=", this.f61553f, ", virtualStudioConfigValues=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }

    public PdpAppConfigValues(String str, String str2, String str3, String str4, String str5, String str6, PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues) {
        str6.getClass();
        this.f61549a = str;
        this.f61550b = str2;
        this.f61551c = str3;
        this.d = str4;
        this.f61552e = str5;
        this.f61553f = str6;
        this.g = pdpVirtualStudioConfigValues;
    }

    public PdpAppConfigValues() {
        this(null, null, null, null, null, null, null, CertificateBody.profileType, null);
    }
}
