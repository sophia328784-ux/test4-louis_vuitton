package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYPlpChooseVariationUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase;
import com.vuitton.android.domain.usecase.plp.GetSkusPLPUseCase;
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
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySkusDelegate;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.of0;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0099\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;", "getSkusPLP", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;", "reportDYSlotClickUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;", "getDYPlpChooseVariationUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPSkusViewModelImpl extends ViewModel implements PLPViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f63084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f63085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SavedStateHandle f63086c;
    public final ContactUsDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f63087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ReportDYSlotClickUseCase f63088f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetDYPlpChooseVariationUseCase f63089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f63090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PLPWishlistDelegate f63091j;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl$1", f = "PLPSkusViewModelImpl.kt", l = {112}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63092b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PLPSkusViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = PLPSkusViewModelImpl.this.d;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63092b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f63092b = 1;
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl$2", f = "PLPSkusViewModelImpl.kt", l = {116}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63094b;

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PLPSkusViewModelImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63094b;
            if (i2 == 0) {
                ResultKt.b(obj);
                GetDYPlpChooseVariationUseCase getDYPlpChooseVariationUseCase = PLPSkusViewModelImpl.this.f63089h;
                this.f63094b = 1;
                if (getDYPlpChooseVariationUseCase.a("skus", this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                ((Result) obj).getClass();
            }
            return Unit.f71739a;
        }
    }

    @Inject
    public PLPSkusViewModelImpl(Monitor monitor, LVEventSender lVEventSender, GetSkusPLPUseCase getSkusPLPUseCase, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, IsProductInWishlistUseCase isProductInWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, SavedStateHandle savedStateHandle, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, ReportDYSlotClickUseCase reportDYSlotClickUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetDYPlpChooseVariationUseCase getDYPlpChooseVariationUseCase) {
        monitor.getClass();
        lVEventSender.getClass();
        getSkusPLPUseCase.getClass();
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        isProductInWishlistUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        savedStateHandle.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        reportDYSlotClickUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getDYPlpChooseVariationUseCase.getClass();
        this.f63084a = analyticsTracker;
        this.f63085b = appsFlyerTracker;
        this.f63086c = savedStateHandle;
        this.d = contactUsDelegate;
        this.f63087e = userSessionService;
        this.f63088f = reportDYSlotClickUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f63089h = getDYPlpChooseVariationUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null), 3);
        this.f63090i = LazyKt.b(new of0(this, getSkusPLPUseCase, isProductInWishlistUseCase, 19));
        this.f63091j = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.d.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.d.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void C1(FocusedProductUiModel focusedProductUiModel) {
        yc().f63227b.m.setValue(focusedProductUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.d.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.d.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void K(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        PLPBySkusDelegate pLPBySkusDelegateYc = yc();
        pLPBySkusDelegateYc.getClass();
        pLPBySkusDelegateYc.f63227b.getClass();
        PLPCoreDelegate.a(plpProductUiModel, false);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.d.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void O0(PLPTrackingUiModel pLPTrackingUiModel) {
        pLPTrackingUiModel.getClass();
        this.f63084a.a(PLPTrackingUiModelKt.b(pLPTrackingUiModel, ((PLPViewState) yc().f63228c.getValue()).f63006b, 2));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void Q(GridModes gridModes) {
        gridModes.getClass();
        PLPBySkusDelegate pLPBySkusDelegateYc = yc();
        pLPBySkusDelegateYc.getClass();
        gridModes.getClass();
        pLPBySkusDelegateYc.f63227b.b(gridModes);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.d.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.d.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final StateFlow a() {
        return yc().f63228c;
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPSkusViewModelImpl$setUserChatConsentEnabled$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.d.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final SharedFlowImpl g() {
        return this.f63091j.p;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.d.i();
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f63084a.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void ka(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode) {
        pLPWishlistUpdateUiModel.getClass();
        this.f63091j.e(pLPWishlistUpdateUiModel, pLPAddToWishlistTrackingMode, pLPRemoveFromWishlistTrackingMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.d.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel
    public final void p() {
        this.f63091j.d();
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
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true));
        if (this.f63087e.b()) {
            PLPBySkusDelegate pLPBySkusDelegateYc = yc();
            pLPBySkusDelegateYc.getClass();
            pLPBySkusDelegateYc.f63227b.getClass();
            PLPCoreDelegate.a(plpProductUiModel, true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPSkusViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, revamp, revamp2, null), 3);
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

    public final PLPBySkusDelegate yc() {
        return (PLPBySkusDelegate) this.f63090i.getF71699b();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.d.z();
    }

    public final void zc(String str) {
        Collection collection = (List) this.f63086c.a("nav_arg_plp_slotted_sku_list");
        if (collection == null) {
            collection = EmptyList.f71768b;
        }
        if (CollectionExtKt.a(collection)) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PLPSkusViewModelImpl$onSlottedProductClicked$1(this, str, null), 3);
        }
    }
}
