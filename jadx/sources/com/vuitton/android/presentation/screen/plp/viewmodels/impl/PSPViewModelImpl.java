package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase;
import com.vuitton.android.domain.usecase.search.AddSearchHistoryProductUseCase;
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
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.PSPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PSPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;", "getSearchPLP", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;", "addSearchHistoryProductUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PSPViewModelImpl extends ViewModel implements PSPViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f63105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f63106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContactUsDelegate f63107c;
    public final UserSessionService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AddSearchHistoryProductUseCase f63108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InAppDispatch f63109f;
    public final PLPBySearchDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PLPWishlistDelegate f63110h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$1", f = "PSPViewModelImpl.kt", l = {153}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63111b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "viewState", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$1$1", f = "PSPViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C03021 extends SuspendLambda implements Function2<PSPViewState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f63113b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PSPViewModelImpl f63114c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03021(PSPViewModelImpl pSPViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f63114c = pSPViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C03021 c03021 = new C03021(this.f63114c, continuation);
                c03021.f63113b = obj;
                return c03021;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03021) create((PSPViewState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Integer num;
                AnalyticsTracker analyticsTracker = this.f63114c.f63105a;
                PSPViewState pSPViewState = (PSPViewState) this.f63113b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                String str = pSPViewState.f63014a;
                if (str != null && (num = pSPViewState.f63015b) != null) {
                    analyticsTracker.a(PSPTrackingUiModelKt.a(new PSPTrackingUiModel.ResultScreen(str, num.intValue()), null));
                    analyticsTracker.a(PSPTrackingUiModelKt.a(new PSPTrackingUiModel.SearchDone(pSPViewState.f63014a), null));
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PSPViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63111b;
            if (i2 == 0) {
                ResultKt.b(obj);
                PSPViewModelImpl pSPViewModelImpl = PSPViewModelImpl.this;
                PLPBySearchDelegate$special$$inlined$map$1 pLPBySearchDelegate$special$$inlined$map$1 = pSPViewModelImpl.g.f63211f;
                C03021 c03021 = new C03021(pSPViewModelImpl, null);
                this.f63111b = 1;
                if (FlowKt.g(pLPBySearchDelegate$special$$inlined$map$1, c03021, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2", f = "PSPViewModelImpl.kt", l = {167}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ FilterCommand f63116c;
        public final /* synthetic */ PSPViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(FilterCommand filterCommand, PSPViewModelImpl pSPViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f63116c = filterCommand;
            this.d = pSPViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f63116c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63115b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final SharedFlowImpl sharedFlowImpl = this.f63116c.f57993c;
                Flow<FilterParams> flow = new Flow<FilterParams>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f63119b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$2$invokeSuspend$$inlined$filter$1$2", f = "PSPViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f63120b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f63121c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f63120b = obj;
                                this.f63121c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f63119b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f63121c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f63121c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f63120b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f63121c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((FilterParams) obj).f57986c == QafSource.SEARCH) {
                                    anonymousClass1.f63121c = 1;
                                    if (this.f63119b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                final PSPViewModelImpl pSPViewModelImpl = this.d;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl.2.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        FilterParams filterParams = (FilterParams) obj2;
                        pSPViewModelImpl.l(filterParams.f57984a, filterParams.f57985b);
                        return Unit.f71739a;
                    }
                };
                this.f63115b = 1;
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

    @Inject
    public PSPViewModelImpl(Monitor monitor, LVEventSender lVEventSender, FilterCommand filterCommand, GetSearchPLPUseCase getSearchPLPUseCase, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, IsProductInWishlistUseCase isProductInWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, IsFeatureAvailableUseCase isFeatureAvailableUseCase, AddSearchHistoryProductUseCase addSearchHistoryProductUseCase) {
        monitor.getClass();
        lVEventSender.getClass();
        filterCommand.getClass();
        getSearchPLPUseCase.getClass();
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        isProductInWishlistUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        isFeatureAvailableUseCase.getClass();
        addSearchHistoryProductUseCase.getClass();
        this.f63105a = analyticsTracker;
        this.f63106b = appsFlyerTracker;
        this.f63107c = contactUsDelegate;
        this.d = userSessionService;
        this.f63108e = addSearchHistoryProductUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f63109f = inAppDispatchB;
        this.g = new PLPBySearchDelegate(ViewModelKt.a(this), true, filterCommand, isProductInWishlistUseCase, isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_V3_GRID_VIEW}), isFeatureAvailableUseCase.b(new Feature[]{Feature.AI_COMPANION}), new PSPViewModelImpl$delegate$1(monitor, this, getSearchPLPUseCase, null));
        this.f63110h = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(filterCommand, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f63107c.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f63107c.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void C1(FocusedProductUiModel focusedProductUiModel) {
        this.g.f63209c.m.setValue(focusedProductUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f63107c.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f63107c.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void K(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        PLPBySearchDelegate pLPBySearchDelegate = this.g;
        pLPBySearchDelegate.getClass();
        pLPBySearchDelegate.f63209c.getClass();
        PLPCoreDelegate.a(plpProductUiModel, false);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel
    public final StateFlow M0() {
        return this.g.f63210e;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f63107c.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void O0(PLPTrackingUiModel pLPTrackingUiModel) {
        this.f63105a.a(PLPTrackingUiModelKt.b(pLPTrackingUiModel, null, 3));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void Q(GridModes gridModes) {
        gridModes.getClass();
        PLPBySearchDelegate pLPBySearchDelegate = this.g;
        pLPBySearchDelegate.getClass();
        gridModes.getClass();
        pLPBySearchDelegate.f63209c.b(gridModes);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f63107c.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f63107c.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel
    public final void X0(String str) {
        str.getClass();
        PLPBySearchDelegate pLPBySearchDelegate = this.g;
        pLPBySearchDelegate.getClass();
        pLPBySearchDelegate.f63207a.setValue(new SearchParams(str, null, null, null, 14, null));
        this.f63105a.a(PSPTrackingUiModelKt.a(new PSPTrackingUiModel.RequestSearch(str), null));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final StateFlow a() {
        return this.g.d;
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPViewModelImpl$setUserChatConsentEnabled$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f63107c.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final SharedFlowImpl g() {
        return this.f63110h.p;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f63107c.i();
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f63105a.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void ka(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode) {
        pLPWishlistUpdateUiModel.getClass();
        this.f63110h.e(pLPWishlistUpdateUiModel, pLPAddToWishlistTrackingMode, pLPRemoveFromWishlistTrackingMode);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel
    public final void l(String str, String str2) {
        str.getClass();
        PLPBySearchDelegate pLPBySearchDelegate = this.g;
        pLPBySearchDelegate.getClass();
        str.getClass();
        MutableStateFlow mutableStateFlow = pLPBySearchDelegate.f63207a;
        SearchParams searchParams = (SearchParams) mutableStateFlow.getValue();
        String str3 = searchParams != null ? searchParams.f57988a : null;
        if (str3 == null) {
            str3 = "";
        }
        mutableStateFlow.setValue(new SearchParams(str3, str, str2, null, 8, null));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f63107c.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void p() {
        this.f63110h.d();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f63107c.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f63107c.s();
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void u5(PlpProductUiModel plpProductUiModel, PLPAddToWishlistTrackingMode.Revamp revamp, PLPRemoveFromWishlistTrackingMode.Revamp revamp2) {
        plpProductUiModel.getClass();
        MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
        if (mutableState == null || ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62953b) {
            return;
        }
        boolean z = !((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62952a;
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true));
        if (this.d.b()) {
            PLPBySearchDelegate pLPBySearchDelegate = this.g;
            pLPBySearchDelegate.getClass();
            pLPBySearchDelegate.f63209c.getClass();
            PLPCoreDelegate.a(plpProductUiModel, true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, revamp, revamp2, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f63107c.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f63107c.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f63107c.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel
    public final void x6(HistoryItemUiModel.HistoryProductUiModel historyProductUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPViewModelImpl$saveProductInSearchHistory$1(this, historyProductUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f63107c.z();
    }
}
