package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81476b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f81477c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f81478e;

    public /* synthetic */ z0(AICompanionViewModel aICompanionViewModel, Function0 function0, Function0 function1) {
        this.f81477c = aICompanionViewModel;
        this.d = function0;
        this.f81478e = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81476b;
        Function0 function0 = this.f81478e;
        Function0 function1 = this.d;
        AICompanionViewModel aICompanionViewModel = this.f81477c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    MutableState mutableStateC = FlowExtKt.c(aICompanionViewModel.getU(), null, composer, 0, 7);
                    AICompanionTracker aICompanionTracker = (AICompanionTracker) composer.k(AICompanionTrackerEntryPointKt.f52911a);
                    AICompanionViewState aICompanionViewState = (AICompanionViewState) mutableStateC.getF10755b();
                    boolean zY = composer.y(aICompanionTracker) | composer.K(function1);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new j(aICompanionTracker, function1, 2);
                        composer.q(objX);
                    }
                    Function0 function2 = (Function0) objX;
                    boolean zY2 = composer.y(aICompanionTracker) | composer.K(function0);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new j(aICompanionTracker, function0, 3);
                        composer.q(objX2);
                    }
                    AICompanionOnboardingScreenKt.a(null, aICompanionViewState, function2, (Function0) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                AICompanionOnboardingComposableKt.a(aICompanionViewModel, function1, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ z0(AICompanionViewModel aICompanionViewModel, Function0 function0, Function0 function1, int i2) {
        this.f81477c = aICompanionViewModel;
        this.d = function0;
        this.f81478e = function1;
    }
}
