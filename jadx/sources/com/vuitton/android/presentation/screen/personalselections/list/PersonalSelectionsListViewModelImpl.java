package com.vuitton.android.presentation.screen.personalselections.list;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsListUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B9\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;", "getPersonalSelectionsListUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "contactUsDelegate", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PersonalSelectionsListViewModelImpl extends ViewModel implements PersonalSelectionsListViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f62591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f62592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f62593c;
    public final GetPersonalSelectionsListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f62594e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactUsDelegate f62595f;
    public final InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f62596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StateFlow f62597i;

    @Inject
    public PersonalSelectionsListViewModelImpl(Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, GetPersonalSelectionsListUseCase getPersonalSelectionsListUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ContactUsDelegate contactUsDelegate) {
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        getPersonalSelectionsListUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        contactUsDelegate.getClass();
        this.f62591a = logger;
        this.f62592b = analyticsTracker;
        this.f62593c = monitor;
        this.d = getPersonalSelectionsListUseCase;
        this.f62594e = requireUserInAppDispatchUseCase;
        this.f62595f = contactUsDelegate;
        this.g = requireUserInAppDispatchUseCase.f49912a.b();
        PersonalSelectionsListViewState.Loading loading = PersonalSelectionsListViewState.Loading.f62646a;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(loading);
        this.f62596h = mutableStateFlowA;
        this.f62597i = FlowKt.b(mutableStateFlowA);
        mutableStateFlowA.setValue(loading);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsListViewModelImpl$initContactUsDelegate$1(this, null), 3);
        contactUsDelegate.C(ScreenType.SERVICES);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f62595f.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f62595f.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f62595f.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f62595f.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f62595f.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f62595f.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f62595f.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF62597i() {
        return this.f62597i;
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel
    public final void c() {
        this.f62595f.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel
    public final void ca(PersonalSelectionsListTrackingUiModel personalSelectionsListTrackingUiModel) {
        Hit defaultEventHit;
        personalSelectionsListTrackingUiModel.getClass();
        if (personalSelectionsListTrackingUiModel.equals(PersonalSelectionsListTrackingUiModel.InStoreScreen.f62640a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_personal_in_store_selection", null, "personal_selection", null, 17, null);
        } else if (personalSelectionsListTrackingUiModel.equals(PersonalSelectionsListTrackingUiModel.AdvisorCurationScreen.f62637a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_personal_advisor_curation", null, "personal_selection", null, 17, null);
        } else if (personalSelectionsListTrackingUiModel instanceof PersonalSelectionsListTrackingUiModel.DiscoverSelectionEvent) {
            PersonalSelectionsListTrackingUiModel.DiscoverSelectionEvent discoverSelectionEvent = (PersonalSelectionsListTrackingUiModel.DiscoverSelectionEvent) personalSelectionsListTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, discoverSelectionEvent.f62638a, "discover_selection", "personal_selection", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(String.valueOf(discoverSelectionEvent.f62639b))), 33, null);
        } else if (!(personalSelectionsListTrackingUiModel instanceof PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent)) {
            v40.g();
            return;
        } else {
            PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent scrollPercentageReachedEvent = (PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent) personalSelectionsListTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, scrollPercentageReachedEvent.f62641a, "scroll", "personal_selection", "scroll", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(scrollPercentageReachedEvent.f62642b, "%"))), 33, null);
        }
        this.f62592b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f62595f.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f62595f.i();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel
    public final void i8() {
        this.f62596h.setValue(PersonalSelectionsListViewState.Loading.f62646a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f62595f.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f62595f.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f62595f.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f62595f.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f62595f.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f62595f.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f62595f.z();
    }
}
