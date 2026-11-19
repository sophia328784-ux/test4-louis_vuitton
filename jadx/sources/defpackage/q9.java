package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79049b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AssessmentViewState f79050c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ q9(AssessmentViewState assessmentViewState, Function0 function0) {
        this.f79050c = assessmentViewState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79049b;
        Function0 function0 = this.d;
        AssessmentViewState assessmentViewState = this.f79050c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean z = assessmentViewState.f57358c.d == FormState.CONFIRM && !assessmentViewState.f57357b;
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new x20(18);
                        composer.q(objX);
                    }
                    EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX);
                    TweenSpec tweenSpecC = AnimationSpecKt.c(150, 0, EasingKt.f3864c, 2);
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new x20(18);
                        composer.q(objX2);
                    }
                    AnimatedVisibilityKt.e(z, null, enterTransitionR, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC), null, ComposableLambdaKt.b(-836414329, new a3(function0, 4), composer), composer, 196992, 18);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                RepairShippingConfirmationComposableKt.d(assessmentViewState, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ q9(AssessmentViewState assessmentViewState, Function0 function0, int i2) {
        this.f79050c = assessmentViewState;
        this.d = function0;
    }
}
