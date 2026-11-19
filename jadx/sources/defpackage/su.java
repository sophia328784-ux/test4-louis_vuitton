package defpackage;

import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class su implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModel f79879c;

    public /* synthetic */ su(DistantRepairFormViewModel distantRepairFormViewModel, int i2) {
        this.f79878b = i2;
        this.f79879c = distantRepairFormViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79878b;
        DistantRepairFormViewModel distantRepairFormViewModel = this.f79879c;
        switch (i2) {
            case 0:
                distantRepairFormViewModel.d(DistantRepairTrackingUiModel.EligibleProductCardClickedEvent.f57431a);
                break;
            case 1:
                distantRepairFormViewModel.d(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.CREATION));
                break;
            case 2:
                distantRepairFormViewModel.d(new DistantRepairTrackingUiModel.RescheduleSelectTimeEvent(AppointmentCalendarContext.CREATION));
                break;
            case 3:
                distantRepairFormViewModel.d(new DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent(AppointmentCalendarContext.CREATION));
                break;
            case 4:
                distantRepairFormViewModel.d(DistantRepairTrackingUiModel.PostalCodeExclusionAppearedEvent.f57436a);
                break;
            default:
                distantRepairFormViewModel.c();
                break;
        }
        return Unit.f71739a;
    }
}
