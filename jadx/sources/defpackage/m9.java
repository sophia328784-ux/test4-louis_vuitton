package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServiceDetailUiModel.Assessment f76218c;

    public /* synthetic */ m9(CareServiceDetailUiModel.Assessment assessment, int i2, int i3) {
        this.f76217b = i3;
        this.f76218c = assessment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76217b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AssessmentPreliminaryBffComponentKt.e(this.f76218c, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                AssessmentPreliminaryBffComponentKt.d(this.f76218c, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
