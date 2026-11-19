package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import java.time.LocalDate;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DatePickerViewModel {
    void I7(TimeSlotUiModel timeSlotUiModel, DistantRepairContactMethod distantRepairContactMethod);

    Flow N6();

    void Tb(LocalDate localDate, String str, DistantRepairContactMethod distantRepairContactMethod, List list);

    void a5(AvailabilitiesCaller availabilitiesCaller, String str, DistantRepairContactMethod distantRepairContactMethod);

    Flow b();

    StateFlow w3();
}
