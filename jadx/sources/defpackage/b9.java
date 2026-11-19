package defpackage;

import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b9 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModel f20792c;

    public /* synthetic */ b9(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, int i2) {
        this.f20791b = i2;
        this.f20792c = distantRepairAssessmentViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f20791b;
        DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = this.f20792c;
        switch (i2) {
            case 0:
                distantRepairAssessmentViewModel.d(DistantRepairTrackingUiModel.ContactExpertClickedEvent.f57427a);
                break;
            case 1:
                distantRepairAssessmentViewModel.c();
                break;
            default:
                distantRepairAssessmentViewModel.c();
                break;
        }
        return Unit.f71739a;
    }
}
