package com.vuitton.android.data.dto.careservices;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002\"!Bí\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bB\u0081\u0002\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001a\u0010 ¨\u0006#"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;", "", "", "myLVCareStatus", "shippingAddressId", "shippingAddressLine1", "shippingAddressLine2", "shippingAddressLine3", "shippingCity", "shippingZipPostalCode", "shippingStateProvince", "shippingCountry", "billingAddressId", "billingAddressLine1", "billingAddressLine2", "billingAddressLine3", "billingCity", "billingZipPostalCode", "billingStateProvince", "billingCountry", "appointmentDateTime", "shippingAddressTitle", "shippingAddressFirstName", "shippingAddressLastName", "requestSubmittedCancellationReason", "preliminaryAssessmentCancellationReason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceUpdateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44831c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44833f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44837k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceUpdateDto> serializer() {
            return CareServiceUpdateDto$$serializer.f44838a;
        }
    }

    public /* synthetic */ CareServiceUpdateDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? "" : str7, (i2 & 128) != 0 ? "" : str8, (i2 & 256) != 0 ? "" : str9, (i2 & 512) != 0 ? null : str10, (i2 & 1024) != 0 ? "" : str11, (i2 & 2048) != 0 ? "" : str12, (i2 & 4096) != 0 ? "" : str13, (i2 & 8192) != 0 ? "" : str14, (i2 & 16384) != 0 ? "" : str15, (i2 & 32768) != 0 ? "" : str16, (i2 & 65536) != 0 ? "" : str17, (i2 & 131072) != 0 ? "" : str18, (i2 & 262144) != 0 ? "" : str19, (i2 & 524288) != 0 ? "" : str20, (i2 & 1048576) != 0 ? "" : str21, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? "" : str22, (i2 & 4194304) != 0 ? "" : str23);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceUpdateDto)) {
            return false;
        }
        CareServiceUpdateDto careServiceUpdateDto = (CareServiceUpdateDto) obj;
        return Intrinsics.c(this.f44829a, careServiceUpdateDto.f44829a) && Intrinsics.c(this.f44830b, careServiceUpdateDto.f44830b) && Intrinsics.c(this.f44831c, careServiceUpdateDto.f44831c) && Intrinsics.c(this.d, careServiceUpdateDto.d) && Intrinsics.c(this.f44832e, careServiceUpdateDto.f44832e) && Intrinsics.c(this.f44833f, careServiceUpdateDto.f44833f) && Intrinsics.c(this.g, careServiceUpdateDto.g) && Intrinsics.c(this.f44834h, careServiceUpdateDto.f44834h) && Intrinsics.c(this.f44835i, careServiceUpdateDto.f44835i) && Intrinsics.c(this.f44836j, careServiceUpdateDto.f44836j) && Intrinsics.c(this.f44837k, careServiceUpdateDto.f44837k) && Intrinsics.c(this.l, careServiceUpdateDto.l) && Intrinsics.c(this.m, careServiceUpdateDto.m) && Intrinsics.c(this.n, careServiceUpdateDto.n) && Intrinsics.c(this.o, careServiceUpdateDto.o) && Intrinsics.c(this.p, careServiceUpdateDto.p) && Intrinsics.c(this.q, careServiceUpdateDto.q) && Intrinsics.c(this.r, careServiceUpdateDto.r) && Intrinsics.c(this.s, careServiceUpdateDto.s) && Intrinsics.c(this.t, careServiceUpdateDto.t) && Intrinsics.c(this.u, careServiceUpdateDto.u) && Intrinsics.c(this.v, careServiceUpdateDto.v) && Intrinsics.c(this.w, careServiceUpdateDto.w);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.f44829a.hashCode() * 31, 31, this.f44830b), 31, this.f44831c), 31, this.d), 31, this.f44832e), 31, this.f44833f), 31, this.g), 31, this.f44834h), 31, this.f44835i);
        String str = this.f44836j;
        return this.w.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f44837k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceUpdateDto(myLVCareStatus=", this.f44829a, ", shippingAddressId=", this.f44830b, ", shippingAddressLine1=");
        cj.C(sbS, this.f44831c, ", shippingAddressLine2=", this.d, ", shippingAddressLine3=");
        cj.C(sbS, this.f44832e, ", shippingCity=", this.f44833f, ", shippingZipPostalCode=");
        cj.C(sbS, this.g, ", shippingStateProvince=", this.f44834h, ", shippingCountry=");
        cj.C(sbS, this.f44835i, ", billingAddressId=", this.f44836j, ", billingAddressLine1=");
        cj.C(sbS, this.f44837k, ", billingAddressLine2=", this.l, ", billingAddressLine3=");
        cj.C(sbS, this.m, ", billingCity=", this.n, ", billingZipPostalCode=");
        cj.C(sbS, this.o, ", billingStateProvince=", this.p, ", billingCountry=");
        cj.C(sbS, this.q, ", appointmentDateTime=", this.r, ", shippingAddressTitle=");
        cj.C(sbS, this.s, ", shippingAddressFirstName=", this.t, ", shippingAddressLastName=");
        cj.C(sbS, this.u, ", requestSubmittedCancellationReason=", this.v, ", preliminaryAssessmentCancellationReason=");
        return n00.r(this.w, ")", sbS);
    }

    public /* synthetic */ CareServiceUpdateDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, CareServiceUpdateDto$$serializer.f44838a.a());
            throw null;
        }
        this.f44829a = str;
        if ((i2 & 2) == 0) {
            this.f44830b = "";
        } else {
            this.f44830b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44831c = "";
        } else {
            this.f44831c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = "";
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44832e = "";
        } else {
            this.f44832e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44833f = "";
        } else {
            this.f44833f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = "";
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f44834h = "";
        } else {
            this.f44834h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f44835i = "";
        } else {
            this.f44835i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f44836j = null;
        } else {
            this.f44836j = str10;
        }
        if ((i2 & 1024) == 0) {
            this.f44837k = "";
        } else {
            this.f44837k = str11;
        }
        if ((i2 & 2048) == 0) {
            this.l = "";
        } else {
            this.l = str12;
        }
        if ((i2 & 4096) == 0) {
            this.m = "";
        } else {
            this.m = str13;
        }
        if ((i2 & 8192) == 0) {
            this.n = "";
        } else {
            this.n = str14;
        }
        if ((i2 & 16384) == 0) {
            this.o = "";
        } else {
            this.o = str15;
        }
        if ((32768 & i2) == 0) {
            this.p = "";
        } else {
            this.p = str16;
        }
        if ((65536 & i2) == 0) {
            this.q = "";
        } else {
            this.q = str17;
        }
        if ((131072 & i2) == 0) {
            this.r = "";
        } else {
            this.r = str18;
        }
        if ((262144 & i2) == 0) {
            this.s = "";
        } else {
            this.s = str19;
        }
        if ((524288 & i2) == 0) {
            this.t = "";
        } else {
            this.t = str20;
        }
        if ((1048576 & i2) == 0) {
            this.u = "";
        } else {
            this.u = str21;
        }
        if ((2097152 & i2) == 0) {
            this.v = "";
        } else {
            this.v = str22;
        }
        if ((i2 & 4194304) == 0) {
            this.w = "";
        } else {
            this.w = str23;
        }
    }

    public CareServiceUpdateDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23) {
        pq0.z(str, str2, str3, str4, str5);
        pq0.z(str6, str7, str8, str9, str11);
        pq0.z(str12, str13, str14, str15, str16);
        pq0.z(str17, str18, str19, str20, str21);
        str22.getClass();
        str23.getClass();
        this.f44829a = str;
        this.f44830b = str2;
        this.f44831c = str3;
        this.d = str4;
        this.f44832e = str5;
        this.f44833f = str6;
        this.g = str7;
        this.f44834h = str8;
        this.f44835i = str9;
        this.f44836j = str10;
        this.f44837k = str11;
        this.l = str12;
        this.m = str13;
        this.n = str14;
        this.o = str15;
        this.p = str16;
        this.q = str17;
        this.r = str18;
        this.s = str19;
        this.t = str20;
        this.u = str21;
        this.v = str22;
        this.w = str23;
    }
}
