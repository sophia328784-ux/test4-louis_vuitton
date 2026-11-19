package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentConfirmationComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AssessmentViewState f68478c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f68479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f68480f;

    public /* synthetic */ d9(AssessmentViewState assessmentViewState, String str, Function0 function0, Function0 function1, int i2, int i3) {
        this.f68477b = i3;
        this.f68478c = assessmentViewState;
        this.d = str;
        this.f68479e = function0;
        this.f68480f = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68477b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                AssessmentConfirmationComponentKt.a(this.f68478c, this.d, this.f68479e, this.f68480f, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                AssessmentConfirmationComponentKt.b(this.f68478c, this.d, this.f68479e, this.f68480f, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
