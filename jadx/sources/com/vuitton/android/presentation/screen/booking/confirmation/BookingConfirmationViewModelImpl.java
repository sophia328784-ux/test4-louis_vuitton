package com.vuitton.android.presentation.screen.booking.confirmation;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.booking.GetConfirmedBookingsUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;", "Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;", "getConfirmedBookingsUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingConfirmationViewModelImpl extends ViewModel implements BookingConfirmationViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetConfirmedBookingsUseCase f54376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f54377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f54378c;
    public final InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f54379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f54380f;

    @Inject
    public BookingConfirmationViewModelImpl(GetConfirmedBookingsUseCase getConfirmedBookingsUseCase, AnalyticsTracker analyticsTracker, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        getConfirmedBookingsUseCase.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f54376a = getConfirmedBookingsUseCase;
        this.f54377b = analyticsTracker;
        this.f54378c = monitor;
        this.d = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(BookingConfirmationViewState.Loading.f54395a);
        this.f54379e = mutableStateFlowA;
        this.f54380f = FlowKt.b(mutableStateFlowA);
        U5();
    }

    @Override // com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel
    public final void U5() {
        this.f54379e.setValue(BookingConfirmationViewState.Loading.f54395a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingConfirmationViewModelImpl$getConfirmedBookings$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF54380f() {
        return this.f54380f;
    }

    @Override // com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel
    public final void ya(BookingConfirmationTrackingUiModel bookingConfirmationTrackingUiModel) {
        Hit defaultEventHit;
        if (bookingConfirmationTrackingUiModel instanceof BookingConfirmationTrackingUiModel.ConfirmationScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "booking_confirmation_page", "booking_confirmation_page", "booking", CollectionsKt.O(new AdditionalProperty.ExperienceId(((BookingConfirmationTrackingUiModel.ConfirmationScreen) bookingConfirmationTrackingUiModel).f54391a)), 1, null);
        } else if (bookingConfirmationTrackingUiModel instanceof BookingConfirmationTrackingUiModel.AddToCalendarEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_confirmation_page", "add_to_calendar", "booking_confirmation_page", "click", "booking", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((BookingConfirmationTrackingUiModel.AddToCalendarEvent) bookingConfirmationTrackingUiModel).f54389a))), 1, null);
        } else if (bookingConfirmationTrackingUiModel instanceof BookingConfirmationTrackingUiModel.ViewQrCodeEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_confirmation_page", "view_qr_code", "booking_confirmation_page", "click", "booking", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((BookingConfirmationTrackingUiModel.ViewQrCodeEvent) bookingConfirmationTrackingUiModel).f54393a))), 1, null);
        } else if (bookingConfirmationTrackingUiModel instanceof BookingConfirmationTrackingUiModel.OpenDirectionEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_confirmation_page", "open_direction", "booking_confirmation_page", "click", "booking", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((BookingConfirmationTrackingUiModel.OpenDirectionEvent) bookingConfirmationTrackingUiModel).f54392a))), 1, null);
        } else {
            if (!bookingConfirmationTrackingUiModel.equals(BookingConfirmationTrackingUiModel.CloseEvent.f54390a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_confirmation_page", "close", "booking_confirmation_page", "click", "booking", null, 65, null);
        }
        this.f54377b.a(defaultEventHit);
    }
}
