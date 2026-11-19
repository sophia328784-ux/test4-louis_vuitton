package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.AssessmentInformationKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InAppDispatch f71597c;
    public final /* synthetic */ CareServiceDetailUiModel d;

    public /* synthetic */ k9(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, int i2, int i3) {
        this.f71596b = i3;
        this.f71597c = inAppDispatch;
        this.d = careServiceDetailUiModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71596b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AssessmentInformationKt.b(this.f71597c, this.d, composer, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                AssessmentPreliminaryComponentKt.d(this.f71597c, this.d, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                RepairDetailScreenKt.e(this.f71597c, this.d, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
