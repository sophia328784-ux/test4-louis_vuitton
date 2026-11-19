package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "", "displayableId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;", "type", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;", "category", "stepTitle", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;", "product", "trackingURL", "Lkotlinx/datetime/Instant;", "creationDate", "deliveryDate", "updatedDeliveryDate", "restitutionHistoryDate", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;", "hotContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceShort {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66886c;
    public final CareServiceType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceCategory f66887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66888f;
    public final CareServiceAction g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CareServiceProduct f66889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Instant f66891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Instant f66892k;
    public final Instant l;
    public final Instant m;
    public final CareServiceHotContent n;

    public CareServiceShort(String str, String str2, String str3, CareServiceType careServiceType, CareServiceCategory careServiceCategory, String str4, CareServiceAction careServiceAction, CareServiceProduct careServiceProduct, String str5, Instant instant, Instant instant2, Instant instant3, Instant instant4, CareServiceHotContent careServiceHotContent, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        careServiceType.getClass();
        careServiceCategory.getClass();
        str4.getClass();
        instant.getClass();
        this.f66884a = str;
        this.f66885b = str2;
        this.f66886c = str3;
        this.d = careServiceType;
        this.f66887e = careServiceCategory;
        this.f66888f = str4;
        this.g = careServiceAction;
        this.f66889h = careServiceProduct;
        this.f66890i = str5;
        this.f66891j = instant;
        this.f66892k = instant2;
        this.l = instant3;
        this.m = instant4;
        this.n = careServiceHotContent;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0032  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceShort) {
                CareServiceShort careServiceShort = (CareServiceShort) obj;
                String str = careServiceShort.f66884a;
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                if (this.f66884a.equals(str) && this.f66885b.equals(careServiceShort.f66885b)) {
                    String str2 = careServiceShort.f66886c;
                    String str3 = this.f66886c;
                    if (str3 == null) {
                        if (str2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str2 == null) {
                        zEquals = false;
                    } else {
                        CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
                        zEquals = str3.equals(str2);
                    }
                    if (zEquals && this.d == careServiceShort.d && this.f66887e == careServiceShort.f66887e && this.f66888f.equals(careServiceShort.f66888f) && this.g == careServiceShort.g && Intrinsics.c(this.f66889h, careServiceShort.f66889h) && Intrinsics.c(this.f66890i, careServiceShort.f66890i) && this.f66891j.equals(careServiceShort.f66891j) && Intrinsics.c(this.f66892k, careServiceShort.f66892k) && Intrinsics.c(this.l, careServiceShort.l) && Intrinsics.c(this.m, careServiceShort.m) && Intrinsics.c(this.n, careServiceShort.n)) {
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
        int iB = fc.b(this.f66884a.hashCode() * 31, 31, this.f66885b);
        String str = this.f66886c;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB2 = fc.b((this.f66887e.hashCode() + ((this.d.hashCode() + ((iB + iHashCode) * 31)) * 31)) * 31, 31, this.f66888f);
        CareServiceAction careServiceAction = this.g;
        int iHashCode2 = (iB2 + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        CareServiceProduct careServiceProduct = this.f66889h;
        int iHashCode3 = (iHashCode2 + (careServiceProduct == null ? 0 : careServiceProduct.hashCode())) * 31;
        String str2 = this.f66890i;
        int iHashCode4 = (this.f66891j.f75239b.hashCode() + ((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        Instant instant = this.f66892k;
        int iHashCode5 = (iHashCode4 + (instant == null ? 0 : instant.f75239b.hashCode())) * 31;
        Instant instant2 = this.l;
        int iHashCode6 = (iHashCode5 + (instant2 == null ? 0 : instant2.f75239b.hashCode())) * 31;
        Instant instant3 = this.m;
        int iHashCode7 = (iHashCode6 + (instant3 == null ? 0 : instant3.f75239b.hashCode())) * 31;
        CareServiceHotContent careServiceHotContent = this.n;
        return iHashCode7 + (careServiceHotContent != null ? careServiceHotContent.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str = this.f66886c;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
        }
        StringBuilder sbS = fc.s("CareServiceShort(id=", this.f66884a, ", displayableId=", this.f66885b, ", transactionId=");
        sbS.append(str);
        sbS.append(", type=");
        sbS.append(this.d);
        sbS.append(", category=");
        sbS.append(this.f66887e);
        sbS.append(", stepTitle=");
        sbS.append(this.f66888f);
        sbS.append(", action=");
        sbS.append(this.g);
        sbS.append(", product=");
        sbS.append(this.f66889h);
        sbS.append(", trackingURL=");
        sbS.append(this.f66890i);
        sbS.append(", creationDate=");
        sbS.append(this.f66891j);
        sbS.append(", deliveryDate=");
        sbS.append(this.f66892k);
        sbS.append(", updatedDeliveryDate=");
        sbS.append(this.l);
        sbS.append(", restitutionHistoryDate=");
        sbS.append(this.m);
        sbS.append(", hotContent=");
        sbS.append(this.n);
        sbS.append(")");
        return sbS.toString();
    }
}
