package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PrebookSummaryViewModel {
    void A5(SummaryBottomSheet.ExitWarning exitWarning);

    void E7();

    void Ib();

    void J4();

    void S3(BookingSummaryTrackingUiModel bookingSummaryTrackingUiModel);

    void Sa(BookingFormUiModel bookingFormUiModel);

    void Y8();

    StateFlow a();

    SharedFlow b();

    StateFlow e();

    void n3(PreBookConfirmForm preBookConfirmForm);

    void q5();

    void qc(String str, BookingFormUiModel bookingFormUiModel);

    StateFlow t4();

    void w4(String str);

    SharedFlow y();
}
