package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentConfirmationBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AssessmentBffViewState f21096c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f21097e;

    public /* synthetic */ c9(AssessmentBffViewState assessmentBffViewState, Function0 function0, Function0 function1, int i2, int i3) {
        this.f21095b = i3;
        this.f21096c = assessmentBffViewState;
        this.d = function0;
        this.f21097e = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f21095b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AssessmentConfirmationBffComponentKt.a(this.f21096c, this.d, this.f21097e, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                AssessmentConfirmationBffComponentKt.b(this.f21096c, this.d, this.f21097e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
