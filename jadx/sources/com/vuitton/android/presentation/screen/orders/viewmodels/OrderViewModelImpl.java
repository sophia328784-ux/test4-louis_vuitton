package com.vuitton.android.presentation.screen.orders.viewmodels;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.orders.OrdersMonitoring;
import com.vuitton.android.domain.usecase.account.order.ClearOrdersCacheUseCase;
import com.vuitton.android.domain.usecase.account.order.GetInvoiceUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrdersUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.orders.models.DeliveryUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderFeatureFlags;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.ShortcutDisplayUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.models.mappers.OrderMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.account.AccountUnderProcessException;
import com.vuitton.foundation.model.domain.error.account.NoShippingGroupFoundException;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;", "getOrdersUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;", "getOngoingOrdersUseCase", "Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;", "clearOrdersCacheUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;", "getInvoiceUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrderViewModelImpl extends ViewModel implements OrderViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final StateFlow E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f60501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f60502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f60503c;
    public final RequireCachedAppConfigUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f60504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetOrdersUseCase f60505f;
    public final GetOngoingOrdersUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ClearOrdersCacheUseCase f60506h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetInvoiceUseCase f60507i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final NotificationBuilder f60508j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f60509k;
    public final InAppDispatch l;
    public final BufferedChannel m;
    public final BufferedChannel n;
    public final BufferedChannel o;
    public final Flow p;
    public String q;
    public TransactionItemUiModel r;
    public final String s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$1", f = "OrderViewModelImpl.kt", l = {146, 149, 151, 152}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ OrderViewModelImpl f60511c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, OrderViewModelImpl orderViewModelImpl) {
            super(2, continuation);
            this.f60511c = orderViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f60511c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
        
            if (com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.zc(r2, r7) == r0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
        
            if (com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.yc(r2, r7) == r0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        
            if (com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.Ac(r2, r7) == r0) goto L28;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r7.f60510b
                com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl r2 = r7.f60511c
                r3 = 4
                r4 = 3
                r5 = 2
                r6 = 1
                if (r1 == 0) goto L24
                if (r1 == r6) goto L20
                if (r1 == r5) goto L1c
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L15
                goto L1c
            L15:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r7)
                r7 = 0
                return r7
            L1c:
                kotlin.ResultKt.b(r8)
                goto L53
            L20:
                kotlin.ResultKt.b(r8)
                goto L30
            L24:
                kotlin.ResultKt.b(r8)
                r7.f60510b = r6
                java.lang.Object r8 = com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.Bc(r2, r7)
                if (r8 != r0) goto L30
                goto L52
            L30:
                java.lang.String r8 = r2.s
                if (r8 == 0) goto L3d
                r7.f60510b = r5
                java.lang.Object r7 = com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.zc(r2, r7)
                if (r7 != r0) goto L53
                goto L52
            L3d:
                java.lang.String r8 = r2.q
                if (r8 == 0) goto L4a
                r7.f60510b = r4
                java.lang.Object r7 = com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.yc(r2, r7)
                if (r7 != r0) goto L53
                goto L52
            L4a:
                r7.f60510b = r3
                java.lang.Object r7 = com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.Ac(r2, r7)
                if (r7 != r0) goto L53
            L52:
                return r0
            L53:
                kotlin.Unit r7 = kotlin.Unit.f71739a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public OrderViewModelImpl(SavedStateHandle savedStateHandle, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetOrdersUseCase getOrdersUseCase, GetOngoingOrdersUseCase getOngoingOrdersUseCase, ClearOrdersCacheUseCase clearOrdersCacheUseCase, GetInvoiceUseCase getInvoiceUseCase, NotificationBuilder notificationBuilder) {
        savedStateHandle.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getOrdersUseCase.getClass();
        getOngoingOrdersUseCase.getClass();
        clearOrdersCacheUseCase.getClass();
        getInvoiceUseCase.getClass();
        notificationBuilder.getClass();
        this.f60501a = logger;
        this.f60502b = analyticsTracker;
        this.f60503c = monitor;
        this.d = requireCachedAppConfigUseCase;
        this.f60504e = isFeatureAvailableUseCase;
        this.f60505f = getOrdersUseCase;
        this.g = getOngoingOrdersUseCase;
        this.f60506h = clearOrdersCacheUseCase;
        this.f60507i = getInvoiceUseCase;
        this.f60508j = notificationBuilder;
        this.f60509k = "OrderViewModelImpl";
        this.l = requireUserInAppDispatchUseCase.f49912a.b();
        this.m = ChannelKt.a(0, 7, null);
        this.n = ChannelKt.a(0, 7, null);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.o = bufferedChannelA;
        this.p = FlowKt.y(bufferedChannelA);
        this.q = (String) savedStateHandle.a("transactionId");
        this.r = (TransactionItemUiModel) savedStateHandle.a("item");
        this.s = (String) savedStateHandle.a("shippingGroupId");
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.t = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.u = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.v = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.w = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.x = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.z = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.A = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.B = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.C = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(new OrderFeatureFlags(false, false, false, false, false, 31, null));
        this.D = mutableStateFlowA11;
        final Flow[] flowArr = {mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA, mutableStateFlowA3, mutableStateFlowA2, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA11};
        this.E = FlowKt.A(new Flow<OrderViewState>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$special$$inlined$combine$1$3", f = "OrderViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OrderViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60549b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60550c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ OrderViewModelImpl f60551e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, OrderViewModelImpl orderViewModelImpl) {
                    super(3, continuation);
                    this.f60551e = orderViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f60551e);
                    anonymousClass3.f60550c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    String str;
                    DeliveryUiModel deliveryUiModel;
                    String str2;
                    FlowCollector flowCollector = this.f60550c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60549b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        TransactionUiModel transactionUiModel = (TransactionUiModel) objArr[2];
                        TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) objArr[3];
                        Object obj2 = objArr[10];
                        obj2.getClass();
                        OrderFeatureFlags orderFeatureFlags = (OrderFeatureFlags) obj2;
                        OrderPageUiModel orderPageUiModel = (OrderPageUiModel) objArr[0];
                        PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) objArr[1];
                        TransactionUiModel transactionUiModel2 = (TransactionUiModel) objArr[2];
                        TransactionItemUiModel transactionItemUiModel2 = (TransactionItemUiModel) objArr[3];
                        Object obj3 = objArr[4];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[5];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[6];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[7];
                        obj6.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[8];
                        obj7.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[9];
                        obj8.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[10];
                        obj9.getClass();
                        OrderFeatureFlags orderFeatureFlags2 = (OrderFeatureFlags) obj9;
                        this.f60551e.getClass();
                        SetBuilder setBuilder = new SetBuilder();
                        if (transactionUiModel != null && (deliveryUiModel = transactionUiModel.g) != null && (str2 = deliveryUiModel.d) != null && (!StringsKt.w(str2)) && (transactionItemUiModel == null || !transactionItemUiModel.n)) {
                            setBuilder.add(ShortcutDisplayUiModel.TRACK_ORDER);
                        }
                        if (orderFeatureFlags.d && transactionUiModel != null && (str = transactionUiModel.d) != null && str.length() > 0) {
                            setBuilder.add(ShortcutDisplayUiModel.DOWNLOAD_INVOICE);
                        }
                        if (transactionUiModel != null && transactionUiModel.f60427i && (transactionItemUiModel == null || !transactionItemUiModel.n)) {
                            boolean z = orderFeatureFlags.f60276a;
                            if (orderFeatureFlags.f60277b && transactionItemUiModel != null && transactionItemUiModel.f60415e) {
                                setBuilder.add(ShortcutDisplayUiModel.REQUEST_RETURN_OR_EXCHANGE);
                            } else if (z) {
                                setBuilder.add(ShortcutDisplayUiModel.REQUEST_RETURN);
                            }
                        }
                        OrderViewState orderViewState = new OrderViewState(orderPageUiModel, purchasedOrderUiModel, transactionUiModel2, transactionItemUiModel2, zBooleanValue, zBooleanValue4, zBooleanValue2, zBooleanValue3, zBooleanValue5, zBooleanValue6, orderFeatureFlags2, SetsKt.a(setBuilder));
                        this.f60550c = null;
                        this.d = null;
                        this.f60549b = 1;
                        if (flowCollector.emit(orderViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), SharingStarted.Companion.a(SharingStarted.f74985a, 1), new OrderViewState(null, null, null, null, false, false, false, false, false, false, null, null, 4095, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Ac(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        OrderViewModelImpl$getOrderList$1 orderViewModelImpl$getOrderList$1;
        MonitorAction monitorActionA;
        Object value;
        Object value2;
        Object value3;
        Object objG;
        MonitorAction monitorAction;
        if (continuationImpl instanceof OrderViewModelImpl$getOrderList$1) {
            orderViewModelImpl$getOrderList$1 = (OrderViewModelImpl$getOrderList$1) continuationImpl;
            int i2 = orderViewModelImpl$getOrderList$1.f60531e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderViewModelImpl$getOrderList$1.f60531e = i2 - Integer.MIN_VALUE;
            } else {
                orderViewModelImpl$getOrderList$1 = new OrderViewModelImpl$getOrderList$1(orderViewModelImpl, continuationImpl);
            }
        } else {
            orderViewModelImpl$getOrderList$1 = new OrderViewModelImpl$getOrderList$1(orderViewModelImpl, continuationImpl);
        }
        Object obj = orderViewModelImpl$getOrderList$1.f60530c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderViewModelImpl$getOrderList$1.f60531e;
        if (i3 != 0) {
            if (i3 == 1) {
                MonitorAction monitorAction2 = orderViewModelImpl$getOrderList$1.f60529b;
                ResultKt.b(obj);
                objG = obj;
                monitorActionA = monitorAction2;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                monitorAction = orderViewModelImpl$getOrderList$1.f60529b;
                ResultKt.b(obj);
            }
            monitorAction.b();
            return Unit.f71739a;
        }
        ResultKt.b(obj);
        monitorActionA = orderViewModelImpl.f60503c.a(orderViewModelImpl.l, OrdersMonitoring.Action.OpenMyOrders.f48954a);
        MutableStateFlow mutableStateFlow = orderViewModelImpl.t;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        MutableStateFlow mutableStateFlow2 = orderViewModelImpl.w;
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        MutableStateFlow mutableStateFlow3 = orderViewModelImpl.x;
        do {
            value3 = mutableStateFlow3.getValue();
            ((Boolean) value3).getClass();
        } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
        GetOrdersUseCase getOrdersUseCase = orderViewModelImpl.f60505f;
        orderViewModelImpl$getOrderList$1.f60529b = monitorActionA;
        orderViewModelImpl$getOrderList$1.f60531e = 1;
        objG = getOrdersUseCase.f49124a.g();
        if (objG != coroutineSingletons) {
        }
        return coroutineSingletons;
        Flow flowD = ((ResultStrategy) objG).d();
        OrderViewModelImpl$getOrderList$5 orderViewModelImpl$getOrderList$5 = new OrderViewModelImpl$getOrderList$5(orderViewModelImpl, monitorActionA);
        orderViewModelImpl$getOrderList$1.f60529b = monitorActionA;
        orderViewModelImpl$getOrderList$1.f60531e = 2;
        if (((AbstractFlow) flowD).f(orderViewModelImpl$getOrderList$5, orderViewModelImpl$getOrderList$1) != coroutineSingletons) {
            monitorAction = monitorActionA;
            monitorAction.b();
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:38:0x0101  */
    /* JADX WARN: Code duplicated, block: B:42:0x0138  */
    /* JADX WARN: Code duplicated, block: B:45:0x0147  */
    /* JADX WARN: Code duplicated, block: B:46:0x014a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0157  */
    /* JADX WARN: Code duplicated, block: B:51:0x015a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0138 -> B:15:0x0047). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object Bc(com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.Bc(com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0074 A[PHI: r11
      0x0074: PHI (r11v12 java.lang.Object) = (r11v8 java.lang.Object), (r11v11 java.lang.Object), (r11v16 java.lang.Object) binds: [B:20:0x004a, B:25:0x0070, B:16:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:49:0x00db  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:61:0x0107  */
    /* JADX WARN: Code duplicated, block: B:65:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd A[EDGE_INSN: B:68:0x00cd->B:46:0x00cd BREAK  A[LOOP:0: B:32:0x0092->B:69:0x0092, LOOP_LABEL: LOOP:0: B:32:0x0092->B:69:0x0092], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:? A[LOOP:1: B:40:0x00b5->B:72:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        OrderViewModelImpl$getOrderDetailData$1 orderViewModelImpl$getOrderDetailData$1;
        Object failure;
        Throwable thA;
        Throwable th;
        OrderList orderList;
        TransactionItemUiModel transactionItemUiModel;
        TransactionUiModel transactionUiModel;
        List list;
        Iterator it;
        Object next;
        List list2;
        Iterator it2;
        if (continuationImpl instanceof OrderViewModelImpl$getOrderDetailData$1) {
            orderViewModelImpl$getOrderDetailData$1 = (OrderViewModelImpl$getOrderDetailData$1) continuationImpl;
            int i2 = orderViewModelImpl$getOrderDetailData$1.f60525f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderViewModelImpl$getOrderDetailData$1.f60525f = i2 - Integer.MIN_VALUE;
            } else {
                orderViewModelImpl$getOrderDetailData$1 = new OrderViewModelImpl$getOrderDetailData$1(orderViewModelImpl, continuationImpl);
            }
        } else {
            orderViewModelImpl$getOrderDetailData$1 = new OrderViewModelImpl$getOrderDetailData$1(orderViewModelImpl, continuationImpl);
        }
        Object objJ = orderViewModelImpl$getOrderDetailData$1.d;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderViewModelImpl$getOrderDetailData$1.f60525f;
        if (i3 == 0) {
            ResultKt.b(objJ);
            if (orderViewModelImpl.q == null) {
                Result.Companion companion = Result.INSTANCE;
                failure = new Result.Failure(new IllegalStateException("transactionIdParam must not be null"));
                Result.Companion companion2 = Result.INSTANCE;
                if (!(failure instanceof Result.Failure)) {
                    orderList = (OrderList) failure;
                    if (orderViewModelImpl.q != null) {
                        MutableStateFlow mutableStateFlow = orderViewModelImpl.A;
                        it = OrderMapperKt.b(orderList, orderViewModelImpl.l, false).f60390a.iterator();
                        loop0: while (true) {
                            if (it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            list2 = ((PurchasedOrderUiModel) next).d;
                            if (list2 instanceof Collection) {
                            }
                            it2 = list2.iterator();
                            while (it2.hasNext()) {
                                if (Intrinsics.c(((TransactionUiModel) it2.next()).f60421a, orderViewModelImpl.q)) {
                                    break loop0;
                                    break loop0;
                                }
                            }
                        }
                        mutableStateFlow.setValue(next);
                        orderViewModelImpl.Ec(orderViewModelImpl.q);
                    }
                    MutableStateFlow mutableStateFlow2 = orderViewModelImpl.C;
                    transactionItemUiModel = orderViewModelImpl.r;
                    if (transactionItemUiModel == null) {
                        transactionUiModel = (TransactionUiModel) orderViewModelImpl.B.getValue();
                        if (transactionUiModel != null) {
                            transactionItemUiModel = null;
                        } else {
                            transactionItemUiModel = null;
                        }
                    }
                    mutableStateFlow2.setValue(transactionItemUiModel);
                }
                thA = Result.a(failure);
                if (thA != null) {
                    orderViewModelImpl$getOrderDetailData$1.f60522b = failure;
                    orderViewModelImpl$getOrderDetailData$1.f60523c = thA;
                    orderViewModelImpl$getOrderDetailData$1.f60525f = 3;
                    if (orderViewModelImpl.Dc(thA, orderViewModelImpl$getOrderDetailData$1) != obj) {
                        th = thA;
                        orderViewModelImpl.f60501a.c(orderViewModelImpl.f60509k, th.getMessage(), null);
                    }
                }
            } else {
                GetOngoingOrdersUseCase getOngoingOrdersUseCase = orderViewModelImpl.g;
                orderViewModelImpl$getOrderDetailData$1.f60525f = 1;
                objJ = getOngoingOrdersUseCase.f49119a.j();
                if (objJ != obj) {
                    orderViewModelImpl$getOrderDetailData$1.f60525f = 2;
                    failure = ((ResultStrategy) objJ).c(orderViewModelImpl$getOrderDetailData$1);
                    if (failure != obj) {
                        Result.Companion companion3 = Result.INSTANCE;
                        if (!(failure instanceof Result.Failure)) {
                            orderList = (OrderList) failure;
                            if (orderViewModelImpl.q != null) {
                                MutableStateFlow mutableStateFlow3 = orderViewModelImpl.A;
                                it = OrderMapperKt.b(orderList, orderViewModelImpl.l, false).f60390a.iterator();
                                loop0: while (true) {
                                    if (it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                    list2 = ((PurchasedOrderUiModel) next).d;
                                    if (list2 instanceof Collection) {
                                    }
                                    it2 = list2.iterator();
                                    while (it2.hasNext()) {
                                        if (Intrinsics.c(((TransactionUiModel) it2.next()).f60421a, orderViewModelImpl.q)) {
                                            break loop0;
                                            break loop0;
                                        }
                                    }
                                }
                                mutableStateFlow3.setValue(next);
                                orderViewModelImpl.Ec(orderViewModelImpl.q);
                            }
                            MutableStateFlow mutableStateFlow4 = orderViewModelImpl.C;
                            transactionItemUiModel = orderViewModelImpl.r;
                            if (transactionItemUiModel == null) {
                                transactionUiModel = (TransactionUiModel) orderViewModelImpl.B.getValue();
                                if (transactionUiModel != null) {
                                    transactionItemUiModel = null;
                                } else {
                                    transactionItemUiModel = null;
                                }
                            }
                            mutableStateFlow4.setValue(transactionItemUiModel);
                        }
                        thA = Result.a(failure);
                        if (thA != null) {
                            orderViewModelImpl$getOrderDetailData$1.f60522b = failure;
                            orderViewModelImpl$getOrderDetailData$1.f60523c = thA;
                            orderViewModelImpl$getOrderDetailData$1.f60525f = 3;
                            if (orderViewModelImpl.Dc(thA, orderViewModelImpl$getOrderDetailData$1) != obj) {
                                th = thA;
                                orderViewModelImpl.f60501a.c(orderViewModelImpl.f60509k, th.getMessage(), null);
                            }
                        }
                    }
                }
            }
            return obj;
        }
        if (i3 == 1) {
            ResultKt.b(objJ);
            orderViewModelImpl$getOrderDetailData$1.f60525f = 2;
            failure = ((ResultStrategy) objJ).c(orderViewModelImpl$getOrderDetailData$1);
            if (failure != obj) {
                Result.Companion companion4 = Result.INSTANCE;
                if (!(failure instanceof Result.Failure)) {
                    orderList = (OrderList) failure;
                    if (orderViewModelImpl.q != null) {
                        MutableStateFlow mutableStateFlow5 = orderViewModelImpl.A;
                        it = OrderMapperKt.b(orderList, orderViewModelImpl.l, false).f60390a.iterator();
                        loop0: while (true) {
                            if (it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            list2 = ((PurchasedOrderUiModel) next).d;
                            if (list2 instanceof Collection) {
                            }
                            it2 = list2.iterator();
                            while (it2.hasNext()) {
                                if (Intrinsics.c(((TransactionUiModel) it2.next()).f60421a, orderViewModelImpl.q)) {
                                    break loop0;
                                    break loop0;
                                }
                            }
                        }
                        mutableStateFlow5.setValue(next);
                        orderViewModelImpl.Ec(orderViewModelImpl.q);
                    }
                    MutableStateFlow mutableStateFlow6 = orderViewModelImpl.C;
                    transactionItemUiModel = orderViewModelImpl.r;
                    if (transactionItemUiModel == null) {
                        transactionUiModel = (TransactionUiModel) orderViewModelImpl.B.getValue();
                        if (transactionUiModel != null) {
                            transactionItemUiModel = null;
                        } else {
                            transactionItemUiModel = null;
                        }
                    }
                    mutableStateFlow6.setValue(transactionItemUiModel);
                }
                thA = Result.a(failure);
                if (thA != null) {
                    orderViewModelImpl$getOrderDetailData$1.f60522b = failure;
                    orderViewModelImpl$getOrderDetailData$1.f60523c = thA;
                    orderViewModelImpl$getOrderDetailData$1.f60525f = 3;
                    if (orderViewModelImpl.Dc(thA, orderViewModelImpl$getOrderDetailData$1) != obj) {
                        th = thA;
                    }
                }
            }
            return obj;
        }
        if (i3 == 2) {
            ResultKt.b(objJ);
            failure = ((Result) objJ).f71708b;
            Result.Companion companion5 = Result.INSTANCE;
            if (!(failure instanceof Result.Failure)) {
                orderList = (OrderList) failure;
                if (orderViewModelImpl.q != null) {
                    MutableStateFlow mutableStateFlow7 = orderViewModelImpl.A;
                    it = OrderMapperKt.b(orderList, orderViewModelImpl.l, false).f60390a.iterator();
                    loop0: while (true) {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        list2 = ((PurchasedOrderUiModel) next).d;
                        if ((list2 instanceof Collection) || !list2.isEmpty()) {
                            it2 = list2.iterator();
                            while (it2.hasNext()) {
                                if (Intrinsics.c(((TransactionUiModel) it2.next()).f60421a, orderViewModelImpl.q)) {
                                    break loop0;
                                }
                            }
                        }
                    }
                    mutableStateFlow7.setValue(next);
                    orderViewModelImpl.Ec(orderViewModelImpl.q);
                }
                MutableStateFlow mutableStateFlow8 = orderViewModelImpl.C;
                transactionItemUiModel = orderViewModelImpl.r;
                if (transactionItemUiModel == null) {
                    transactionUiModel = (TransactionUiModel) orderViewModelImpl.B.getValue();
                    if (transactionUiModel != null || (list = transactionUiModel.f60424e) == null) {
                        transactionItemUiModel = null;
                    } else {
                        transactionItemUiModel = (TransactionItemUiModel) CollectionsKt.firstOrNull(list);
                    }
                }
                mutableStateFlow8.setValue(transactionItemUiModel);
            }
            thA = Result.a(failure);
            if (thA != null) {
                orderViewModelImpl$getOrderDetailData$1.f60522b = failure;
                orderViewModelImpl$getOrderDetailData$1.f60523c = thA;
                orderViewModelImpl$getOrderDetailData$1.f60525f = 3;
                if (orderViewModelImpl.Dc(thA, orderViewModelImpl$getOrderDetailData$1) != obj) {
                    th = thA;
                }
                return obj;
            }
        } else {
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = orderViewModelImpl$getOrderDetailData$1.f60523c;
            ResultKt.b(objJ);
        }
        orderViewModelImpl.f60501a.c(orderViewModelImpl.f60509k, th.getMessage(), null);
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fc, code lost:
    
        if (r11.u(r1, r2) == r3) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0112, code lost:
    
        if (r11.Dc(r4, r2) == r3) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl.zc(com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0092  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd A[LOOP:1: B:44:0x00cd->B:57:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:52:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Cc(ContinuationImpl continuationImpl) {
        OrderViewModelImpl$fetchOrdersFromRemote$1 orderViewModelImpl$fetchOrdersFromRemote$1;
        Object objB;
        Object failure;
        Throwable thA;
        MutableStateFlow mutableStateFlow;
        Object value;
        Object obj;
        Throwable th;
        OrderPageUiModel orderPageUiModel;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        boolean z;
        if (continuationImpl instanceof OrderViewModelImpl$fetchOrdersFromRemote$1) {
            orderViewModelImpl$fetchOrdersFromRemote$1 = (OrderViewModelImpl$fetchOrdersFromRemote$1) continuationImpl;
            int i2 = orderViewModelImpl$fetchOrdersFromRemote$1.f60517f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                orderViewModelImpl$fetchOrdersFromRemote$1.f60517f = i2 - Integer.MIN_VALUE;
            } else {
                orderViewModelImpl$fetchOrdersFromRemote$1 = new OrderViewModelImpl$fetchOrdersFromRemote$1(this, continuationImpl);
            }
        } else {
            orderViewModelImpl$fetchOrdersFromRemote$1 = new OrderViewModelImpl$fetchOrdersFromRemote$1(this, continuationImpl);
        }
        Object objG = orderViewModelImpl$fetchOrdersFromRemote$1.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = orderViewModelImpl$fetchOrdersFromRemote$1.f60517f;
        if (i3 == 0) {
            ResultKt.b(objG);
            orderViewModelImpl$fetchOrdersFromRemote$1.f60517f = 1;
            objG = this.f60505f.f49124a.g();
            if (objG != obj2) {
            }
            return obj2;
        }
        if (i3 == 1) {
            ResultKt.b(objG);
        } else {
            if (i3 == 2) {
                ResultKt.b(objG);
                objB = ((Result) objG).f71708b;
                Result.Companion companion = Result.INSTANCE;
                if (!(objB instanceof Result.Failure)) {
                    try {
                        Orders orders = (Orders) objB;
                        InAppDispatch inAppDispatch = this.l;
                        orders.getClass();
                        inAppDispatch.getClass();
                        failure = new OrderPageUiModel(OrderMapperKt.b(orders.f66324a, inAppDispatch, false), OrderMapperKt.b(orders.f66325b, inAppDispatch, true));
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th2);
                    }
                    objB = failure;
                }
                if (!(objB instanceof Result.Failure)) {
                    orderPageUiModel = (OrderPageUiModel) objB;
                    this.z.setValue(orderPageUiModel);
                    do {
                        mutableStateFlow2 = this.y;
                        value2 = mutableStateFlow2.getValue();
                        ((Boolean) value2).getClass();
                        if (orderPageUiModel.f60281b.f60390a.isEmpty() || !orderPageUiModel.f60280a.f60390a.isEmpty()) {
                            z = false;
                        } else {
                            z = true;
                        }
                    } while (!mutableStateFlow2.i(value2, Boolean.valueOf(z)));
                }
                thA = Result.a(objB);
                if (thA != null) {
                    return objB;
                }
                do {
                    mutableStateFlow = this.w;
                    value = mutableStateFlow.getValue();
                    ((Boolean) value).getClass();
                } while (!mutableStateFlow.i(value, Boolean.TRUE));
                orderViewModelImpl$fetchOrdersFromRemote$1.f60514b = objB;
                orderViewModelImpl$fetchOrdersFromRemote$1.f60515c = thA;
                orderViewModelImpl$fetchOrdersFromRemote$1.f60517f = 3;
                if (Dc(thA, orderViewModelImpl$fetchOrdersFromRemote$1) != obj2) {
                    obj = objB;
                    th = thA;
                }
                return obj2;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = orderViewModelImpl$fetchOrdersFromRemote$1.f60515c;
            obj = orderViewModelImpl$fetchOrdersFromRemote$1.f60514b;
            ResultKt.b(objG);
        }
        this.f60501a.c(this.f60509k, th.getMessage(), th);
        return obj;
        orderViewModelImpl$fetchOrdersFromRemote$1.f60517f = 2;
        objB = ((ResultStrategy) objG).b(orderViewModelImpl$fetchOrdersFromRemote$1);
        if (objB != obj2) {
            Result.Companion companion3 = Result.INSTANCE;
            if (!(objB instanceof Result.Failure)) {
                Orders orders2 = (Orders) objB;
                InAppDispatch inAppDispatch2 = this.l;
                orders2.getClass();
                inAppDispatch2.getClass();
                failure = new OrderPageUiModel(OrderMapperKt.b(orders2.f66324a, inAppDispatch2, false), OrderMapperKt.b(orders2.f66325b, inAppDispatch2, true));
                objB = failure;
            }
            if (!(objB instanceof Result.Failure)) {
                orderPageUiModel = (OrderPageUiModel) objB;
                this.z.setValue(orderPageUiModel);
                do {
                    mutableStateFlow2 = this.y;
                    value2 = mutableStateFlow2.getValue();
                    ((Boolean) value2).getClass();
                    if (orderPageUiModel.f60281b.f60390a.isEmpty()) {
                        z = false;
                    } else {
                        z = false;
                    }
                } while (!mutableStateFlow2.i(value2, Boolean.valueOf(z)));
            }
            thA = Result.a(objB);
            if (thA != null) {
                return objB;
            }
            do {
                mutableStateFlow = this.w;
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            orderViewModelImpl$fetchOrdersFromRemote$1.f60514b = objB;
            orderViewModelImpl$fetchOrdersFromRemote$1.f60515c = thA;
            orderViewModelImpl$fetchOrdersFromRemote$1.f60517f = 3;
            if (Dc(thA, orderViewModelImpl$fetchOrdersFromRemote$1) != obj2) {
                obj = objB;
                th = thA;
                this.f60501a.c(this.f60509k, th.getMessage(), th);
                return obj;
            }
        }
        return obj2;
    }

    public final Object Dc(Throwable th, ContinuationImpl continuationImpl) {
        int i2;
        if (th instanceof NoShippingGroupFoundException) {
            i2 = R.string.mylv_myorders_shipping_group_not_found_error;
        } else {
            i2 = th instanceof AccountUnderProcessException ? R.string.error_account_creation_processing : R.string.error_generic;
        }
        Object objU = this.m.u(NotificationBuilder.a(this.f60508j, new StringResourceUiModel.ResId(i2, null, 2, null), false, null, null, 60), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public final void Ec(String str) {
        PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) this.A.getValue();
        Object obj = null;
        if (purchasedOrderUiModel != null) {
            List list = purchasedOrderUiModel.d;
            for (Object obj2 : list) {
                if (Intrinsics.c(((TransactionUiModel) obj2).f60421a, str)) {
                    obj = obj2;
                    break;
                }
            }
            obj = (TransactionUiModel) obj;
            if (obj == null) {
                obj = (TransactionUiModel) CollectionsKt.firstOrNull(list);
            }
        }
        this.B.setValue(obj);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final Flow H6() {
        return FlowKt.y(this.n);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final void I4(PurchasedOrderUiModel purchasedOrderUiModel, String str, TransactionItemUiModel transactionItemUiModel) {
        purchasedOrderUiModel.getClass();
        str.getClass();
        transactionItemUiModel.getClass();
        this.A.setValue(purchasedOrderUiModel);
        this.q = str;
        Ec(str);
        this.r = transactionItemUiModel;
        this.C.setValue(transactionItemUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final void J9(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f60502b.a(OrderTrackingUiModelKt.a(OrderTrackingUiModel.InvoiceClick.f60350a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderViewModelImpl$getInvoice$1(this, str, str2, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final void R9() {
        this.z.setValue(null);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getE() {
        return this.E;
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final Flow b() {
        return FlowKt.y(this.m);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    /* JADX INFO: renamed from: b8, reason: from getter */
    public final Flow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final void c0(OrderTrackingUiModel orderTrackingUiModel) {
        this.f60502b.a(OrderTrackingUiModelKt.a(orderTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel
    public final void u4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderViewModelImpl$clearCacheAndGetOrders$1(null, this), 3);
    }
}
