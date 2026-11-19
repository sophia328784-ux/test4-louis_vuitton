package com.vuitton.android.presentation.screen.storemode;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.catalog.GetCatalogStoreModeUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.EnableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetRmsCodeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeInfoUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeValidityUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.presentation.extensions.TrackingExtKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0081\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;", "getRmsCodeUseCase", "Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;", "getCatalogStoreModeUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;", "enableStoreModeUseCase", "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;", "getStoreModeInfoUseCase", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreModeUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;", "getStoreModeValidityUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValidUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;", "getLocalWishlistSummaryUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeViewModelImpl extends ViewModel implements StoreModeViewModel {
    public final MutableStateFlow A;
    public final StateFlow B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f64786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f64787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f64788c;
    public final GetCatalogStoreModeUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f64789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EnableStoreModeUseCase f64790f;
    public final GetStoreModeInfoUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DisableStoreModeUseCase f64791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f64792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetStoreModeValidityUseCase f64793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetWishlistUseCase f64794k;
    public final IsStoreModeStillValidUseCase l;
    public final GetLocalWishlistSummaryUseCase m;
    public final String n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final BufferedChannel y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1", f = "StoreModeViewModelImpl.kt", l = {164}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64795b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$2", f = "StoreModeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ StoreModeViewModelImpl f64797b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(StoreModeViewModelImpl storeModeViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f64797b = storeModeViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.f64797b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                StoreModeViewModelImpl storeModeViewModelImpl = this.f64797b;
                BuildersKt.c(ViewModelKt.a(storeModeViewModelImpl), null, null, new StoreModeViewModelImpl$getWishlist$1(storeModeViewModelImpl, null), 3);
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return StoreModeViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64795b;
            if (i2 == 0) {
                ResultKt.b(obj);
                StoreModeViewModelImpl storeModeViewModelImpl = StoreModeViewModelImpl.this;
                final SharedFlow sharedFlow = storeModeViewModelImpl.f64788c.f43512c;
                Flow<AppEvent> flow = new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f64799b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$1$invokeSuspend$$inlined$filter$1$2", f = "StoreModeViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f64800b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f64801c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f64800b = obj;
                                this.f64801c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f64799b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f64801c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f64801c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f64800b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f64801c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((AppEvent) obj) instanceof AppEvent.WishListUpdatedEvent) {
                                    anonymousClass1.f64801c = 1;
                                    if (this.f64799b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(storeModeViewModelImpl, null);
                this.f64795b = 1;
                if (FlowKt.g(flow, anonymousClass2, this) == coroutineSingletons) {
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

    @Inject
    public StoreModeViewModelImpl(SavedStateHandle savedStateHandle, Logger logger, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, GetRmsCodeUseCase getRmsCodeUseCase, GetCatalogStoreModeUseCase getCatalogStoreModeUseCase, UserSessionService userSessionService, EnableStoreModeUseCase enableStoreModeUseCase, GetStoreModeInfoUseCase getStoreModeInfoUseCase, DisableStoreModeUseCase disableStoreModeUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetStoreModeValidityUseCase getStoreModeValidityUseCase, GetWishlistUseCase getWishlistUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase, GetLocalWishlistSummaryUseCase getLocalWishlistSummaryUseCase) {
        savedStateHandle.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        getRmsCodeUseCase.getClass();
        getCatalogStoreModeUseCase.getClass();
        userSessionService.getClass();
        enableStoreModeUseCase.getClass();
        getStoreModeInfoUseCase.getClass();
        disableStoreModeUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getStoreModeValidityUseCase.getClass();
        getWishlistUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        getLocalWishlistSummaryUseCase.getClass();
        this.f64786a = logger;
        this.f64787b = analyticsTracker;
        this.f64788c = lVEventSender;
        this.d = getCatalogStoreModeUseCase;
        this.f64789e = userSessionService;
        this.f64790f = enableStoreModeUseCase;
        this.g = getStoreModeInfoUseCase;
        this.f64791h = disableStoreModeUseCase;
        this.f64792i = isFeatureAvailableUseCase;
        this.f64793j = getStoreModeValidityUseCase;
        this.f64794k = getWishlistUseCase;
        this.l = isStoreModeStillValidUseCase;
        this.m = getLocalWishlistSummaryUseCase;
        CatalogRoute catalogRoute = (CatalogRoute) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(CatalogRoute.class), MapsKt.c());
        String str = catalogRoute.f59152b;
        this.n = str;
        String str2 = catalogRoute.f59153c;
        boolean z = catalogRoute.d == StoreModeLaunchMode.NEW_FROM_DEEPLINK;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.o = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.p = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.q = mutableStateFlowA3;
        Boolean bool2 = Boolean.TRUE;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool2);
        this.r = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.t = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a("");
        this.u = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new StoreModeUiModel(null, null, null, null, null, 31, null));
        this.v = mutableStateFlowA8;
        boolean z2 = z;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new WishlistSummaryUiModel(0, null, 3, null));
        this.w = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.x = mutableStateFlowA10;
        this.y = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(null);
        this.z = mutableStateFlowA11;
        this.A = StateFlowKt.a(StoreModeCatalogState.Nothing.f64771a);
        final Flow[] flowArr = {mutableStateFlowA8, mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA9, mutableStateFlowA4, mutableStateFlowA10, mutableStateFlowA5, mutableStateFlowA11, mutableStateFlowA6, mutableStateFlowA7};
        Flow<StoreModeViewState> flow = new Flow<StoreModeViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$special$$inlined$combine$1$3", f = "StoreModeViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super StoreModeViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64827b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64828c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f64828c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f64828c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64827b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        StoreModeUiModel storeModeUiModel = (StoreModeUiModel) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        WishlistSummaryUiModel wishlistSummaryUiModel = (WishlistSummaryUiModel) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        String str = (String) objArr[6];
                        Object obj8 = objArr[7];
                        obj8.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj8).booleanValue();
                        Boolean bool = (Boolean) objArr[8];
                        Object obj9 = objArr[9];
                        obj9.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[10];
                        obj10.getClass();
                        StoreModeViewState storeModeViewState = new StoreModeViewState(storeModeUiModel, zBooleanValue, zBooleanValue3, zBooleanValue2, zBooleanValue5, wishlistSummaryUiModel, zBooleanValue4, str, bool, zBooleanValue6, (String) obj10);
                        this.f64828c = null;
                        this.d = null;
                        this.f64827b = 1;
                        if (flowCollector.emit(storeModeViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.B = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new StoreModeViewState(null, false, false, false, false, null, false, null, null, false, null, 2047, null));
        mutableStateFlowA3.setValue(bool2);
        if (str == null || str.length() == 0) {
            Object objE = getRmsCodeUseCase.f50391a.e();
            Result.Companion companion = Result.INSTANCE;
            if (!(objE instanceof Result.Failure)) {
                mutableStateFlowA10.setValue((String) objE);
            }
        } else {
            mutableStateFlowA10.setValue(str);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$requestStoreModeCatalog$1(this, null), 3);
        if (z2) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$checkStoreModeTokenValidity$1(this, str2 == null ? "" : str2, null), 3);
        } else {
            mutableStateFlowA11.setValue(bool2);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$fetchUserInfo$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0168 -> B:47:0x016b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl r23, com.vuitton.foundation.model.domain.model.authentication.LoginState r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl.yc(com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl, com.vuitton.foundation.model.domain.model.authentication.LoginState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void C6() {
        MutableStateFlow mutableStateFlow = this.s;
        mutableStateFlow.setValue(Boolean.valueOf(!((Boolean) mutableStateFlow.getValue()).booleanValue()));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final boolean F() {
        Boolean boolC = this.l.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        boolean zBooleanValue = boolC.booleanValue();
        this.r.setValue(boolC);
        if (!zBooleanValue) {
            this.f64791h.a();
        }
        return zBooleanValue;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void G() {
        this.f64791h.a();
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final Flow H5() {
        return FlowKt.y(this.y);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void R1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$fetchUserInfo$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void S6(StoreModeTrackingUiModel storeModeTrackingUiModel) {
        Hit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        Hit.EventHit.DefaultEventHit defaultEventHit3;
        if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CloseScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/StoreMode/Activate", "LVPass/StoreMode/Activate", "journey", null, 17, null);
        } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.ExploreScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/StoreMode/End", "LVPass/StoreMode/End", "journey", null, 17, null);
        } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.WelcomeScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/StoreMode/Explore", "LVPass/StoreMode/Explore", "journey", null, 17, null);
        } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CatalogScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/catalog", "shop", null, null, 17, null);
        } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CatalogCategoryClickScreen) {
            StoreModeTrackingUiModel.CatalogCategoryClickScreen catalogCategoryClickScreen = (StoreModeTrackingUiModel.CatalogCategoryClickScreen) storeModeTrackingUiModel;
            String str = catalogCategoryClickScreen.f65061a;
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, str != null ? "LVPass/catalog/".concat(str) : "LVPass/catalog", null, "mega_menu", TrackingExtKt.a(catalogCategoryClickScreen.f65062b, EmptyList.f71768b), 1, null);
        } else {
            if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CatalogLevel1ClickEvent) {
                StoreModeTrackingUiModel.CatalogLevel1ClickEvent catalogLevel1ClickEvent = (StoreModeTrackingUiModel.CatalogLevel1ClickEvent) storeModeTrackingUiModel;
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", catalogLevel1ClickEvent.f65063a, "catalog", "mega_menu", null, TrackingExtKt.a(catalogLevel1ClickEvent.f65064b, CollectionsKt.O(new AdditionalProperty.LevelName("menu_level_1"))), 33, null);
            } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CatalogLevel2ClickEvent) {
                StoreModeTrackingUiModel.CatalogLevel2ClickEvent catalogLevel2ClickEvent = (StoreModeTrackingUiModel.CatalogLevel2ClickEvent) storeModeTrackingUiModel;
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", catalogLevel2ClickEvent.f65065a, "catalog", "mega_menu", null, TrackingExtKt.a(catalogLevel2ClickEvent.f65066b, CollectionsKt.O(new AdditionalProperty.LevelName("menu_level_2"))), 33, null);
            } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CatalogLevel3ClickEvent) {
                StoreModeTrackingUiModel.CatalogLevel3ClickEvent catalogLevel3ClickEvent = (StoreModeTrackingUiModel.CatalogLevel3ClickEvent) storeModeTrackingUiModel;
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", catalogLevel3ClickEvent.f65067a, "catalog", "mega_menu", null, TrackingExtKt.a(catalogLevel3ClickEvent.f65068b, CollectionsKt.O(new AdditionalProperty.LevelName("menu_level_3"))), 33, null);
            } else {
                if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.ActivationClickedEvent) {
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(HitType.ActivateStore.f66504a, "LVPass/StoreMode/Activate", "activate_store", "journey", "navigation", null, CollectionsKt.O(new AdditionalProperty.StoreMode(((StoreModeTrackingUiModel.ActivationClickedEvent) storeModeTrackingUiModel).f65058a, true)), 32, null);
                } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CloseClickedEvent) {
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(HitType.CloseStore.f66509a, null, "close_intention", "journey", "navigation", null, CollectionsKt.O(new AdditionalProperty.StoreMode(((StoreModeTrackingUiModel.CloseClickedEvent) storeModeTrackingUiModel).f65070a, true)), 32, null);
                } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.ConfirmExitClickedEvent) {
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/Explore", "Store_History", "journey", "navigation", null, CollectionsKt.O(new AdditionalProperty.StoreMode(((StoreModeTrackingUiModel.ConfirmExitClickedEvent) storeModeTrackingUiModel).f65072a, true)), 33, null);
                } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.CancelExitClickedEvent) {
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/Close", "close_cancel", "journey", "navigation", null, CollectionsKt.O(new AdditionalProperty.StoreMode(((StoreModeTrackingUiModel.CancelExitClickedEvent) storeModeTrackingUiModel).f65060a, true)), 33, null);
                } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.ExploreClickedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/Explore", "catalog", "product_sheet", "navigation", null, null, 97, null);
                } else if (storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.SearchClickedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/Explore", "search", "journey", "navigation", null, null, 97, null);
                } else {
                    if (!(storeModeTrackingUiModel instanceof StoreModeTrackingUiModel.ArticleClickedEvent)) {
                        v40.g();
                        return;
                    }
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/Explore", "article", "journey", "navigation", null, CollectionsKt.O(new AdditionalProperty.StoreModeArticle(((StoreModeTrackingUiModel.ArticleClickedEvent) storeModeTrackingUiModel).f65059a)), 33, null);
                }
                defaultEventHit = defaultEventHit2;
            }
            defaultEventHit = defaultEventHit3;
        }
        this.f64787b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getB() {
        return this.B;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void b1() {
        this.u.setValue("");
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void b7() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$launchStoreModeTimer$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final StateFlow d8() {
        return FlowKt.b(this.A);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.StoreModeViewModel
    public final void mb(String str, boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.u;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, str));
        if (z) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new StoreModeViewModelImpl$updateSearch$2(this, str, null), 3);
        }
    }
}
