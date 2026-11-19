package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.history.AICompanionHistoryComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80455b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f80456c;
    public final /* synthetic */ NavBackStack d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f80457e;

    public /* synthetic */ v0(AICompanionViewModel aICompanionViewModel, NavBackStack navBackStack, Function0 function0) {
        this.f80456c = aICompanionViewModel;
        this.d = navBackStack;
        this.f80457e = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80455b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f80457e;
        NavBackStack navBackStack = this.d;
        AICompanionViewModel aICompanionViewModel = this.f80456c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((AICompanionRoutes.Onboarding) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zY = composer.y(navBackStack) | composer.y(aICompanionViewModel);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new u0(navBackStack, aICompanionViewModel);
                        composer.q(objX);
                    }
                    AICompanionOnboardingComposableKt.a(aICompanionViewModel, function0, (Function0) objX, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((AICompanionRoutes.History) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean zY2 = composer2.y(navBackStack) | composer2.K(function0);
                    Object objX2 = composer2.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new y0(navBackStack, function0, 0);
                        composer2.q(objX2);
                    }
                    AICompanionHistoryComposableKt.a(aICompanionViewModel, (Function0) objX2, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ v0(AICompanionViewModel aICompanionViewModel, Function0 function0, NavBackStack navBackStack) {
        this.f80456c = aICompanionViewModel;
        this.f80457e = function0;
        this.d = navBackStack;
    }
}
