package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.history.AICompanionHistoryComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.history.AICompanionHistoryScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76139b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f76140c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ m0(AICompanionViewModel aICompanionViewModel, Function0 function0) {
        this.f76140c = aICompanionViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76139b;
        AICompanionViewModel aICompanionViewModel = this.f76140c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i3 = 0;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    MutableState mutableStateC = FlowExtKt.c(aICompanionViewModel.getU(), null, composer, 0, 7);
                    AICompanionTracker aICompanionTracker = (AICompanionTracker) composer.k(AICompanionTrackerEntryPointKt.f52911a);
                    AICompanionViewState aICompanionViewState = (AICompanionViewState) mutableStateC.getF10755b();
                    boolean zY = composer.y(aICompanionViewModel) | composer.y(aICompanionTracker);
                    Function0 function0 = this.d;
                    boolean zK = composer.K(function0) | zY;
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new n(aICompanionViewModel, aICompanionTracker, function0);
                        composer.q(objX);
                    }
                    Function0 function1 = (Function0) objX;
                    boolean zY2 = composer.y(aICompanionViewModel) | composer.y(aICompanionTracker) | composer.K(function0);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new n0(aICompanionViewModel, aICompanionTracker, function0, i3);
                        composer.q(objX2);
                    }
                    Function1 function2 = (Function1) objX2;
                    boolean zY3 = composer.y(aICompanionTracker) | composer.y(aICompanionViewModel);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new l(2, aICompanionViewModel, aICompanionTracker);
                        composer.q(objX3);
                    }
                    AICompanionHistoryScreenKt.a(aICompanionViewState, function1, function2, (Function1) objX3, function0, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                AICompanionHistoryComposableKt.a(aICompanionViewModel, this.d, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ m0(AICompanionViewModel aICompanionViewModel, Function0 function0, int i2) {
        this.f76140c = aICompanionViewModel;
        this.d = function0;
    }
}
