package defpackage;

import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gu implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModel f69491c;

    public /* synthetic */ gu(DistantRepairFormBffViewModel distantRepairFormBffViewModel, int i2) {
        this.f69490b = i2;
        this.f69491c = distantRepairFormBffViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69490b;
        DistantRepairFormBffViewModel distantRepairFormBffViewModel = this.f69491c;
        switch (i2) {
            case 0:
                distantRepairFormBffViewModel.d(DistantRepairTrackingUiModel.EligibleProductCardClickedEvent.f57431a);
                break;
            case 1:
                distantRepairFormBffViewModel.d(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.CREATION));
                break;
            case 2:
                distantRepairFormBffViewModel.d(new DistantRepairTrackingUiModel.RescheduleSelectTimeEvent(AppointmentCalendarContext.CREATION));
                break;
            case 3:
                distantRepairFormBffViewModel.d(new DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent(AppointmentCalendarContext.CREATION));
                break;
            case 4:
                distantRepairFormBffViewModel.d(DistantRepairTrackingUiModel.PostalCodeExclusionAppearedEvent.f57436a);
                break;
            default:
                distantRepairFormBffViewModel.c();
                break;
        }
        return Unit.f71739a;
    }
}
