package com.vuitton.foundation.model.domain.model.account.orders;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;", "", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;", "orders", "", "totalNumberOfItems", "<init>", "(Ljava/util/List;I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f66315b;

    public OrderList(List<PurchasedOrder> list, int i2) {
        list.getClass();
        this.f66314a = list;
        this.f66315b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderList)) {
            return false;
        }
        OrderList orderList = (OrderList) obj;
        return Intrinsics.c(this.f66314a, orderList.f66314a) && this.f66315b == orderList.f66315b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f66315b) + (this.f66314a.hashCode() * 31);
    }

    public final String toString() {
        return "OrderList(orders=" + this.f66314a + ", totalNumberOfItems=" + this.f66315b + ")";
    }
}
