package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource;
import com.vuitton.android.data.datasource.orders.OrdersLocalDataSource;
import com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource;
import com.vuitton.android.domain.repository.OrderRepository;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import com.vuitton.foundation.model.domain.model.account.orders.PurchasedOrder;
import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupPost;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/OrderRepositoryImpl;", "Lcom/vuitton/android/domain/repository/OrderRepository;", "Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;", "ordersRemoteDataSource", "Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;", "ordersLocalDataSource", "Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;", "invoiceRemoteDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrderRepositoryImpl implements OrderRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrdersRemoteDataSource f47811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrdersLocalDataSource f47812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InvoiceRemoteDataSource f47813c;

    @Inject
    public OrderRepositoryImpl(OrdersRemoteDataSource ordersRemoteDataSource, OrdersLocalDataSource ordersLocalDataSource, InvoiceRemoteDataSource invoiceRemoteDataSource) {
        ordersRemoteDataSource.getClass();
        ordersLocalDataSource.getClass();
        invoiceRemoteDataSource.getClass();
        this.f47811a = ordersRemoteDataSource;
        this.f47812b = ordersLocalDataSource;
        this.f47813c = invoiceRemoteDataSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList] */
    public static final Orders k(OrderRepositoryImpl orderRepositoryImpl, Orders orders) {
        ?? arrayList;
        List list;
        List list2;
        OrderList orderList = orders.f66324a;
        OrderList orderList2 = orders.f66325b;
        if (orderList == null || (list = orderList.f66314a) == null) {
            arrayList = EmptyList.f71768b;
        } else {
            arrayList = new ArrayList();
            for (Object obj : list) {
                PurchasedOrder purchasedOrder = (PurchasedOrder) obj;
                if (orderList2 != null && (list2 = orderList2.f66314a) != null) {
                    List list3 = list2;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        do {
                            if (it.hasNext()) {
                            }
                        } while (!Intrinsics.c(((PurchasedOrder) it.next()).d, purchasedOrder.d));
                    }
                }
                arrayList.add(obj);
            }
        }
        return new Orders(orders.f66324a != null ? new OrderList(arrayList, arrayList.size()) : null, orderList2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object l(OrderRepositoryImpl orderRepositoryImpl, ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1 orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;
        Object objE;
        if (continuationImpl instanceof OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1) {
            orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1 = (OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1) continuationImpl;
            int i2 = orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1 = new OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1(orderRepositoryImpl, continuationImpl);
            }
        } else {
            orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1 = new OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1(orderRepositoryImpl, continuationImpl);
        }
        Object obj = orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1.f47818b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            OrdersRemoteDataSource ordersRemoteDataSource = orderRepositoryImpl.f47811a;
            orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1.d = 1;
            objE = ordersRemoteDataSource.e(orderRepositoryImpl$getAndCacheRemoteOngoingOrders$1);
            if (objE == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objE = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        OrderList orderList = (OrderList) (objE instanceof Result.Failure ? null : objE);
        if (orderList != null) {
            OrdersLocalDataSource ordersLocalDataSource = orderRepositoryImpl.f47812b;
            ordersLocalDataSource.getClass();
            ordersLocalDataSource.f44136a = orderList;
        }
        return objE;
    }

    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Unit a() {
        OrdersLocalDataSource ordersLocalDataSource = this.f47812b;
        ordersLocalDataSource.f44136a = null;
        ordersLocalDataSource.f44137b = null;
        ordersLocalDataSource.f44138c = null;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$submitExchange$1 orderRepositoryImpl$submitExchange$1;
        if (continuationImpl instanceof OrderRepositoryImpl$submitExchange$1) {
            orderRepositoryImpl$submitExchange$1 = (OrderRepositoryImpl$submitExchange$1) continuationImpl;
            int i2 = orderRepositoryImpl$submitExchange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$submitExchange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$submitExchange$1 = new OrderRepositoryImpl$submitExchange$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$submitExchange$1 = new OrderRepositoryImpl$submitExchange$1(this, continuationImpl);
        }
        Object obj = orderRepositoryImpl$submitExchange$1.f47835b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$submitExchange$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$submitExchange$1.d = 1;
            Object objL = this.f47811a.l(str, orderRepositoryImpl$submitExchange$1);
            return objL == coroutineSingletons ? coroutineSingletons : objL;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object c(ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$getReturnReasons$1 orderRepositoryImpl$getReturnReasons$1;
        if (continuationImpl instanceof OrderRepositoryImpl$getReturnReasons$1) {
            orderRepositoryImpl$getReturnReasons$1 = (OrderRepositoryImpl$getReturnReasons$1) continuationImpl;
            int i2 = orderRepositoryImpl$getReturnReasons$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$getReturnReasons$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$getReturnReasons$1 = new OrderRepositoryImpl$getReturnReasons$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$getReturnReasons$1 = new OrderRepositoryImpl$getReturnReasons$1(this, continuationImpl);
        }
        Object obj = orderRepositoryImpl$getReturnReasons$1.f47831b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$getReturnReasons$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$getReturnReasons$1.d = 1;
            Object objI = this.f47811a.i(orderRepositoryImpl$getReturnReasons$1);
            return objI == coroutineSingletons ? coroutineSingletons : objI;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object d(ExchangeSetupPost exchangeSetupPost, ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$setupExchange$1 orderRepositoryImpl$setupExchange$1;
        if (continuationImpl instanceof OrderRepositoryImpl$setupExchange$1) {
            orderRepositoryImpl$setupExchange$1 = (OrderRepositoryImpl$setupExchange$1) continuationImpl;
            int i2 = orderRepositoryImpl$setupExchange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$setupExchange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$setupExchange$1 = new OrderRepositoryImpl$setupExchange$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$setupExchange$1 = new OrderRepositoryImpl$setupExchange$1(this, continuationImpl);
        }
        Object obj = orderRepositoryImpl$setupExchange$1.f47833b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$setupExchange$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$setupExchange$1.d = 1;
            Object objK = this.f47811a.k(exchangeSetupPost, orderRepositoryImpl$setupExchange$1);
            return objK == coroutineSingletons ? coroutineSingletons : objK;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final ResultStrategyLazy e() {
        return new ResultStrategyLazy(new OrderRepositoryImpl$getOrdersHistoryPersonalization$2(this, null), new OrderRepositoryImpl$getOrdersHistoryPersonalization$3(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object f(List list, ContinuationImpl continuationImpl) throws Throwable {
        OrderRepositoryImpl$confirmReturn$1 orderRepositoryImpl$confirmReturn$1;
        if (continuationImpl instanceof OrderRepositoryImpl$confirmReturn$1) {
            orderRepositoryImpl$confirmReturn$1 = (OrderRepositoryImpl$confirmReturn$1) continuationImpl;
            int i2 = orderRepositoryImpl$confirmReturn$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$confirmReturn$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$confirmReturn$1 = new OrderRepositoryImpl$confirmReturn$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$confirmReturn$1 = new OrderRepositoryImpl$confirmReturn$1(this, continuationImpl);
        }
        Object obj = orderRepositoryImpl$confirmReturn$1.f47814b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$confirmReturn$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$confirmReturn$1.d = 1;
            Object objB = this.f47811a.b(list, orderRepositoryImpl$confirmReturn$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final ResultStrategyLazy g() {
        return new ResultStrategyLazy(new OrderRepositoryImpl$getOrders$2(this, null), new OrderRepositoryImpl$getOrders$3(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object h(String str, double d, double d2, ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$getExchangeVariations$1 orderRepositoryImpl$getExchangeVariations$1;
        if (continuationImpl instanceof OrderRepositoryImpl$getExchangeVariations$1) {
            orderRepositoryImpl$getExchangeVariations$1 = (OrderRepositoryImpl$getExchangeVariations$1) continuationImpl;
            int i2 = orderRepositoryImpl$getExchangeVariations$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$getExchangeVariations$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$getExchangeVariations$1 = new OrderRepositoryImpl$getExchangeVariations$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$getExchangeVariations$1 = new OrderRepositoryImpl$getExchangeVariations$1(this, continuationImpl);
        }
        OrderRepositoryImpl$getExchangeVariations$1 orderRepositoryImpl$getExchangeVariations$2 = orderRepositoryImpl$getExchangeVariations$1;
        Object obj = orderRepositoryImpl$getExchangeVariations$2.f47820b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$getExchangeVariations$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$getExchangeVariations$2.d = 1;
            Object objD = this.f47811a.d(str, d, d2, orderRepositoryImpl$getExchangeVariations$2);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final Object i(String str, String str2, boolean z, ContinuationImpl continuationImpl) {
        OrderRepositoryImpl$downloadInvoice$1 orderRepositoryImpl$downloadInvoice$1;
        if (continuationImpl instanceof OrderRepositoryImpl$downloadInvoice$1) {
            orderRepositoryImpl$downloadInvoice$1 = (OrderRepositoryImpl$downloadInvoice$1) continuationImpl;
            int i2 = orderRepositoryImpl$downloadInvoice$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderRepositoryImpl$downloadInvoice$1.d = i2 - Integer.MIN_VALUE;
            } else {
                orderRepositoryImpl$downloadInvoice$1 = new OrderRepositoryImpl$downloadInvoice$1(this, continuationImpl);
            }
        } else {
            orderRepositoryImpl$downloadInvoice$1 = new OrderRepositoryImpl$downloadInvoice$1(this, continuationImpl);
        }
        Object obj = orderRepositoryImpl$downloadInvoice$1.f47816b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderRepositoryImpl$downloadInvoice$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            orderRepositoryImpl$downloadInvoice$1.d = 1;
            Object objA = this.f47813c.a(str, str2, z, orderRepositoryImpl$downloadInvoice$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.OrderRepository
    public final ResultStrategyLazy j() {
        return new ResultStrategyLazy(new OrderRepositoryImpl$getOngoingOrders$2(this, null), new OrderRepositoryImpl$getOngoingOrders$3(1, this.f47812b, OrdersLocalDataSource.class, "getOngoingOrders", "getOngoingOrders-xLWZpok()Lkotlin/Result;", 4));
    }
}
