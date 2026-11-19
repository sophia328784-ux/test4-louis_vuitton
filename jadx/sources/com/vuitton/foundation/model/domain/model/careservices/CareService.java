package com.vuitton.foundation.model.domain.model.careservices;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.fc;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CareService;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "", "transactionId", "storeRetailCode", "Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;", "myLVCareStatus", "Ljava/util/Date;", "createdDate", "deliveryDate", "updatedDeliveryDate", "lastMyRepairStatusChangedDate", "productName", "productFamily", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "currencyCode", "", "totalAmount", "productSkuUnknown", "productImage", "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;", "repairType", "trackingNumber", "", "isOnGoing", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66787c;
    public final RepairStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Date f66788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66789f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66791i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66792j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66793k;
    public final String l;
    public final Double m;
    public final String n;
    public final String o;
    public final RepairType p;
    public final String q;
    public final boolean r;

    public CareService(String str, String str2, String str3, RepairStatus repairStatus, Date date, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Double d, String str11, String str12, RepairType repairType, String str13, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        repairStatus.getClass();
        str7.getClass();
        str8.getClass();
        str9.getClass();
        str11.getClass();
        str12.getClass();
        repairType.getClass();
        str13.getClass();
        this.f66785a = str;
        this.f66786b = str2;
        this.f66787c = str3;
        this.d = repairStatus;
        this.f66788e = date;
        this.f66789f = str4;
        this.g = str5;
        this.f66790h = str6;
        this.f66791i = str7;
        this.f66792j = str8;
        this.f66793k = str9;
        this.l = str10;
        this.m = d;
        this.n = str11;
        this.o = str12;
        this.p = repairType;
        this.q = str13;
        this.r = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareService)) {
            return false;
        }
        CareService careService = (CareService) obj;
        String str = careService.f66785a;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        if (!Intrinsics.c(this.f66785a, str) || !Intrinsics.c(this.f66786b, careService.f66786b) || !Intrinsics.c(this.f66787c, careService.f66787c) || this.d != careService.d || !Intrinsics.c(this.f66788e, careService.f66788e) || !Intrinsics.c(this.f66789f, careService.f66789f) || !Intrinsics.c(this.g, careService.g) || !Intrinsics.c(this.f66790h, careService.f66790h) || !Intrinsics.c(this.f66791i, careService.f66791i) || !Intrinsics.c(this.f66792j, careService.f66792j)) {
            return false;
        }
        String str2 = careService.f66793k;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return Intrinsics.c(this.f66793k, str2) && Intrinsics.c(this.l, careService.l) && Intrinsics.c(this.m, careService.m) && Intrinsics.c(this.n, careService.n) && Intrinsics.c(this.o, careService.o) && this.p == careService.p && Intrinsics.c(this.q, careService.q) && this.r == careService.r;
    }

    public final int hashCode() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iHashCode = (this.d.hashCode() + fc.b(fc.b(this.f66785a.hashCode() * 31, 31, this.f66786b), 31, this.f66787c)) * 31;
        Date date = this.f66788e;
        int iHashCode2 = (iHashCode + (date == null ? 0 : date.hashCode())) * 31;
        String str = this.f66789f;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66790h;
        int iB = fc.b(fc.b((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f66791i), 31, this.f66792j);
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iB2 = fc.b(iB, 31, this.f66793k);
        String str4 = this.l;
        int iHashCode5 = (iB2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Double d = this.m;
        return Boolean.hashCode(this.r) + fc.b((this.p.hashCode() + fc.b(fc.b((iHashCode5 + (d != null ? d.hashCode() : 0)) * 31, 31, this.n), 31, this.o)) * 31, 31, this.q);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CareService(id=", this.f66785a, ", transactionId=", this.f66786b, ", storeRetailCode=");
        sbS.append(this.f66787c);
        sbS.append(", myLVCareStatus=");
        sbS.append(this.d);
        sbS.append(", createdDate=");
        sbS.append(this.f66788e);
        sbS.append(", deliveryDate=");
        sbS.append(this.f66789f);
        sbS.append(", updatedDeliveryDate=");
        cj.C(sbS, this.g, ", lastMyRepairStatusChangedDate=", this.f66790h, ", productName=");
        cj.C(sbS, this.f66791i, ", productFamily=", this.f66792j, ", sku=");
        cj.C(sbS, this.f66793k, ", currencyCode=", this.l, ", totalAmount=");
        sbS.append(this.m);
        sbS.append(", productSkuUnknown=");
        sbS.append(this.n);
        sbS.append(", productImage=");
        sbS.append(this.o);
        sbS.append(", repairType=");
        sbS.append(this.p);
        sbS.append(", trackingNumber=");
        sbS.append(this.q);
        sbS.append(", isOnGoing=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ CareService(String str, String str2, String str3, RepairStatus repairStatus, Date date, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Double d, String str11, String str12, RepairType repairType, String str13, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, repairStatus, date, str4, str5, str6, str7, str8, str9, str10, d, str11, str12, repairType, (i2 & 65536) != 0 ? "" : str13, (i2 & 131072) != 0 ? false : z, null);
    }
}
