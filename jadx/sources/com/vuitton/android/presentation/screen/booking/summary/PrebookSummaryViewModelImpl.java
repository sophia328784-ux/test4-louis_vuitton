package com.vuitton.android.presentation.screen.booking.summary;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.booking.AddPreBookUseCase;
import com.vuitton.android.domain.usecase.booking.ConfirmPreBookUseCase;
import com.vuitton.android.domain.usecase.booking.DeleteAllPrebooksUseCase;
import com.vuitton.android.domain.usecase.booking.DeletePrebookUseCase;
import com.vuitton.android.domain.usecase.booking.GetPreBookSummaryUseCase;
import com.vuitton.android.domain.usecase.booking.UpdatePreBookUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModelKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import java.time.Instant;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;", "getPreBookSummaryUseCase", "Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;", "addPreBookUseCase", "Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;", "updatePreBookUseCase", "Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;", "deletePreBookUseCase", "Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;", "deleteAllPrebooksUseCase", "Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;", "confirmPreBookUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PrebookSummaryViewModelImpl extends ViewModel implements PrebookSummaryViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetPreBookSummaryUseCase f54740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AddPreBookUseCase f54741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UpdatePreBookUseCase f54742c;
    public final DeletePrebookUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DeleteAllPrebooksUseCase f54743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConfirmPreBookUseCase f54744f;
    public final NotificationBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Logger f54745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnalyticsTracker f54746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Monitor f54747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SharedFlowImpl f54748k;
    public final SharedFlow l;
    public final SharedFlowImpl m;
    public final SharedFlow n;
    public final InAppDispatch o;
    public final MutableStateFlow p;
    public final StateFlow q;
    public final MutableStateFlow r;
    public final StateFlow s;
    public final MutableStateFlow t;
    public final StateFlow u;
    public final ContextScope v;

    @Inject
    public PrebookSummaryViewModelImpl(CoroutineDispatchers coroutineDispatchers, GetPreBookSummaryUseCase getPreBookSummaryUseCase, AddPreBookUseCase addPreBookUseCase, UpdatePreBookUseCase updatePreBookUseCase, DeletePrebookUseCase deletePrebookUseCase, DeleteAllPrebooksUseCase deleteAllPrebooksUseCase, ConfirmPreBookUseCase confirmPreBookUseCase, NotificationBuilder notificationBuilder, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        coroutineDispatchers.getClass();
        getPreBookSummaryUseCase.getClass();
        addPreBookUseCase.getClass();
        updatePreBookUseCase.getClass();
        deletePrebookUseCase.getClass();
        deleteAllPrebooksUseCase.getClass();
        confirmPreBookUseCase.getClass();
        notificationBuilder.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f54740a = getPreBookSummaryUseCase;
        this.f54741b = addPreBookUseCase;
        this.f54742c = updatePreBookUseCase;
        this.d = deletePrebookUseCase;
        this.f54743e = deleteAllPrebooksUseCase;
        this.f54744f = confirmPreBookUseCase;
        this.g = notificationBuilder;
        this.f54745h = logger;
        this.f54746i = analyticsTracker;
        this.f54747j = monitor;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.f54748k = sharedFlowImplB;
        this.l = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.m = sharedFlowImplB2;
        this.n = FlowKt.a(sharedFlowImplB2);
        this.o = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(PreBookViewState.Loading.f54828a);
        this.p = mutableStateFlowA;
        this.q = FlowKt.b(mutableStateFlowA);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(BookingCTAState.IDLE);
        this.r = mutableStateFlowA2;
        this.s = FlowKt.b(mutableStateFlowA2);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.t = mutableStateFlowA3;
        this.u = FlowKt.b(mutableStateFlowA3);
        this.v = CoroutineScopeKt.a(SupervisorKt.b().plus(coroutineDispatchers.getF43530b()));
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void A5(SummaryBottomSheet.ExitWarning exitWarning) {
        this.t.setValue(exitWarning);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void E7() {
        PreBookViewState preBookViewState = (PreBookViewState) this.p.getValue();
        if (preBookViewState instanceof PreBookViewState.Success) {
            List list = ((PreBookViewState.Success) preBookViewState).f54829a.f54817a;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Instant instant = ((PreBookUiModel) it.next()).f54826i;
                    if (instant != null && instant.isBefore(Instant.now())) {
                        this.t.setValue(SummaryBottomSheet.ExpiredPrebook.f54834a);
                        return;
                    }
                }
            }
            this.f54748k.a(PrebookNavigationEvent.NavigateToPersonalInfo.f54739a);
        }
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void Ib() {
        BuildersKt.c(this.v, null, null, new PrebookSummaryViewModelImpl$deleteAllPrebooks$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void J4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$getPrebookSummary$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void S3(BookingSummaryTrackingUiModel bookingSummaryTrackingUiModel) {
        Hit hitA;
        if (bookingSummaryTrackingUiModel.equals(BookingSummaryTrackingUiModel.SummaryScreen.f54812a)) {
            hitA = new Hit.ScreenHit.DefaultScreenHit(null, "booking_summary", "booking_summary", "booking", null, 17, null);
        } else if (bookingSummaryTrackingUiModel instanceof BookingSummaryTrackingUiModel.ModifyEvent) {
            hitA = BookingSummaryTrackingUiModelKt.a("modify", ((BookingSummaryTrackingUiModel.ModifyEvent) bookingSummaryTrackingUiModel).f54811a);
        } else if (bookingSummaryTrackingUiModel instanceof BookingSummaryTrackingUiModel.DeleteIntentionEvent) {
            hitA = BookingSummaryTrackingUiModelKt.a("delete_intention", ((BookingSummaryTrackingUiModel.DeleteIntentionEvent) bookingSummaryTrackingUiModel).f54809a);
        } else if (bookingSummaryTrackingUiModel instanceof BookingSummaryTrackingUiModel.DeleteConfirmationEvent) {
            hitA = BookingSummaryTrackingUiModelKt.a("delete_confirmation", ((BookingSummaryTrackingUiModel.DeleteConfirmationEvent) bookingSummaryTrackingUiModel).f54808a);
        } else if (bookingSummaryTrackingUiModel instanceof BookingSummaryTrackingUiModel.ExtendExperienceEvent) {
            hitA = BookingSummaryTrackingUiModelKt.a("extend_your_experience", ((BookingSummaryTrackingUiModel.ExtendExperienceEvent) bookingSummaryTrackingUiModel).f54810a);
        } else if (bookingSummaryTrackingUiModel.equals(BookingSummaryTrackingUiModel.CloseIntentionEvent.f54806a)) {
            hitA = BookingSummaryTrackingUiModelKt.a("close_intention", null);
        } else if (bookingSummaryTrackingUiModel.equals(BookingSummaryTrackingUiModel.CloseAbortedEvent.f54804a)) {
            hitA = BookingSummaryTrackingUiModelKt.a("close_aborted", null);
        } else if (bookingSummaryTrackingUiModel.equals(BookingSummaryTrackingUiModel.CloseConfirmedEvent.f54805a)) {
            hitA = BookingSummaryTrackingUiModelKt.a("close_confirmed", null);
        } else {
            if (!bookingSummaryTrackingUiModel.equals(BookingSummaryTrackingUiModel.ContinueEvent.f54807a)) {
                v40.g();
                return;
            }
            hitA = BookingSummaryTrackingUiModelKt.a("continue", null);
        }
        this.f54746i.a(hitA);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void Sa(BookingFormUiModel bookingFormUiModel) {
        bookingFormUiModel.getClass();
        this.r.setValue(BookingCTAState.LOADING);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$addPreBook$1(this, bookingFormUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void Y8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$handlePrebookExpiration$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getQ() {
        return this.q;
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final SharedFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    /* JADX INFO: renamed from: e, reason: from getter */
    public final StateFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void n3(PreBookConfirmForm preBookConfirmForm) {
        preBookConfirmForm.getClass();
        this.r.setValue(BookingCTAState.LOADING);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$confirm$1(this, preBookConfirmForm, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void q5() {
        this.r.setValue(BookingCTAState.IDLE);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void qc(String str, BookingFormUiModel bookingFormUiModel) {
        bookingFormUiModel.getClass();
        this.r.setValue(BookingCTAState.LOADING);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$modifyPrebook$1(this, str, bookingFormUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    /* JADX INFO: renamed from: t4, reason: from getter */
    public final StateFlow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    public final void w4(String str) {
        str.getClass();
        MutableStateFlow mutableStateFlow = this.p;
        Object value = mutableStateFlow.getValue();
        PreBookViewState.Success success = value instanceof PreBookViewState.Success ? (PreBookViewState.Success) value : null;
        if (success == null) {
            return;
        }
        mutableStateFlow.setValue(PreBookViewState.Success.a(success, true, 3));
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrebookSummaryViewModelImpl$deletePreBook$1(this, str, success, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel
    /* JADX INFO: renamed from: y, reason: from getter */
    public final SharedFlow getL() {
        return this.l;
    }
}
