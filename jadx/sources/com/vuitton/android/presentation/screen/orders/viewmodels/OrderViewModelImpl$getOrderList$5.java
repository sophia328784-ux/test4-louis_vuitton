package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.orders.OrdersMonitoring;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.PurchaseUiModel;
import com.vuitton.android.presentation.screen.orders.models.mappers.OrderMapperKt;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final class OrderViewModelImpl$getOrderList$5<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl f60532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f60533c;

    public OrderViewModelImpl$getOrderList$5(OrderViewModelImpl orderViewModelImpl, MonitorAction monitorAction) {
        this.f60532b = orderViewModelImpl;
        this.f60533c = monitorAction;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0128  */
    /* JADX WARN: Code duplicated, block: B:58:0x013a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        OrderViewModelImpl$getOrderList$5$emit$1 orderViewModelImpl$getOrderList$5$emit$1;
        Object value;
        Throwable th;
        OrderViewModelImpl orderViewModelImpl;
        Object value2;
        PurchaseUiModel purchaseUiModel;
        Object value3;
        OrderPageUiModel orderPageUiModel;
        List list;
        OrderPageUiModel orderPageUiModel2;
        List list2;
        PurchaseUiModel purchaseUiModel2;
        PurchaseUiModel purchaseUiModel3;
        OrderViewModelImpl orderViewModelImpl2 = this.f60532b;
        MutableStateFlow mutableStateFlow = orderViewModelImpl2.z;
        if (continuation instanceof OrderViewModelImpl$getOrderList$5$emit$1) {
            orderViewModelImpl$getOrderList$5$emit$1 = (OrderViewModelImpl$getOrderList$5$emit$1) continuation;
            int i2 = orderViewModelImpl$getOrderList$5$emit$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderViewModelImpl$getOrderList$5$emit$1.g = i2 - Integer.MIN_VALUE;
            } else {
                orderViewModelImpl$getOrderList$5$emit$1 = new OrderViewModelImpl$getOrderList$5$emit$1(this, continuation);
            }
        } else {
            orderViewModelImpl$getOrderList$5$emit$1 = new OrderViewModelImpl$getOrderList$5$emit$1(this, continuation);
        }
        Object obj2 = orderViewModelImpl$getOrderList$5$emit$1.f60536e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderViewModelImpl$getOrderList$5$emit$1.g;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Object failure = ((Result) obj).f71708b;
            if (!(failure instanceof Result.Failure)) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Orders orders = (Orders) failure;
                    InAppDispatch inAppDispatch = orderViewModelImpl2.l;
                    orders.getClass();
                    inAppDispatch.getClass();
                    failure = new OrderPageUiModel(OrderMapperKt.b(orders.f66324a, inAppDispatch, false), OrderMapperKt.b(orders.f66325b, inAppDispatch, true));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th2);
                }
            }
            boolean z = failure instanceof Result.Failure;
            MonitorAction monitorAction = this.f60533c;
            if (!z) {
                OrderPageUiModel orderPageUiModel3 = (OrderPageUiModel) failure;
                PurchaseUiModel purchaseUiModel4 = orderPageUiModel3.f60281b;
                mutableStateFlow.setValue(orderPageUiModel3);
                MutableStateFlow mutableStateFlow2 = orderViewModelImpl2.y;
                do {
                    value2 = mutableStateFlow2.getValue();
                    ((Boolean) value2).getClass();
                    purchaseUiModel = orderPageUiModel3.f60280a;
                } while (!mutableStateFlow2.i(value2, Boolean.valueOf(purchaseUiModel4.f60390a.isEmpty() && purchaseUiModel.f60390a.isEmpty())));
                MutableStateFlow mutableStateFlow3 = orderViewModelImpl2.t;
                do {
                    value3 = mutableStateFlow3.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                monitorAction.c(new Integer(purchaseUiModel4.f60390a.size()), "OngoingOrderNumber");
                monitorAction.c(new Integer(purchaseUiModel.f60390a.size()), "HistoryOrderNumber");
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                MutableStateFlow mutableStateFlow4 = orderViewModelImpl2.w;
                do {
                    value = mutableStateFlow4.getValue();
                    ((Boolean) value).getClass();
                } while (!mutableStateFlow4.i(value, Boolean.TRUE));
                monitorAction.d(new OrdersMonitoring.Error.OpenMyOrdersError(thA));
                orderViewModelImpl$getOrderList$5$emit$1.f60534b = failure;
                orderViewModelImpl$getOrderList$5$emit$1.f60535c = orderViewModelImpl2;
                orderViewModelImpl$getOrderList$5$emit$1.d = thA;
                orderViewModelImpl$getOrderList$5$emit$1.g = 1;
                if (orderViewModelImpl2.Dc(thA, orderViewModelImpl$getOrderList$5$emit$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                th = thA;
                orderViewModelImpl = orderViewModelImpl2;
            }
            orderPageUiModel = (OrderPageUiModel) mutableStateFlow.getValue();
            if (orderPageUiModel != null || (purchaseUiModel3 = orderPageUiModel.f60281b) == null || (list = purchaseUiModel3.f60390a) == null) {
                list = EmptyList.f71768b;
            }
            orderPageUiModel2 = (OrderPageUiModel) mutableStateFlow.getValue();
            if (orderPageUiModel2 != null || (purchaseUiModel2 = orderPageUiModel2.f60280a) == null || (list2 = purchaseUiModel2.f60390a) == null) {
                list2 = EmptyList.f71768b;
            }
            orderViewModelImpl2.f60502b.a(OrderTrackingUiModelKt.a(new OrderTrackingUiModel.ListPage(list, list2)));
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        th = orderViewModelImpl$getOrderList$5$emit$1.d;
        orderViewModelImpl = orderViewModelImpl$getOrderList$5$emit$1.f60535c;
        ResultKt.b(obj2);
        orderViewModelImpl.f60501a.c(orderViewModelImpl.f60509k, th.getMessage(), th);
        orderPageUiModel = (OrderPageUiModel) mutableStateFlow.getValue();
        if (orderPageUiModel != null) {
            list = EmptyList.f71768b;
        } else {
            list = EmptyList.f71768b;
        }
        orderPageUiModel2 = (OrderPageUiModel) mutableStateFlow.getValue();
        if (orderPageUiModel2 != null) {
            list2 = EmptyList.f71768b;
        } else {
            list2 = EmptyList.f71768b;
        }
        orderViewModelImpl2.f60502b.a(OrderTrackingUiModelKt.a(new OrderTrackingUiModel.ListPage(list, list2)));
        return Unit.f71739a;
    }
}
