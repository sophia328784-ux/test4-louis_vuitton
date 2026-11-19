package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import androidx.compose.runtime.MutableState;
import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.wishlist.WishlistMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.AddedToWishlistAction;
import com.vuitton.android.presentation.screen.wishlist.WishlistHelper;
import com.vuitton.foundation.model.domain.error.wishlist.WishlistError;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import org.bouncycastle.asn1.eac.EACTags;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;", "", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPWishlistDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f63136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f63137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f63138c;
    public final InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppsFlyerTracker f63139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsTracker f63140f;
    public final UserSessionService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetWishlistUseCase f63141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NotificationBuilder f63142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AddProductToWishlistUseCase f63143j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DeleteProductFromWishlistUseCase f63144k;
    public final ReportDYAddToWishlistEventUseCase l;
    public boolean m;
    public boolean n;
    public final SharedFlowImpl o;
    public final SharedFlowImpl p;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1", f = "PLPWishlistDelegate.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63145b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$1", f = "PLPWishlistDelegate.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C03041 extends SuspendLambda implements Function2<AppEvent.WishListUpdatedEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PLPWishlistDelegate f63147b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03041(PLPWishlistDelegate pLPWishlistDelegate, Continuation continuation) {
                super(2, continuation);
                this.f63147b = pLPWishlistDelegate;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C03041(this.f63147b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03041) create((AppEvent.WishListUpdatedEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                PLPWishlistDelegate pLPWishlistDelegate = this.f63147b;
                if (pLPWishlistDelegate.m) {
                    pLPWishlistDelegate.m = false;
                } else {
                    pLPWishlistDelegate.d();
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PLPWishlistDelegate.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63145b;
            if (i2 == 0) {
                ResultKt.b(obj);
                PLPWishlistDelegate pLPWishlistDelegate = PLPWishlistDelegate.this;
                final SharedFlow sharedFlow = pLPWishlistDelegate.f63138c.f43512c;
                Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$invokeSuspend$$inlined$filterIsInstance$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f63149b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "PLPWishlistDelegate.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f63150b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f63151c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f63150b = obj;
                                this.f63151c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f63149b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f63151c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f63151c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f63150b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f63151c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (obj instanceof AppEvent.WishListUpdatedEvent) {
                                    anonymousClass1.f63151c = 1;
                                    if (this.f63149b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                            } else {
                                if (i3 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object f(FlowCollector flowCollector, Continuation continuation) {
                        Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                C03041 c03041 = new C03041(pLPWishlistDelegate, null);
                this.f63145b = 1;
                if (FlowKt.g(flow, c03041, this) == coroutineSingletons) {
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

    public PLPWishlistDelegate(Monitor monitor, CoroutineScope coroutineScope, LVEventSender lVEventSender, InAppDispatch inAppDispatch, AppsFlyerTracker appsFlyerTracker, AnalyticsTracker analyticsTracker, UserSessionService userSessionService, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase) {
        monitor.getClass();
        coroutineScope.getClass();
        lVEventSender.getClass();
        inAppDispatch.getClass();
        appsFlyerTracker.getClass();
        analyticsTracker.getClass();
        userSessionService.getClass();
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        this.f63136a = monitor;
        this.f63137b = coroutineScope;
        this.f63138c = lVEventSender;
        this.d = inAppDispatch;
        this.f63139e = appsFlyerTracker;
        this.f63140f = analyticsTracker;
        this.g = userSessionService;
        this.f63141h = getWishlistUseCase;
        this.f63142i = notificationBuilder;
        this.f63143j = addProductToWishlistUseCase;
        this.f63144k = deleteProductFromWishlistUseCase;
        this.l = reportDYAddToWishlistEventUseCase;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(null), 3);
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
        this.o = sharedFlowImplB;
        this.p = sharedFlowImplB;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0155  */
    /* JADX WARN: Code duplicated, block: B:44:0x0163  */
    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public static final Object a(PLPWishlistDelegate pLPWishlistDelegate, ProductForWishlist productForWishlist, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, ContinuationImpl continuationImpl) {
        PLPWishlistDelegate$addProductToWishlist$1 pLPWishlistDelegate$addProductToWishlist$1;
        MutableState mutableState;
        MonitorAction monitorActionA;
        Hit hitB;
        Object objA;
        MutableState mutableState2;
        PLPWishlistFeedbackUiModel.Message messageC;
        ProductForWishlist productForWishlist2;
        Object obj;
        MonitorAction monitorAction;
        PLPWishlistFeedbackUiModel.Error error;
        boolean zBooleanValue;
        Boolean bool;
        ProductForWishlist productForWishlist3 = productForWishlist;
        AnalyticsTracker analyticsTracker = pLPWishlistDelegate.f63140f;
        SharedFlowImpl sharedFlowImpl = pLPWishlistDelegate.o;
        if (continuationImpl instanceof PLPWishlistDelegate$addProductToWishlist$1) {
            pLPWishlistDelegate$addProductToWishlist$1 = (PLPWishlistDelegate$addProductToWishlist$1) continuationImpl;
            int i2 = pLPWishlistDelegate$addProductToWishlist$1.f63156h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pLPWishlistDelegate$addProductToWishlist$1.f63156h = i2 - Integer.MIN_VALUE;
            } else {
                pLPWishlistDelegate$addProductToWishlist$1 = new PLPWishlistDelegate$addProductToWishlist$1(pLPWishlistDelegate, continuationImpl);
            }
        } else {
            pLPWishlistDelegate$addProductToWishlist$1 = new PLPWishlistDelegate$addProductToWishlist$1(pLPWishlistDelegate, continuationImpl);
        }
        Object obj2 = pLPWishlistDelegate$addProductToWishlist$1.f63155f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pLPWishlistDelegate$addProductToWishlist$1.f63156h;
        if (i3 == 0) {
            ResultKt.b(obj2);
            mutableState = productForWishlist3.f63168b;
            String str = productForWishlist3.f63167a;
            if (mutableState == null) {
                sharedFlowImpl.a(new PLPWishlistFeedbackUiModel.Error(NotificationBuilder.a(pLPWishlistDelegate.f63142i, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60), null, 2, null));
                return Boolean.FALSE;
            }
            monitorActionA = pLPWishlistDelegate.f63136a.a(pLPWishlistDelegate.d, WishlistMonitoring.Action.AddToWishlist.f48999a);
            monitorActionA.c(str, "sku");
            if (pLPAddToWishlistTrackingMode instanceof PLPAddToWishlistTrackingMode.Revamp) {
                hitB = PLPTrackingUiModelKt.b(new PLPTrackingUiModel.AddToWishlistRevampEvent(str, ((PLPAddToWishlistTrackingMode.Revamp) pLPAddToWishlistTrackingMode).f62876a, null), null, 3);
            } else {
                if (!Intrinsics.c(pLPAddToWishlistTrackingMode, PLPAddToWishlistTrackingMode.Legacy.f62875a)) {
                    v40.g();
                    return null;
                }
                hitB = PLPTrackingUiModelKt.b(new PLPTrackingUiModel.AddToWishlistEvent(str, null), null, 3);
            }
            analyticsTracker.a(hitB);
            AddProductToWishlistUseCase addProductToWishlistUseCase = pLPWishlistDelegate.f63143j;
            SkuIdUiModel.f61763c.getClass();
            SkuId.Companion companion = SkuId.INSTANCE;
            pLPWishlistDelegate$addProductToWishlist$1.f63152b = productForWishlist3;
            pLPWishlistDelegate$addProductToWishlist$1.f63153c = mutableState;
            pLPWishlistDelegate$addProductToWishlist$1.d = monitorActionA;
            pLPWishlistDelegate$addProductToWishlist$1.f63156h = 1;
            objA = addProductToWishlistUseCase.a(str, pLPWishlistDelegate$addProductToWishlist$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            MonitorAction monitorAction2 = pLPWishlistDelegate$addProductToWishlist$1.d;
            MutableState mutableState3 = pLPWishlistDelegate$addProductToWishlist$1.f63153c;
            ProductForWishlist productForWishlist4 = pLPWishlistDelegate$addProductToWishlist$1.f63152b;
            ResultKt.b(obj2);
            Object obj3 = ((Result) obj2).f71708b;
            mutableState = mutableState3;
            objA = obj3;
            monitorActionA = monitorAction2;
            productForWishlist3 = productForWishlist4;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = pLPWishlistDelegate$addProductToWishlist$1.f63154e;
            monitorAction = pLPWishlistDelegate$addProductToWishlist$1.d;
            mutableState2 = pLPWishlistDelegate$addProductToWishlist$1.f63153c;
            productForWishlist2 = pLPWishlistDelegate$addProductToWishlist$1.f63152b;
            ResultKt.b(obj2);
        }
        analyticsTracker.a(PLPTrackingUiModelKt.b(new PLPTrackingUiModel.AddToWishlistSuccessEvent(productForWishlist2.f63167a, null), null, 3));
        messageC = new PLPWishlistFeedbackUiModel.Message(NotificationBuilder.a(pLPWishlistDelegate.f63142i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_addtowishlist_productadded, null, 2, null), true, null, AddedToWishlistAction.f63018b, 28));
        monitorActionA = monitorAction;
        objA = obj;
        monitorActionA.b();
        error = messageC instanceof PLPWishlistFeedbackUiModel.Error ? (PLPWishlistFeedbackUiModel.Error) messageC : null;
        if (error != null || (bool = error.f62903c) == null) {
            Result.Companion companion2 = Result.INSTANCE;
            zBooleanValue = !(objA instanceof Result.Failure);
        } else {
            zBooleanValue = bool.booleanValue();
        }
        mutableState2.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(zBooleanValue, false));
        sharedFlowImpl.a(messageC);
        Result.Companion companion3 = Result.INSTANCE;
        return Boolean.valueOf(!(objA instanceof Result.Failure));
        Throwable thA = Result.a(objA);
        if (thA == null) {
            pLPWishlistDelegate.f63139e.a("PLPWishlistDelegate", new AppsFlyerEvent.AddToWishlist(MapsKt.h(new Pair(AFInAppEventParameterName.CONTENT_ID, productForWishlist3.f63167a))));
            ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase = pLPWishlistDelegate.l;
            String str2 = productForWishlist3.f63167a;
            pLPWishlistDelegate$addProductToWishlist$1.f63152b = productForWishlist3;
            pLPWishlistDelegate$addProductToWishlist$1.f63153c = mutableState;
            pLPWishlistDelegate$addProductToWishlist$1.d = monitorActionA;
            pLPWishlistDelegate$addProductToWishlist$1.f63154e = objA;
            pLPWishlistDelegate$addProductToWishlist$1.f63156h = 2;
            if (reportDYAddToWishlistEventUseCase.a(str2, pLPWishlistDelegate$addProductToWishlist$1) != coroutineSingletons) {
                productForWishlist2 = productForWishlist3;
                obj = objA;
                mutableState2 = mutableState;
                monitorAction = monitorActionA;
                analyticsTracker.a(PLPTrackingUiModelKt.b(new PLPTrackingUiModel.AddToWishlistSuccessEvent(productForWishlist2.f63167a, null), null, 3));
                messageC = new PLPWishlistFeedbackUiModel.Message(NotificationBuilder.a(pLPWishlistDelegate.f63142i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_addtowishlist_productadded, null, 2, null), true, null, AddedToWishlistAction.f63018b, 28));
                monitorActionA = monitorAction;
                objA = obj;
            }
            return coroutineSingletons;
        }
        monitorActionA.d(new WishlistMonitoring.Error.AddToWishlistError(thA));
        mutableState2 = mutableState;
        messageC = pLPWishlistDelegate.c(thA);
        monitorActionA.b();
        if (messageC instanceof PLPWishlistFeedbackUiModel.Error) {
        }
        if (error != null) {
            Result.Companion companion4 = Result.INSTANCE;
            zBooleanValue = !(objA instanceof Result.Failure);
        } else {
            Result.Companion companion5 = Result.INSTANCE;
            zBooleanValue = !(objA instanceof Result.Failure);
        }
        mutableState2.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(zBooleanValue, false));
        sharedFlowImpl.a(messageC);
        Result.Companion companion6 = Result.INSTANCE;
        return Boolean.valueOf(!(objA instanceof Result.Failure));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public static final Object b(PLPWishlistDelegate pLPWishlistDelegate, ProductForWishlist productForWishlist, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode, ContinuationImpl continuationImpl) {
        PLPWishlistDelegate$deleteProductFromWishlist$1 pLPWishlistDelegate$deleteProductFromWishlist$1;
        Hit hitB;
        MutableState mutableState;
        Object obj;
        MonitorAction monitorAction;
        Object objC;
        Boolean bool;
        AnalyticsTracker analyticsTracker = pLPWishlistDelegate.f63140f;
        SharedFlowImpl sharedFlowImpl = pLPWishlistDelegate.o;
        if (continuationImpl instanceof PLPWishlistDelegate$deleteProductFromWishlist$1) {
            pLPWishlistDelegate$deleteProductFromWishlist$1 = (PLPWishlistDelegate$deleteProductFromWishlist$1) continuationImpl;
            int i2 = pLPWishlistDelegate$deleteProductFromWishlist$1.f63160f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pLPWishlistDelegate$deleteProductFromWishlist$1.f63160f = i2 - Integer.MIN_VALUE;
            } else {
                pLPWishlistDelegate$deleteProductFromWishlist$1 = new PLPWishlistDelegate$deleteProductFromWishlist$1(pLPWishlistDelegate, continuationImpl);
            }
        } else {
            pLPWishlistDelegate$deleteProductFromWishlist$1 = new PLPWishlistDelegate$deleteProductFromWishlist$1(pLPWishlistDelegate, continuationImpl);
        }
        Object obj2 = pLPWishlistDelegate$deleteProductFromWishlist$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pLPWishlistDelegate$deleteProductFromWishlist$1.f63160f;
        if (i3 == 0) {
            ResultKt.b(obj2);
            MutableState mutableState2 = productForWishlist.f63168b;
            String str = productForWishlist.f63167a;
            if (mutableState2 == null) {
                sharedFlowImpl.a(new PLPWishlistFeedbackUiModel.Error(NotificationBuilder.a(pLPWishlistDelegate.f63142i, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60), null, 2, null));
                return Boolean.FALSE;
            }
            DynatraceMonitorAction dynatraceMonitorActionA = pLPWishlistDelegate.f63136a.a(pLPWishlistDelegate.d, WishlistMonitoring.Action.RemoveFromWishlist.f49001a);
            dynatraceMonitorActionA.c(str, "sku");
            if (pLPRemoveFromWishlistTrackingMode instanceof PLPRemoveFromWishlistTrackingMode.Revamp) {
                hitB = PLPTrackingUiModelKt.b(new PLPTrackingUiModel.RemoveFromWishlistRevampEvent(str, ((PLPRemoveFromWishlistTrackingMode.Revamp) pLPRemoveFromWishlistTrackingMode).f62878a, null), null, 3);
            } else {
                if (!Intrinsics.c(pLPRemoveFromWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a)) {
                    v40.g();
                    return null;
                }
                hitB = PLPTrackingUiModelKt.b(new PLPTrackingUiModel.RemoveFromWishlistEvent(str, null), null, 3);
            }
            analyticsTracker.a(hitB);
            analyticsTracker.a(PLPTrackingUiModelKt.b(new PLPTrackingUiModel.RemoveFromWishlistEvent(str, null), null, 3));
            SkuIdUiModel.f61763c.getClass();
            SkuId.Companion companion = SkuId.INSTANCE;
            DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase = pLPWishlistDelegate.f63144k;
            pLPWishlistDelegate$deleteProductFromWishlist$1.f63157b = mutableState2;
            pLPWishlistDelegate$deleteProductFromWishlist$1.f63158c = dynatraceMonitorActionA;
            pLPWishlistDelegate$deleteProductFromWishlist$1.f63160f = 1;
            Object objA = deleteProductFromWishlistUseCase.a(str, pLPWishlistDelegate$deleteProductFromWishlist$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableState = mutableState2;
            obj = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = pLPWishlistDelegate$deleteProductFromWishlist$1.f63158c;
            mutableState = pLPWishlistDelegate$deleteProductFromWishlist$1.f63157b;
            ResultKt.b(obj2);
            obj = ((Result) obj2).f71708b;
        }
        Throwable thA = Result.a(obj);
        if (thA == null) {
            objC = new PLPWishlistFeedbackUiModel.Message(NotificationBuilder.a(pLPWishlistDelegate.f63142i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_removefromwishlist_productremoved, null, 2, null), true, null, null, 60));
        } else {
            monitorAction.d(new WishlistMonitoring.Error.RemoveFromWishlistError(thA));
            objC = pLPWishlistDelegate.c(thA);
        }
        monitorAction.b();
        PLPWishlistFeedbackUiModel.Error error = objC instanceof PLPWishlistFeedbackUiModel.Error ? (PLPWishlistFeedbackUiModel.Error) objC : null;
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel((error == null || (bool = error.f62903c) == null) ? obj instanceof Result.Failure : bool.booleanValue(), false));
        sharedFlowImpl.a(objC);
        return Boolean.valueOf(!(obj instanceof Result.Failure));
    }

    public final PLPWishlistFeedbackUiModel.Error c(Throwable th) {
        StringResourceUiModel.ResId resId;
        StringResourceUiModel.Text text;
        Response response;
        StringResourceUiModel stringResourceUiModel;
        if (th instanceof WishlistError) {
            String strJ = StringKtExtKt.j(((WishlistError) th).f66229b);
            if (strJ != null) {
                text = new StringResourceUiModel.Text(strJ);
                stringResourceUiModel = text;
            } else {
                resId = new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
                stringResourceUiModel = resId;
            }
        } else {
            Throwable cause = th.getCause();
            HttpException httpException = cause instanceof HttpException ? (HttpException) cause : null;
            String strA = WishlistHelper.a((httpException == null || (response = httpException.d) == null) ? null : response.f79451c);
            if (strA != null) {
                text = new StringResourceUiModel.Text(strA);
                stringResourceUiModel = text;
            } else {
                resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
                stringResourceUiModel = resId;
            }
        }
        return new PLPWishlistFeedbackUiModel.Error(NotificationBuilder.a(this.f63142i, stringResourceUiModel, false, null, null, 60), th instanceof WishlistError.AlreadyInWishlist ? Boolean.TRUE : null);
    }

    public final void d() {
        if (this.n) {
            return;
        }
        BuildersKt.c(this.f63137b, null, null, new PLPWishlistDelegate$refreshWishlist$1(this, null), 3);
    }

    public final void e(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode) {
        pLPWishlistUpdateUiModel.getClass();
        BuildersKt.c(this.f63137b, null, null, new PLPWishlistDelegate$updateWishlist$1(this, pLPWishlistUpdateUiModel, pLPAddToWishlistTrackingMode, pLPRemoveFromWishlistTrackingMode, null), 3);
    }
}
