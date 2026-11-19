package com.vuitton.foundation.model.domain.model.careservices;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0093\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\u0006\u0010\u0017\u001a\u00020\b\u0012\u0006\u0010\u0018\u001a\u00020\b\u0012\u0006\u0010\u0019\u001a\u00020\b\u0012\u0006\u0010\u001a\u001a\u00020\b\u0012\u0006\u0010\u001b\u001a\u00020\b\u0012\u0006\u0010\u001c\u001a\u00020\b\u0012\u0006\u0010\u001d\u001a\u00020\b\u0012\u0006\u0010\u001e\u001a\u00020\b\u0012\u0006\u0010\u001f\u001a\u00020\b\u0012\u0006\u0010 \u001a\u00020\b\u0012\u0006\u0010!\u001a\u00020\b\u0012\u0006\u0010\"\u001a\u00020\b\u0012\u0006\u0010#\u001a\u00020\b\u0012\b\u0010$\u001a\u0004\u0018\u00010\b\u0012\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%\u0012\u0006\u0010(\u001a\u00020\b\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010+\u001a\u00020\b\u0012\u0006\u0010,\u001a\u00020\b\u0012\u0006\u0010-\u001a\u00020\b\u0012\u0006\u0010.\u001a\u00020\b\u0012\u0006\u0010/\u001a\u00020\b\u0012\b\u00101\u001a\u0004\u0018\u000100\u0012\u0006\u00102\u001a\u00020\b\u0012\u0006\u00103\u001a\u00020\b\u0012\b\u00104\u001a\u0004\u0018\u00010\b\u0012\b\u00105\u001a\u0004\u0018\u00010\b\u0012\u0006\u00106\u001a\u00020\b\u0012\u0006\u00107\u001a\u00020\b\u0012\u0006\u00108\u001a\u00020\b\u0012\b\u00109\u001a\u0004\u0018\u00010\b\u0012\b\u0010:\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b;\u0010<¨\u0006="}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;", "recordType", "Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;", "myLVCareStatus", "", "createdDate", "currencyCode", "repairType", "", "totalAmount", "totalAmountUpdated", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "productImage", "careExpertNote", "shippingAddressId", "shippingAddressLine1", "shippingAddressLine2", "shippingAddressLine3", "shippingCity", "shippingZipPostalCode", "shippingStateProvince", "shippingRegionCodeIso31661Alpha2", "billingAddressId", "billingAddressLine1", "billingAddressLine2", "billingAddressLine3", "billingCity", "billingZipPostalCode", "billingStateProvince", "billingCountry", "appointmentDateTime", "appointmentId", "", "Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;", "careServicesItems", "trackingNumber", "Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;", "origin", "email", "phoneNumber", "productDescription", "deliveryDate", "updatedDeliveryDate", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "productName", "productFamily", "storeName", "storeRetailCode", "addressTitle", "addressFirstName", "addressLastName", "confirmAddressExpirationDate", "payByLinkUrl", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceDetail {
    public final String A;
    public final String B;
    public final String C;
    public final List D;
    public final String E;
    public final CareServiceOrigin F;
    public final String G;
    public final String H;
    public final String I;
    public final String J;
    public final String K;
    public final String L;
    public final String M;
    public final String N;
    public final String O;
    public final String P;
    public final String Q;
    public final String R;
    public final String S;
    public final String T;
    public final String U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepairType f66795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RepairStatus f66796c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66798f;
    public final double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Double f66799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66802k;
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
    public final String x;
    public final String y;
    public final String z;

    public CareServiceDetail(String str, RepairType repairType, RepairStatus repairStatus, String str2, String str3, String str4, double d, Double d2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, List list, String str26, CareServiceOrigin careServiceOrigin, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, String str37, String str38, String str39, String str40, String str41, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        repairType.getClass();
        repairStatus.getClass();
        str2.getClass();
        str3.getClass();
        pq0.z(str4, str5, str6, str7, str8);
        pq0.z(str9, str10, str11, str12, str13);
        pq0.z(str14, str15, str16, str17, str18);
        pq0.z(str19, str20, str21, str22, str23);
        str24.getClass();
        list.getClass();
        str26.getClass();
        careServiceOrigin.getClass();
        str27.getClass();
        pq0.z(str28, str29, str30, str31, str33);
        d21.y(str34, str37, str38, str39);
        this.f66794a = str;
        this.f66795b = repairType;
        this.f66796c = repairStatus;
        this.d = str2;
        this.f66797e = str3;
        this.f66798f = str4;
        this.g = d;
        this.f66799h = d2;
        this.f66800i = str5;
        this.f66801j = str6;
        this.f66802k = str7;
        this.l = str8;
        this.m = str9;
        this.n = str10;
        this.o = str11;
        this.p = str12;
        this.q = str13;
        this.r = str14;
        this.s = str15;
        this.t = str16;
        this.u = str17;
        this.v = str18;
        this.w = str19;
        this.x = str20;
        this.y = str21;
        this.z = str22;
        this.A = str23;
        this.B = str24;
        this.C = str25;
        this.D = list;
        this.E = str26;
        this.F = careServiceOrigin;
        this.G = str27;
        this.H = str28;
        this.I = str29;
        this.J = str30;
        this.K = str31;
        this.L = str32;
        this.M = str33;
        this.N = str34;
        this.O = str35;
        this.P = str36;
        this.Q = str37;
        this.R = str38;
        this.S = str39;
        this.T = str40;
        this.U = str41;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x01cc  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceDetail) {
                CareServiceDetail careServiceDetail = (CareServiceDetail) obj;
                String str = careServiceDetail.f66794a;
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                if (this.f66794a.equals(str) && this.f66795b == careServiceDetail.f66795b && this.f66796c == careServiceDetail.f66796c && this.d.equals(careServiceDetail.d) && this.f66797e.equals(careServiceDetail.f66797e) && this.f66798f.equals(careServiceDetail.f66798f) && Double.compare(this.g, careServiceDetail.g) == 0 && Intrinsics.c(this.f66799h, careServiceDetail.f66799h)) {
                    String str2 = careServiceDetail.f66800i;
                    SkuId.Companion companion2 = SkuId.INSTANCE;
                    if (this.f66800i.equals(str2) && this.f66801j.equals(careServiceDetail.f66801j) && this.f66802k.equals(careServiceDetail.f66802k) && this.l.equals(careServiceDetail.l) && this.m.equals(careServiceDetail.m) && this.n.equals(careServiceDetail.n) && this.o.equals(careServiceDetail.o) && this.p.equals(careServiceDetail.p) && this.q.equals(careServiceDetail.q) && this.r.equals(careServiceDetail.r) && this.s.equals(careServiceDetail.s) && this.t.equals(careServiceDetail.t) && this.u.equals(careServiceDetail.u) && this.v.equals(careServiceDetail.v) && this.w.equals(careServiceDetail.w) && this.x.equals(careServiceDetail.x) && this.y.equals(careServiceDetail.y) && this.z.equals(careServiceDetail.z) && this.A.equals(careServiceDetail.A) && this.B.equals(careServiceDetail.B) && Intrinsics.c(this.C, careServiceDetail.C) && this.D.equals(careServiceDetail.D) && this.E.equals(careServiceDetail.E) && this.F == careServiceDetail.F && this.G.equals(careServiceDetail.G) && this.H.equals(careServiceDetail.H) && this.I.equals(careServiceDetail.I) && this.J.equals(careServiceDetail.J) && this.K.equals(careServiceDetail.K)) {
                        String str3 = careServiceDetail.L;
                        String str4 = this.L;
                        if (str4 == null) {
                            if (str3 == null) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (str3 == null) {
                            zEquals = false;
                        } else {
                            CareServiceTransactionId.Companion companion3 = CareServiceTransactionId.INSTANCE;
                            zEquals = str4.equals(str3);
                        }
                        if (zEquals && this.M.equals(careServiceDetail.M) && this.N.equals(careServiceDetail.N) && Intrinsics.c(this.O, careServiceDetail.O) && Intrinsics.c(this.P, careServiceDetail.P) && this.Q.equals(careServiceDetail.Q) && this.R.equals(careServiceDetail.R) && this.S.equals(careServiceDetail.S) && Intrinsics.c(this.T, careServiceDetail.T) && Intrinsics.c(this.U, careServiceDetail.U)) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iA = d21.a(this.g, fc.b(fc.b(fc.b((this.f66796c.hashCode() + ((this.f66795b.hashCode() + (this.f66794a.hashCode() * 31)) * 31)) * 31, 31, this.d), 31, this.f66797e), 31, this.f66798f), 31);
        Double d = this.f66799h;
        int iHashCode2 = (iA + (d == null ? 0 : d.hashCode())) * 31;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(iHashCode2, 31, this.f66800i), 31, this.f66801j), 31, this.f66802k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z), 31, this.A), 31, this.B);
        String str = this.C;
        int iB2 = fc.b(fc.b(fc.b(fc.b(fc.b((this.F.hashCode() + fc.b(n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.D), 31, this.E)) * 31, 31, this.G), 31, this.H), 31, this.I), 31, this.J), 31, this.K);
        String str2 = this.L;
        if (str2 == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionId.Companion companion3 = CareServiceTransactionId.INSTANCE;
            iHashCode = str2.hashCode();
        }
        int iB3 = fc.b(fc.b((iB2 + iHashCode) * 31, 31, this.M), 31, this.N);
        String str3 = this.O;
        int iHashCode3 = (iB3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.P;
        int iB4 = fc.b(fc.b(fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.Q), 31, this.R), 31, this.S);
        String str5 = this.T;
        int iHashCode4 = (iB4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.U;
        return iHashCode4 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        String str = this.L;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionId.Companion companion3 = CareServiceTransactionId.INSTANCE;
        }
        StringBuilder sb = new StringBuilder("CareServiceDetail(id=");
        sb.append(this.f66794a);
        sb.append(", recordType=");
        sb.append(this.f66795b);
        sb.append(", myLVCareStatus=");
        sb.append(this.f66796c);
        sb.append(", createdDate=");
        sb.append(this.d);
        sb.append(", currencyCode=");
        cj.C(sb, this.f66797e, ", repairType=", this.f66798f, ", totalAmount=");
        sb.append(this.g);
        sb.append(", totalAmountUpdated=");
        sb.append(this.f66799h);
        cj.C(sb, ", sku=", this.f66800i, ", productImage=", this.f66801j);
        cj.C(sb, ", careExpertNote=", this.f66802k, ", shippingAddressId=", this.l);
        cj.C(sb, ", shippingAddressLine1=", this.m, ", shippingAddressLine2=", this.n);
        cj.C(sb, ", shippingAddressLine3=", this.o, ", shippingCity=", this.p);
        cj.C(sb, ", shippingZipPostalCode=", this.q, ", shippingStateProvince=", this.r);
        cj.C(sb, ", shippingRegionCodeIso31661Alpha2=", this.s, ", billingAddressId=", this.t);
        cj.C(sb, ", billingAddressLine1=", this.u, ", billingAddressLine2=", this.v);
        cj.C(sb, ", billingAddressLine3=", this.w, ", billingCity=", this.x);
        cj.C(sb, ", billingZipPostalCode=", this.y, ", billingStateProvince=", this.z);
        cj.C(sb, ", billingCountry=", this.A, ", appointmentDateTime=", this.B);
        sb.append(", appointmentId=");
        sb.append(this.C);
        sb.append(", careServicesItems=");
        sb.append(this.D);
        sb.append(", trackingNumber=");
        sb.append(this.E);
        sb.append(", origin=");
        sb.append(this.F);
        cj.C(sb, ", email=", this.G, ", phoneNumber=", this.H);
        cj.C(sb, ", productDescription=", this.I, ", deliveryDate=", this.J);
        cj.C(sb, ", updatedDeliveryDate=", this.K, ", transactionId=", str);
        cj.C(sb, ", productName=", this.M, ", productFamily=", this.N);
        cj.C(sb, ", storeName=", this.O, ", storeRetailCode=", this.P);
        cj.C(sb, ", addressTitle=", this.Q, ", addressFirstName=", this.R);
        cj.C(sb, ", addressLastName=", this.S, ", confirmAddressExpirationDate=", this.T);
        return d21.p(sb, ", payByLinkUrl=", this.U, ")");
    }
}
