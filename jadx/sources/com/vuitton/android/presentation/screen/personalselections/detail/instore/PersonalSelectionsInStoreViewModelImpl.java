package com.vuitton.android.presentation.screen.personalselections.detail.instore;

import android.app.Application;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsDetailUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
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
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import defpackage.xn0;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B©\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010*\u001a\u00020\u0003¢\u0006\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;", "getPersonalSelectionsDetailUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "contactUsDelegate", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PersonalSelectionsInStoreViewModelImpl extends ViewModel implements PersonalSelectionsInStoreViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f62511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f62512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f62513c;
    public final GetWishlistUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Monitor f62514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsTracker f62515f;
    public final AppsFlyerTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetPersonalSelectionsDetailUseCase f62516h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetSkusProductsListUseCase f62517i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f62518j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f62519k;
    public final IsProductInWishlistUseCase l;
    public final ContactUsDelegate m;
    public final InAppDispatch n;
    public final String o;
    public String p;
    public final MutableStateFlow q;
    public final StateFlow r;
    public final BufferedChannel s;
    public final Flow t;
    public List u;
    public final PLPWishlistDelegate v;

    @Inject
    public PersonalSelectionsInStoreViewModelImpl(SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, Logger logger, LVEventSender lVEventSender, Application application, UserSessionService userSessionService, GetWishlistUseCase getWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, Monitor monitor, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, NotificationBuilder notificationBuilder, GetPersonalSelectionsDetailUseCase getPersonalSelectionsDetailUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, IsProductInWishlistUseCase isProductInWishlistUseCase, ContactUsDelegate contactUsDelegate) {
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        logger.getClass();
        lVEventSender.getClass();
        application.getClass();
        userSessionService.getClass();
        getWishlistUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        notificationBuilder.getClass();
        getPersonalSelectionsDetailUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        isProductInWishlistUseCase.getClass();
        contactUsDelegate.getClass();
        this.f62511a = logger;
        this.f62512b = application;
        this.f62513c = userSessionService;
        this.d = getWishlistUseCase;
        this.f62514e = monitor;
        this.f62515f = analyticsTracker;
        this.g = appsFlyerTracker;
        this.f62516h = getPersonalSelectionsDetailUseCase;
        this.f62517i = getSkusProductsListUseCase;
        this.f62518j = requireCachedAppConfigUseCase;
        this.f62519k = isFeatureAvailableUseCase;
        this.l = isProductInWishlistUseCase;
        this.m = contactUsDelegate;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.n = inAppDispatchB;
        this.o = ((PersonalSelectionsRoute.InStoreDetail) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(PersonalSelectionsRoute.InStoreDetail.class), MapsKt.c())).f62396a;
        PersonalSelectionsInStoreViewState.Loading loading = PersonalSelectionsInStoreViewState.Loading.f62556a;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(loading);
        this.q = mutableStateFlowA;
        this.r = FlowKt.b(mutableStateFlowA);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.s = bufferedChannelA;
        this.t = FlowKt.y(bufferedChannelA);
        this.u = EmptyList.f71768b;
        this.v = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
        mutableStateFlowA.setValue(loading);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$loadDetail$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$initContactUsDelegate$1(this, null), 3);
        contactUsDelegate.C(ScreenType.SERVICES);
    }

    /* JADX WARN: Code duplicated, block: B:182:0x024b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x022e A[Catch: all -> 0x0336, TRY_LEAVE, TryCatch #17 {all -> 0x0336, blocks: (B:71:0x0228, B:73:0x022e, B:80:0x027d), top: B:184:0x0228 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Path cross not found for [B:10:0x002c, B:25:0x0107], limit reached: 193 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x025c -> B:154:0x0309). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x02d9 -> B:87:0x02f2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl r28, com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel r29, java.lang.String r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, java.util.List r34, com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel r35, java.util.ArrayList r36, kotlin.coroutines.jvm.internal.ContinuationImpl r37) {
        /*
            Method dump skipped, instruction units count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl.yc(com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl, com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List, com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel, java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.m.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.m.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void E(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel) {
        pLPWishlistUpdateUiModel.getClass();
        this.v.e(pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.m.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void F8() {
        this.q.setValue(PersonalSelectionsInStoreViewState.Loading.f62556a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$loadDetail$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void H(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
        if (mutableState == null || ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62953b) {
            return;
        }
        boolean z = !((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62952a;
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true));
        if (this.f62513c.b()) {
            plpProductUiModel.g.setValue(Boolean.TRUE);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.m.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void K(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        plpProductUiModel.g.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.m.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void Na() {
        String str = this.p;
        String string = this.f62512b.getString(R.string.services_my_personal_selections_title);
        string.getClass();
        if (str != null && !StringsKt.w(str)) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2(this, str, string, null), 3);
        } else {
            this.f62511a.a("PersonalSelectionsInStoreViewModelImpl", new xn0(this, 0));
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.m.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.m.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getR() {
        return this.r;
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void c() {
        this.m.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    /* JADX INFO: renamed from: f2, reason: from getter */
    public final Flow getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.m.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final SharedFlowImpl g() {
        return this.v.p;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.m.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.m.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void p1(PersonalSelectionsInStoreTrackingUiModel personalSelectionsInStoreTrackingUiModel) {
        Hit defaultEventHit;
        personalSelectionsInStoreTrackingUiModel.getClass();
        if (personalSelectionsInStoreTrackingUiModel.equals(PersonalSelectionsInStoreTrackingUiModel.InStoreSelectionScreen.f62551a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "in_store_selection", null, "personal_selection", null, 17, null);
        } else if (personalSelectionsInStoreTrackingUiModel instanceof PersonalSelectionsInStoreTrackingUiModel.ProductClickEvent) {
            PersonalSelectionsInStoreTrackingUiModel.ProductClickEvent productClickEvent = (PersonalSelectionsInStoreTrackingUiModel.ProductClickEvent) personalSelectionsInStoreTrackingUiModel;
            AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(String.valueOf(productClickEvent.f62552a));
            String str = productClickEvent.f62553b;
            SkuId.Companion companion = SkuId.INSTANCE;
            str.getClass();
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "in_store_selection", "product_page", "personal_selection", "click", null, CollectionsKt.P(contentId, new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str)))), 33, null);
        } else if (personalSelectionsInStoreTrackingUiModel.equals(PersonalSelectionsInStoreTrackingUiModel.BookAppointmentEvent.f62550a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "in_store_selection", "book_appointment", "personal_selection", "click", null, null, 97, null);
        } else {
            if (!personalSelectionsInStoreTrackingUiModel.equals(PersonalSelectionsInStoreTrackingUiModel.ShareEvent.f62554a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "in_store_selection", "share_intention", "personal_selection", "click", null, null, 97, null);
        }
        this.f62515f.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.m.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.m.s();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel
    public final void t8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsInStoreViewModelImpl$refreshWishlistStatus$1(this, null), 3);
        this.v.d();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.m.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.m.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.m.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.m.z();
    }
}
