package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;", "history", "ongoing", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Orders {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderList f66324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrderList f66325b;

    public Orders(OrderList orderList, OrderList orderList2) {
        this.f66324a = orderList;
        this.f66325b = orderList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Orders)) {
            return false;
        }
        Orders orders = (Orders) obj;
        return Intrinsics.c(this.f66324a, orders.f66324a) && Intrinsics.c(this.f66325b, orders.f66325b);
    }

    public final int hashCode() {
        OrderList orderList = this.f66324a;
        int iHashCode = (orderList == null ? 0 : orderList.hashCode()) * 31;
        OrderList orderList2 = this.f66325b;
        return iHashCode + (orderList2 != null ? orderList2.hashCode() : 0);
    }

    public final String toString() {
        return "Orders(history=" + this.f66324a + ", ongoing=" + this.f66325b + ")";
    }
}
