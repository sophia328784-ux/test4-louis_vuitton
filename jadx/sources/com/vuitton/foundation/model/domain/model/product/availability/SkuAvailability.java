package com.vuitton.foundation.model.domain.model.product.availability;

import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001By\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "inStock", "isBackOrder", "isPreOrder", "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;", "disclaimer", "", "minValue", "maxValue", "minLeadTime", "maxLeadTime", "Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;", "leadTimeFormat", "<init>", "(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SkuAvailability {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f67948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f67949c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductDisclaimer f67950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f67951f;
    public final Integer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f67952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Integer f67953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AvailabilityTimeFormat f67954j;

    public /* synthetic */ SkuAvailability(String str, boolean z, boolean z2, boolean z3, ProductDisclaimer productDisclaimer, Integer num, Integer num2, Integer num3, Integer num4, AvailabilityTimeFormat availabilityTimeFormat, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? null : productDisclaimer, (i2 & 32) != 0 ? null : num, (i2 & 64) != 0 ? null : num2, (i2 & 128) != 0 ? null : num3, (i2 & 256) != 0 ? null : num4, (i2 & 512) != 0 ? null : availabilityTimeFormat, null);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuAvailability)) {
            return false;
        }
        SkuAvailability skuAvailability = (SkuAvailability) obj;
        String str = skuAvailability.f67947a;
        String str2 = this.f67947a;
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
        return zC && this.f67948b == skuAvailability.f67948b && this.f67949c == skuAvailability.f67949c && this.d == skuAvailability.d && Intrinsics.c(this.f67950e, skuAvailability.f67950e) && Intrinsics.c(this.f67951f, skuAvailability.f67951f) && Intrinsics.c(this.g, skuAvailability.g) && Intrinsics.c(this.f67952h, skuAvailability.f67952h) && Intrinsics.c(this.f67953i, skuAvailability.f67953i) && this.f67954j == skuAvailability.f67954j;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f67947a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB = o60.b(o60.b(o60.b(iHashCode * 31, 31, this.f67948b), 31, this.f67949c), 31, this.d);
        ProductDisclaimer productDisclaimer = this.f67950e;
        int iHashCode2 = (iB + (productDisclaimer == null ? 0 : productDisclaimer.hashCode())) * 31;
        Integer num = this.f67951f;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.g;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.f67952h;
        int iHashCode5 = (iHashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.f67953i;
        int iHashCode6 = (iHashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
        AvailabilityTimeFormat availabilityTimeFormat = this.f67954j;
        return iHashCode6 + (availabilityTimeFormat != null ? availabilityTimeFormat.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f67947a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        StringBuilder sbS = d21.s("SkuAvailability(sku=", str, ", inStock=", ", isBackOrder=", this.f67948b);
        fc.y(sbS, this.f67949c, ", isPreOrder=", this.d, ", disclaimer=");
        sbS.append(this.f67950e);
        sbS.append(", minValue=");
        sbS.append(this.f67951f);
        sbS.append(", maxValue=");
        sbS.append(this.g);
        sbS.append(", minLeadTime=");
        sbS.append(this.f67952h);
        sbS.append(", maxLeadTime=");
        sbS.append(this.f67953i);
        sbS.append(", leadTimeFormat=");
        sbS.append(this.f67954j);
        sbS.append(")");
        return sbS.toString();
    }

    public SkuAvailability(String str, boolean z, boolean z2, boolean z3, ProductDisclaimer productDisclaimer, Integer num, Integer num2, Integer num3, Integer num4, AvailabilityTimeFormat availabilityTimeFormat, DefaultConstructorMarker defaultConstructorMarker) {
        this.f67947a = str;
        this.f67948b = z;
        this.f67949c = z2;
        this.d = z3;
        this.f67950e = productDisclaimer;
        this.f67951f = num;
        this.g = num2;
        this.f67952h = num3;
        this.f67953i = num4;
        this.f67954j = availabilityTimeFormat;
    }
}
