package com.vuitton.android.presentation.screen.orders.viewmodels;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.account.order.ConfirmOrderReturnUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrderReturnReasonsUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnViewState;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;", "getOrdersReasonsUseCase", "Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;", "confirmOrderReturnUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrderReturnViewModelImpl extends AndroidViewModel implements OrderReturnViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f60490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f60491c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f60492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f60493f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateFlow f60494h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public OrderReturnViewModelImpl(Application application, AnalyticsTracker analyticsTracker, NotificationBuilder notificationBuilder, GetOrderReturnReasonsUseCase getOrderReturnReasonsUseCase, ConfirmOrderReturnUseCase confirmOrderReturnUseCase) {
        super(application);
        application.getClass();
        analyticsTracker.getClass();
        notificationBuilder.getClass();
        getOrderReturnReasonsUseCase.getClass();
        confirmOrderReturnUseCase.getClass();
        ChannelKt.a(0, 7, null);
        ChannelKt.a(0, 7, null);
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(emptyList);
        this.f60490b = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.f60491c = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(0);
        this.d = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.f60492e = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.f60493f = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(emptyList);
        this.g = mutableStateFlowA6;
        new String();
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6};
        this.f60494h = FlowKt.A(new Flow<OrderReturnViewState>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl$special$$inlined$combine$1$3", f = "OrderReturnViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OrderReturnViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60497b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60498c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f60498c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60498c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60497b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        List list = (List) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        int iIntValue = ((Integer) obj4).intValue();
                        Integer num = (Integer) objArr[3];
                        OrderReturnBottomSheet orderReturnBottomSheet = (OrderReturnBottomSheet) objArr[4];
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        OrderReturnViewState orderReturnViewState = new OrderReturnViewState(list, zBooleanValue, iIntValue, num, orderReturnBottomSheet, (List) obj5);
                        this.f60498c = null;
                        this.d = null;
                        this.f60497b = 1;
                        if (flowCollector.emit(orderReturnViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), SharingStarted.Companion.a(SharingStarted.f74985a, 1), new OrderReturnViewState(null, false, 0, null, null, null, 63, null));
    }
}
