package com.vuitton.foundation.model.domain.model.careservices;

import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001Bñ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;", "", "Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;", "myLVCareStatus", "previousMyLVCareStatus", "", "shippingAddressId", "shippingAddressLine1", "shippingAddressLine2", "shippingAddressLine3", "shippingCity", "shippingZipPostalCode", "shippingStateProvince", "shippingCountry", "billingAddressId", "billingAddressLine1", "billingAddressLine2", "billingAddressLine3", "billingCity", "billingZipPostalCode", "billingStateProvince", "billingCountry", "Lkotlinx/datetime/Instant;", "appointmentDateTime", "addressTitle", "addressFirstName", "addressLastName", "cancellationReasonId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairStatus f66810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepairStatus f66811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66812c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66814f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66818k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final Instant s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;

    public /* synthetic */ CareServiceUpdate(RepairStatus repairStatus, RepairStatus repairStatus2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Instant instant, String str17, String str18, String str19, String str20, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(repairStatus, (i2 & 2) != 0 ? null : repairStatus2, (i2 & 4) != 0 ? "" : str, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? "" : str3, (i2 & 32) != 0 ? "" : str4, (i2 & 64) != 0 ? "" : str5, (i2 & 128) != 0 ? "" : str6, (i2 & 256) != 0 ? "" : str7, (i2 & 512) != 0 ? "" : str8, (i2 & 1024) != 0 ? "" : str9, (i2 & 2048) != 0 ? "" : str10, (i2 & 4096) != 0 ? "" : str11, (i2 & 8192) != 0 ? "" : str12, (i2 & 16384) != 0 ? "" : str13, (i2 & 32768) != 0 ? "" : str14, (i2 & 65536) != 0 ? "" : str15, (i2 & 131072) != 0 ? "" : str16, (i2 & 262144) != 0 ? null : instant, (i2 & 524288) != 0 ? "" : str17, (i2 & 1048576) != 0 ? "" : str18, (i2 & PKIFailureInfo.badSenderNonce) == 0 ? str19 : "", (i2 & 4194304) != 0 ? null : str20);
    }

    public static CareServiceUpdate a(CareServiceUpdate careServiceUpdate, RepairStatus repairStatus, RepairStatus repairStatus2, String str, int i2) {
        RepairStatus repairStatus3 = (i2 & 2) != 0 ? careServiceUpdate.f66811b : repairStatus2;
        String str2 = careServiceUpdate.f66812c;
        String str3 = careServiceUpdate.d;
        String str4 = careServiceUpdate.f66813e;
        String str5 = careServiceUpdate.f66814f;
        String str6 = careServiceUpdate.g;
        String str7 = careServiceUpdate.f66815h;
        String str8 = careServiceUpdate.f66816i;
        String str9 = careServiceUpdate.f66817j;
        String str10 = careServiceUpdate.f66818k;
        String str11 = careServiceUpdate.l;
        String str12 = careServiceUpdate.m;
        String str13 = careServiceUpdate.n;
        String str14 = careServiceUpdate.o;
        String str15 = careServiceUpdate.p;
        RepairStatus repairStatus4 = repairStatus3;
        String str16 = careServiceUpdate.q;
        String str17 = careServiceUpdate.r;
        Instant instant = (i2 & 262144) != 0 ? careServiceUpdate.s : null;
        String str18 = careServiceUpdate.t;
        String str19 = careServiceUpdate.u;
        String str20 = careServiceUpdate.v;
        String str21 = (i2 & 4194304) != 0 ? careServiceUpdate.w : str;
        repairStatus.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        pq0.z(str6, str7, str8, str9, str10);
        pq0.z(str11, str12, str13, str14, str15);
        str16.getClass();
        str17.getClass();
        str18.getClass();
        str19.getClass();
        str20.getClass();
        return new CareServiceUpdate(repairStatus, repairStatus4, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, instant, str18, str19, str20, str21);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceUpdate)) {
            return false;
        }
        CareServiceUpdate careServiceUpdate = (CareServiceUpdate) obj;
        return this.f66810a == careServiceUpdate.f66810a && this.f66811b == careServiceUpdate.f66811b && Intrinsics.c(this.f66812c, careServiceUpdate.f66812c) && Intrinsics.c(this.d, careServiceUpdate.d) && Intrinsics.c(this.f66813e, careServiceUpdate.f66813e) && Intrinsics.c(this.f66814f, careServiceUpdate.f66814f) && Intrinsics.c(this.g, careServiceUpdate.g) && Intrinsics.c(this.f66815h, careServiceUpdate.f66815h) && Intrinsics.c(this.f66816i, careServiceUpdate.f66816i) && Intrinsics.c(this.f66817j, careServiceUpdate.f66817j) && Intrinsics.c(this.f66818k, careServiceUpdate.f66818k) && Intrinsics.c(this.l, careServiceUpdate.l) && Intrinsics.c(this.m, careServiceUpdate.m) && Intrinsics.c(this.n, careServiceUpdate.n) && Intrinsics.c(this.o, careServiceUpdate.o) && Intrinsics.c(this.p, careServiceUpdate.p) && Intrinsics.c(this.q, careServiceUpdate.q) && Intrinsics.c(this.r, careServiceUpdate.r) && Intrinsics.c(this.s, careServiceUpdate.s) && Intrinsics.c(this.t, careServiceUpdate.t) && Intrinsics.c(this.u, careServiceUpdate.u) && Intrinsics.c(this.v, careServiceUpdate.v) && Intrinsics.c(this.w, careServiceUpdate.w);
    }

    public final int hashCode() {
        int iHashCode = this.f66810a.hashCode() * 31;
        RepairStatus repairStatus = this.f66811b;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b((iHashCode + (repairStatus == null ? 0 : repairStatus.hashCode())) * 31, 31, this.f66812c), 31, this.d), 31, this.f66813e), 31, this.f66814f), 31, this.g), 31, this.f66815h), 31, this.f66816i), 31, this.f66817j), 31, this.f66818k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r);
        Instant instant = this.s;
        int iB2 = fc.b(fc.b(fc.b((iB + (instant == null ? 0 : instant.f75239b.hashCode())) * 31, 31, this.t), 31, this.u), 31, this.v);
        String str = this.w;
        return iB2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CareServiceUpdate(myLVCareStatus=");
        sb.append(this.f66810a);
        sb.append(", previousMyLVCareStatus=");
        sb.append(this.f66811b);
        sb.append(", shippingAddressId=");
        cj.C(sb, this.f66812c, ", shippingAddressLine1=", this.d, ", shippingAddressLine2=");
        cj.C(sb, this.f66813e, ", shippingAddressLine3=", this.f66814f, ", shippingCity=");
        cj.C(sb, this.g, ", shippingZipPostalCode=", this.f66815h, ", shippingStateProvince=");
        cj.C(sb, this.f66816i, ", shippingCountry=", this.f66817j, ", billingAddressId=");
        cj.C(sb, this.f66818k, ", billingAddressLine1=", this.l, ", billingAddressLine2=");
        cj.C(sb, this.m, ", billingAddressLine3=", this.n, ", billingCity=");
        cj.C(sb, this.o, ", billingZipPostalCode=", this.p, ", billingStateProvince=");
        cj.C(sb, this.q, ", billingCountry=", this.r, ", appointmentDateTime=");
        sb.append(this.s);
        sb.append(", addressTitle=");
        sb.append(this.t);
        sb.append(", addressFirstName=");
        cj.C(sb, this.u, ", addressLastName=", this.v, ", cancellationReasonId=");
        return n00.r(this.w, ")", sb);
    }

    public CareServiceUpdate(RepairStatus repairStatus, RepairStatus repairStatus2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Instant instant, String str17, String str18, String str19, String str20) {
        repairStatus.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        pq0.z(str5, str6, str7, str8, str9);
        pq0.z(str10, str11, str12, str13, str14);
        pq0.z(str15, str16, str17, str18, str19);
        this.f66810a = repairStatus;
        this.f66811b = repairStatus2;
        this.f66812c = str;
        this.d = str2;
        this.f66813e = str3;
        this.f66814f = str4;
        this.g = str5;
        this.f66815h = str6;
        this.f66816i = str7;
        this.f66817j = str8;
        this.f66818k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = str13;
        this.p = str14;
        this.q = str15;
        this.r = str16;
        this.s = instant;
        this.t = str17;
        this.u = str18;
        this.v = str19;
        this.w = str20;
    }
}
