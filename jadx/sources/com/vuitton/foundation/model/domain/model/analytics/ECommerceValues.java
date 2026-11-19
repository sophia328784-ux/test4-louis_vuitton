package com.vuitton.foundation.model.domain.model.analytics;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "productName", "category", "", "price", "currency", "quantity", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ECommerceValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66446c;
    public final Double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Double f66448f;

    public ECommerceValues(String str, String str2, String str3, Double d, String str4, Double d2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66444a = str;
        this.f66445b = str2;
        this.f66446c = str3;
        this.d = d;
        this.f66447e = str4;
        this.f66448f = d2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ECommerceValues)) {
            return false;
        }
        ECommerceValues eCommerceValues = (ECommerceValues) obj;
        String str = eCommerceValues.f66444a;
        String str2 = this.f66444a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.f66445b, eCommerceValues.f66445b) && Intrinsics.c(this.f66446c, eCommerceValues.f66446c) && Intrinsics.c(this.d, eCommerceValues.d) && Intrinsics.c(this.f66447e, eCommerceValues.f66447e) && Intrinsics.c(this.f66448f, eCommerceValues.f66448f);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f66444a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        String str2 = this.f66445b;
        int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66446c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d = this.d;
        int iHashCode4 = (iHashCode3 + (d == null ? 0 : d.hashCode())) * 31;
        String str4 = this.f66447e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Double d2 = this.f66448f;
        return iHashCode5 + (d2 != null ? d2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f66444a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        StringBuilder sbS = fc.s("ECommerceValues(sku=", str, ", productName=", this.f66445b, ", category=");
        sbS.append(this.f66446c);
        sbS.append(", price=");
        sbS.append(this.d);
        sbS.append(", currency=");
        sbS.append(this.f66447e);
        sbS.append(", quantity=");
        sbS.append(this.f66448f);
        sbS.append(")");
        return sbS.toString();
    }
}
