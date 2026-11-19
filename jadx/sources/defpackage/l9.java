package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideErrorScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentLoadingScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f75979c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ l9(SnackbarHostState snackbarHostState, Function0 function0, int i2, int i3) {
        this.f75978b = i3;
        this.f75979c = snackbarHostState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f75978b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AssessmentLoadingScreenKt.a(this.f75979c, this.d, composer, RecomposeScopeImplKt.a(7));
                break;
            default:
                AudioGuideErrorScreenKt.a(this.f75979c, this.d, composer, RecomposeScopeImplKt.a(7));
                break;
        }
        return Unit.f71739a;
    }
}
