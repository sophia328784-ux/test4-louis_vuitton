package com.vuitton.foundation.model.domain.model.account.orders;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;", "", "", "shippingGroupId", "reasonCode", "locationId", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66321c;
    public final String d;

    public OrderReturnItem(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f66319a = str;
        this.f66320b = str2;
        this.f66321c = str3;
        this.d = str4;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnItem)) {
            return false;
        }
        OrderReturnItem orderReturnItem = (OrderReturnItem) obj;
        if (!Intrinsics.c(this.f66319a, orderReturnItem.f66319a) || !Intrinsics.c(this.f66320b, orderReturnItem.f66320b) || !Intrinsics.c(this.f66321c, orderReturnItem.f66321c)) {
            return false;
        }
        String str = orderReturnItem.d;
        String str2 = this.d;
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
        return zC;
    }

    public final int hashCode() {
        int iHashCode;
        int iB = fc.b(fc.b(this.f66319a.hashCode() * 31, 31, this.f66320b), 31, this.f66321c);
        String str = this.d;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        return iB + iHashCode;
    }

    public final String toString() {
        String str = this.d;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return tr.l(fc.s("OrderReturnItem(shippingGroupId=", this.f66319a, ", reasonCode=", this.f66320b, ", locationId="), this.f66321c, ", sku=", str, ")");
    }

    public /* synthetic */ OrderReturnItem(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : str4, null);
    }
}
