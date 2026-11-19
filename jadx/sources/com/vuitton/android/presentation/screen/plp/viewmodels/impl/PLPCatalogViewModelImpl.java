package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.catalog.GetCatalogUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYPlpChooseVariationUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.DisplayedPLPType;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPByCategoryDelegate;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
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
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B¡\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\"\u001a\u00020\u0003\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;", "getCategoryPlpUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;", "getCatalogUseCase", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;", "getDYPlpChooseVariationUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPCatalogViewModelImpl extends ViewModel implements PLPCategoryViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f63019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f63020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetCatalogUseCase f63021c;
    public final ContactUsDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f63022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f63023f;
    public final GetDYPlpChooseVariationUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f63024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DisplayedPLPType f63025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f63026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PLPByCategoryDelegate f63027k;
    public final PLPWishlistDelegate l;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1", f = "PLPCatalogViewModelImpl.kt", l = {110}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63028b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ FilterCommand f63029c;
        public final /* synthetic */ PLPCatalogViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FilterCommand filterCommand, PLPCatalogViewModelImpl pLPCatalogViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f63029c = filterCommand;
            this.d = pLPCatalogViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f63029c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63028b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final SharedFlowImpl sharedFlowImpl = this.f63029c.f57993c;
                Flow<FilterParams> flow = new Flow<FilterParams>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f63032b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$1$invokeSuspend$$inlined$filter$1$2", f = "PLPCatalogViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f63033b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f63034c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f63033b = obj;
                                this.f63034c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f63032b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f63034c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f63034c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f63033b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f63034c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((FilterParams) obj).f57986c == QafSource.PLP) {
                                    anonymousClass1.f63034c = 1;
                                    if (this.f63032b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                        Object objF = sharedFlowImpl.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                final PLPCatalogViewModelImpl pLPCatalogViewModelImpl = this.d;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        FilterParams filterParams = (FilterParams) obj2;
                        pLPCatalogViewModelImpl.l(filterParams.f57984a, filterParams.f57985b);
                        return Unit.f71739a;
                    }
                };
                this.f63028b = 1;
                if (flow.f(flowCollector, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$2", f = "PLPCatalogViewModelImpl.kt", l = {117}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63035b;

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PLPCatalogViewModelImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = PLPCatalogViewModelImpl.this.d;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63035b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f63035b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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
    public PLPCatalogViewModelImpl(Monitor monitor, LVEventSender lVEventSender, FilterCommand filterCommand, SavedStateHandle savedStateHandle, GetCategoryPlpUseCase getCategoryPlpUseCase, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, IsProductInWishlistUseCase isProductInWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, GetCatalogUseCase getCatalogUseCase, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetDYPlpChooseVariationUseCase getDYPlpChooseVariationUseCase) {
        Object failure;
        monitor.getClass();
        lVEventSender.getClass();
        filterCommand.getClass();
        savedStateHandle.getClass();
        getCategoryPlpUseCase.getClass();
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        isProductInWishlistUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        getCatalogUseCase.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        isFeatureAvailableUseCase.getClass();
        getDYPlpChooseVariationUseCase.getClass();
        this.f63019a = analyticsTracker;
        this.f63020b = appsFlyerTracker;
        this.f63021c = getCatalogUseCase;
        this.d = contactUsDelegate;
        this.f63022e = userSessionService;
        this.f63023f = isFeatureAvailableUseCase;
        this.g = getDYPlpChooseVariationUseCase;
        this.f63024h = requireUserInAppDispatchUseCase.f49912a.b();
        this.f63025i = DisplayedPLPType.ClassicPlp.f62871a;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = ((CatalogRoutes.Plp) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(CatalogRoutes.Plp.class), MapsKt.c())).f55285c;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        String str = (String) (failure instanceof Result.Failure ? null : failure);
        if (str == null && (str = (String) savedStateHandle.a("nav_arg_plp_key")) == null) {
            str = "";
        }
        String str2 = str;
        this.f63026j = str2;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(filterCommand, this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPCatalogViewModelImpl$computeCatalogType$1(this, null), 3);
        this.f63027k = new PLPByCategoryDelegate(this.f63023f.b(new Feature[]{Feature.PLP_V3_GRID_VIEW}), this.f63023f.b(new Feature[]{Feature.AI_COMPANION}), str2, ViewModelKt.a(this), true, filterCommand, isProductInWishlistUseCase, new PLPCatalogViewModelImpl$delegate$1(monitor, this, getCategoryPlpUseCase, null));
        this.l = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, this.f63024h, this.f63020b, this.f63019a, this.f63022e, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.d.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final boolean B2() {
        return this.f63023f.b(new Feature[]{Feature.NATIVE_SHARE_CATALOG});
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.d.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void C1(FocusedProductUiModel focusedProductUiModel) {
        this.f63027k.f63205c.m.setValue(focusedProductUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel
    public final StateFlow C2() {
        final StateFlow stateFlow = this.f63027k.d;
        Flow<String> flow = new Flow<String>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f63052b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$special$$inlined$map$1$2", f = "PLPCatalogViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f63053b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f63054c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f63053b = obj;
                        this.f63054c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f63052b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f63054c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f63054c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f63053b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f63054c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        String str = ((FilterParams) obj).f57984a;
                        anonymousClass1.f63054c = 1;
                        if (this.f63052b.emit(str, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
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
                Object objF = stateFlow.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        return FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, this.f63026j);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.d.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel
    /* JADX INFO: renamed from: G1, reason: from getter */
    public final DisplayedPLPType getF63025i() {
        return this.f63025i;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.d.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void K(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
        pLPByCategoryDelegate.getClass();
        pLPByCategoryDelegate.f63205c.getClass();
        PLPCoreDelegate.a(plpProductUiModel, false);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.d.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void O0(PLPTrackingUiModel pLPTrackingUiModel) {
        this.f63019a.a(PLPTrackingUiModelKt.b(pLPTrackingUiModel, ((PLPViewState) this.f63027k.f63206e.getValue()).f63006b, 2));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void Q(GridModes gridModes) {
        gridModes.getClass();
        PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
        pLPByCategoryDelegate.getClass();
        pLPByCategoryDelegate.f63205c.b(gridModes);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.d.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.d.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel
    /* JADX INFO: renamed from: Y2, reason: from getter */
    public final String getF63026j() {
        return this.f63026j;
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final StateFlow a() {
        return this.f63027k.f63206e;
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPCatalogViewModelImpl$setUserChatConsentEnabled$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.d.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final SharedFlowImpl g() {
        return this.l.p;
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel
    public final void h9(String str) {
        str.getClass();
        PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
        pLPByCategoryDelegate.getClass();
        str.getClass();
        pLPByCategoryDelegate.f63204b.setValue(str);
        pLPByCategoryDelegate.f63203a.setValue(new FilterParams(str, null, null, null, null, 28, null));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.d.i();
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f63019a.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void ka(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode) {
        MutableState mutableState;
        pLPWishlistUpdateUiModel.getClass();
        String str = pLPWishlistUpdateUiModel.f62907a.f63167a;
        boolean z = pLPWishlistUpdateUiModel.f62908b;
        PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
        pLPByCategoryDelegate.getClass();
        PLPCoreDelegate pLPCoreDelegate = pLPByCategoryDelegate.f63205c;
        pLPCoreDelegate.getClass();
        PlpProductUiModel plpProductUiModel = (PlpProductUiModel) pLPCoreDelegate.f63175i.get(new SkuIdUiModel(str));
        if (plpProductUiModel != null && (mutableState = plpProductUiModel.g) != null) {
            mutableState.setValue(Boolean.valueOf(z));
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPCatalogViewModelImpl$updateWishlist$1(this, pLPWishlistUpdateUiModel, (PLPAddToWishlistTrackingMode.Revamp) pLPAddToWishlistTrackingMode, (PLPRemoveFromWishlistTrackingMode.Revamp) pLPRemoveFromWishlistTrackingMode, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel
    public final void l(String str, String str2) {
        str.getClass();
        PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
        pLPByCategoryDelegate.getClass();
        str.getClass();
        pLPByCategoryDelegate.f63203a.setValue(new FilterParams(str, str2, null, null, null, 28, null));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.d.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void p() {
        this.l.d();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.d.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.d.s();
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void u5(PlpProductUiModel plpProductUiModel, PLPAddToWishlistTrackingMode.Revamp revamp, PLPRemoveFromWishlistTrackingMode.Revamp revamp2) {
        plpProductUiModel.getClass();
        MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
        if (mutableState == null || ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62953b) {
            return;
        }
        boolean z = !((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62952a;
        mutableState.setValue(PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel.a((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b(), false, 1));
        if (this.f63022e.b()) {
            PLPByCategoryDelegate pLPByCategoryDelegate = this.f63027k;
            pLPByCategoryDelegate.getClass();
            pLPByCategoryDelegate.f63205c.getClass();
            PLPCoreDelegate.a(plpProductUiModel, true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPCatalogViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, revamp, revamp2, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.d.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.d.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.d.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.d.z();
    }
}
