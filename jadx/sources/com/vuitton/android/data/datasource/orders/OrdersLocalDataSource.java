package com.vuitton.android.data.datasource.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrdersLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OrderList f44136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OrderList f44137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductTiny f44138c;

    @Inject
    public OrdersLocalDataSource() {
    }

    public final Result a() {
        OrderList orderList = this.f44136a;
        List list = orderList != null ? orderList.f66314a : null;
        if (list == null || list.isEmpty()) {
            OrderList orderList2 = this.f44137b;
            List list2 = orderList2 != null ? orderList2.f66314a : null;
            if (list2 == null || list2.isEmpty()) {
                return null;
            }
        }
        Result.Companion companion = Result.INSTANCE;
        return new Result(new Orders(this.f44137b, this.f44136a));
    }
}
