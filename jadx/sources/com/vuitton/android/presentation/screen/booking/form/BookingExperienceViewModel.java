package com.vuitton.android.presentation.screen.booking.form;

import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormTrackingUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingExperienceViewModel {
    void K8(String str, BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory);

    void M6(String str);

    void Ma(BookingFormTrackingUiModel bookingFormTrackingUiModel);

    /* JADX INFO: renamed from: U7 */
    boolean getO();

    /* JADX INFO: renamed from: a */
    StateFlow getF54437k();

    /* JADX INFO: renamed from: b */
    SharedFlow getN();

    void bb(List list);

    /* JADX INFO: renamed from: ma */
    boolean getP();

    void n();

    void t9(String str, BookingFormModuleDataUiModel bookingFormModuleDataUiModel);

    void u1();
}
