package com.vuitton.android.presentation.screen.booking.personalinfo;

import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingPersonalInfoViewModel {
    void O6();

    boolean V8();

    void Y1();

    StateFlow a();

    SharedFlow b();

    PreBookConfirmForm c4();

    void c5(String str);

    void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    void k4();

    void va(BookingPersonalInfoTrackingUiModel bookingPersonalInfoTrackingUiModel);

    SharedFlow y();
}
