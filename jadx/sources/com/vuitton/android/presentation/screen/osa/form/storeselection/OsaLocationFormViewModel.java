package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import java.time.LocalDate;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OsaLocationFormViewModel {
    void H4(TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel);

    void I0(AuthenticationTrackingUiModel authenticationTrackingUiModel);

    void J5(OsaItemUiModel osaItemUiModel);

    void J7(String str, AppointmentTypeUiModel appointmentTypeUiModel);

    Flow M9();

    void Mb();

    StateFlow R0();

    Object V2(ContinuationImpl continuationImpl);

    void Wb();

    StateFlow a();

    Flow b();

    void e2();

    Flow e9();

    void fc(String str, List list, boolean z);

    void o(OsaTrackingUiModel osaTrackingUiModel);

    void o8();

    void q1(LocalDate localDate);

    Object r2(ContinuationImpl continuationImpl);

    void r4(PlaceGeocodingUiModel placeGeocodingUiModel);

    void t();
}
