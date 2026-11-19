package com.vuitton.android.presentation.screen.orders.viewmodels;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.account.order.ConfirmOrderReturnUseCase;
import com.vuitton.android.domain.usecase.account.order.GetExchangeVariationsUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrderReturnReasonsUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrdersUseCase;
import com.vuitton.android.domain.usecase.account.order.SetupExchangeUseCase;
import com.vuitton.android.domain.usecase.account.order.SubmitExchangeUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.orders.OrderRoute$ReturnOrExchange;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ConfirmReturnResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeFeatureFlags;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0089\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;", "getOrdersUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;", "getOrdersReasonsUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;", "getExchangeVariationsUseCase", "Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;", "confirmReturnUseCase", "Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;", "setupExchangeUseCase", "Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;", "submitExchangeUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;", "getSizeGuideUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrderReturnOrExchangeViewModelImpl extends AndroidViewModel implements OrderReturnOrExchangeViewModel {
    public final MutableStateFlow A;
    public OrderReturnOrExchangeItemUiModel B;
    public String C;
    public String D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final StateFlow H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f60436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f60437c;
    public final GetOrdersUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f60438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Logger f60439f;
    public final GetOrderReturnReasonsUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetExchangeVariationsUseCase f60440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConfirmOrderReturnUseCase f60441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SetupExchangeUseCase f60442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SubmitExchangeUseCase f60443k;
    public final GetSizeGuideUseCase l;
    public final NotificationBuilder m;
    public final String n;
    public final InAppDispatch o;
    public final OrderReturnOrExchangeFeatureFlags p;
    public final String q;
    public final String r;
    public final MutableStateFlow s;
    public final SharedFlowImpl t;
    public final BufferedChannel u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public OrderReturnOrExchangeViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, Monitor monitor, GetOrdersUseCase getOrdersUseCase, AnalyticsTracker analyticsTracker, Logger logger, GetOrderReturnReasonsUseCase getOrderReturnReasonsUseCase, GetExchangeVariationsUseCase getExchangeVariationsUseCase, ConfirmOrderReturnUseCase confirmOrderReturnUseCase, SetupExchangeUseCase setupExchangeUseCase, SubmitExchangeUseCase submitExchangeUseCase, GetSizeGuideUseCase getSizeGuideUseCase, NotificationBuilder notificationBuilder) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        monitor.getClass();
        getOrdersUseCase.getClass();
        analyticsTracker.getClass();
        logger.getClass();
        getOrderReturnReasonsUseCase.getClass();
        getExchangeVariationsUseCase.getClass();
        confirmOrderReturnUseCase.getClass();
        setupExchangeUseCase.getClass();
        submitExchangeUseCase.getClass();
        getSizeGuideUseCase.getClass();
        notificationBuilder.getClass();
        this.f60436b = requireCachedAppConfigUseCase;
        this.f60437c = monitor;
        this.d = getOrdersUseCase;
        this.f60438e = analyticsTracker;
        this.f60439f = logger;
        this.g = getOrderReturnReasonsUseCase;
        this.f60440h = getExchangeVariationsUseCase;
        this.f60441i = confirmOrderReturnUseCase;
        this.f60442j = setupExchangeUseCase;
        this.f60443k = submitExchangeUseCase;
        this.l = getSizeGuideUseCase;
        this.m = notificationBuilder;
        this.n = "OrderReturnOrExchangeViewModelImpl";
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.o = inAppDispatchB;
        boolean zB = isFeatureAvailableUseCase.b(new Feature[]{Feature.TWIST});
        OrderReturnOrExchangeFeatureFlags orderReturnOrExchangeFeatureFlags = new OrderReturnOrExchangeFeatureFlags(zB, zB && isFeatureAvailableUseCase.b(new Feature[]{Feature.ORDER_RETURN}), isFeatureAvailableUseCase.b(new Feature[]{Feature.ORDER_EXCHANGE}), requireCachedAppConfigUseCase.a().a0.f67283b);
        this.p = orderReturnOrExchangeFeatureFlags;
        this.q = requireCachedAppConfigUseCase.a().J;
        this.r = ((OrderRoute$ReturnOrExchange) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(OrderRoute$ReturnOrExchange.class), MapsKt.c())).f60094a;
        this.s = StateFlowKt.a(null);
        this.t = SharedFlowKt.b(1, 0, null, 6);
        this.u = ChannelKt.a(1, 6, null);
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(emptyList);
        this.v = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(emptyList);
        this.w = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(emptyList);
        this.x = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(ReasonsResponseUiModel.Loading.f60401a);
        this.y = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.z = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.A = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(Boolean.FALSE);
        this.E = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(ExchangeSetupResponseUiModel.Loading.f60253a);
        this.F = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(ExchangeSubmitResponseUiModel.Loading.f60265a);
        this.G = mutableStateFlowA9;
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$fetchReasons$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1(null, this), 3);
        final Flow[] flowArr = {mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA7};
        Flow<OrderReturnOrExchangeViewState> flow = new Flow<OrderReturnOrExchangeViewState>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OrderReturnOrExchangeViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60477b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60478c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ OrderReturnOrExchangeViewModelImpl f60479e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl) {
                    super(3, continuation);
                    this.f60479e = orderReturnOrExchangeViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f60479e);
                    anonymousClass3.f60478c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60478c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60477b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl = this.f60479e;
                        InAppDispatch inAppDispatch = orderReturnOrExchangeViewModelImpl.o;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        ReasonsResponseUiModel reasonsResponseUiModel = (ReasonsResponseUiModel) obj2;
                        VariationsResponseUiModel variationsResponseUiModel = (VariationsResponseUiModel) objArr[1];
                        ConfirmReturnResponseUiModel confirmReturnResponseUiModel = (ConfirmReturnResponseUiModel) objArr[2];
                        Object obj3 = objArr[3];
                        obj3.getClass();
                        List list = (List) obj3;
                        Object obj4 = objArr[4];
                        obj4.getClass();
                        List list2 = (List) obj4;
                        String str = orderReturnOrExchangeViewModelImpl.q;
                        SharedFlowImpl sharedFlowImpl = orderReturnOrExchangeViewModelImpl.t;
                        OrderReturnOrExchangeFeatureFlags orderReturnOrExchangeFeatureFlags = orderReturnOrExchangeViewModelImpl.p;
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        List list3 = (List) obj5;
                        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = orderReturnOrExchangeViewModelImpl.B;
                        String str2 = orderReturnOrExchangeViewModelImpl.C;
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        ExchangeSetupResponseUiModel exchangeSetupResponseUiModel = (ExchangeSetupResponseUiModel) obj6;
                        Object obj7 = objArr[7];
                        obj7.getClass();
                        Object obj8 = objArr[8];
                        obj8.getClass();
                        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = new OrderReturnOrExchangeViewState(inAppDispatch, reasonsResponseUiModel, variationsResponseUiModel, confirmReturnResponseUiModel, list, list2, str, sharedFlowImpl, orderReturnOrExchangeFeatureFlags, null, list3, orderReturnOrExchangeItemUiModel, exchangeSetupResponseUiModel, (ExchangeSubmitResponseUiModel) obj7, str2, ((Boolean) obj8).booleanValue());
                        this.f60478c = null;
                        this.d = null;
                        this.f60477b = 1;
                        if (flowCollector.emit(orderReturnOrExchangeViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.H = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OrderReturnOrExchangeViewState(inAppDispatchB, null, null, null, emptyList, emptyList, null, null, orderReturnOrExchangeFeatureFlags, null, null, null, null, null, this.C, false, 48846, null));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void A9() {
        if (this.z.getValue() != null) {
            return;
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$fetchVariations$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void E2() {
        this.F.setValue(ExchangeSetupResponseUiModel.Loading.f60253a);
        this.G.setValue(ExchangeSubmitResponseUiModel.Loading.f60265a);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void Oa() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.v;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, EmptyList.f71768b));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void P5() {
        this.z.setValue(null);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    /* JADX INFO: renamed from: P7, reason: from getter */
    public final BufferedChannel getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void T6(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        orderReturnOrExchangeItemUiModel.getClass();
        StringResourceUiModel stringResourceUiModel = orderReturnOrExchangeItemUiModel.f60306f;
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            Iterable<OrderReturnOrExchangeItemUiModel> iterable = (Iterable) mutableStateFlow.getValue();
            arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModelA : iterable) {
                if (Intrinsics.c(orderReturnOrExchangeItemUiModelA, orderReturnOrExchangeItemUiModel)) {
                    orderReturnOrExchangeItemUiModelA = OrderReturnOrExchangeItemUiModel.a(orderReturnOrExchangeItemUiModelA, z, null, (z || stringResourceUiModel == null) ? stringResourceUiModel : null, 23);
                }
                arrayList.add(orderReturnOrExchangeItemUiModelA);
            }
        } while (!mutableStateFlow.i(value, arrayList));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void X7(OrderReturnOrExchangeBottomSheet orderReturnOrExchangeBottomSheet) {
        MutableStateFlow mutableStateFlow;
        Object value;
        if (orderReturnOrExchangeBottomSheet instanceof OrderReturnOrExchangeBottomSheet.Policy) {
            c0(OrderTrackingUiModel.ExchangePolicyClick.f60344a);
        }
        do {
            mutableStateFlow = this.s;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, orderReturnOrExchangeBottomSheet));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getH() {
        return this.H;
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void c0(OrderTrackingUiModel orderTrackingUiModel) {
        this.f60438e.a(OrderTrackingUiModelKt.a(orderTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final StateFlow e() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void f6() {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            Iterable<OrderReturnOrExchangeItemUiModel> iterable = (Iterable) mutableStateFlow.getValue();
            arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : iterable) {
                arrayList.add(OrderReturnOrExchangeItemUiModel.a(orderReturnOrExchangeItemUiModel, false, null, (orderReturnOrExchangeItemUiModel.d && orderReturnOrExchangeItemUiModel.f60305e == null) ? new StringResourceUiModel.ResId(R.string.return_an_order_missing_required_field, null, 2, null) : null, 31));
            }
        } while (!mutableStateFlow.i(value, arrayList));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void i4(ProductExchangeCategoryUiModel productExchangeCategoryUiModel, CategoryOptionUiModel categoryOptionUiModel, int i2) {
        productExchangeCategoryUiModel.getClass();
        categoryOptionUiModel.getClass();
        this.f60438e.a(OrderTrackingUiModelKt.a(new OrderTrackingUiModel.SelectVariationClick(productExchangeCategoryUiModel.f60385a, categoryOptionUiModel.f60228a)));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1(this, i2, categoryOptionUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void lc(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, OrderReturnReasonUiModel orderReturnReasonUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        orderReturnOrExchangeItemUiModel.getClass();
        orderReturnReasonUiModel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = orderReturnOrExchangeItemUiModel.f60302a.g;
        companion.getClass();
        SkuIdUiModel.Companion.b(str);
        this.f60438e.a(OrderTrackingUiModelKt.a(new OrderTrackingUiModel.ProductSelectionForReturn(str, null)));
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            Iterable<OrderReturnOrExchangeItemUiModel> iterable = (Iterable) mutableStateFlow.getValue();
            arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModelA : iterable) {
                if (Intrinsics.c(orderReturnOrExchangeItemUiModelA, orderReturnOrExchangeItemUiModel)) {
                    orderReturnOrExchangeItemUiModelA = OrderReturnOrExchangeItemUiModel.a(orderReturnOrExchangeItemUiModelA, true, orderReturnReasonUiModel, null, 7);
                    this.B = orderReturnOrExchangeItemUiModelA;
                }
                arrayList.add(orderReturnOrExchangeItemUiModelA);
            }
        } while (!mutableStateFlow.i(value, arrayList));
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void n6(String str) {
        str.getClass();
        this.f60438e.a(OrderTrackingUiModelKt.a(OrderTrackingUiModel.OpenSizeGuideClick.f60354a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void n9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$confirmReturn$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void o3() {
        Iterable iterable = (Iterable) this.w.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj;
            if (orderReturnOrExchangeItemUiModel.f60305e != null && orderReturnOrExchangeItemUiModel.d) {
                arrayList.add(obj);
            }
        }
        this.x.setValue(arrayList);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void pb(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$setupExchange$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel
    public final void u6() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OrderReturnOrExchangeViewModelImpl$submitExchange$1(null, this), 3);
    }
}
