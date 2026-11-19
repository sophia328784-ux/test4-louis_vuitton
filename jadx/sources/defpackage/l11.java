package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeExitConfirmKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeInvalidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l11 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75919b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f75920c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f75921e;

    public /* synthetic */ l11(Modifier modifier, Function0 function0, Function0 function1) {
        this.f75920c = modifier;
        this.d = function0;
        this.f75921e = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f75919b;
        Function0 function0 = this.f75921e;
        Function0 function1 = this.d;
        Modifier modifierE = this.f75920c;
        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
        Composer composer = (Composer) obj2;
        Integer num = (Integer) obj3;
        switch (i2) {
            case 0:
                num.intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "StoreModeExploreScreen$lambda$3");
                }
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                function1.mo47invoke();
                StoreModeInvalidKt.a(0, composer, modifierE, function0);
                break;
            default:
                num.getClass();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "StoreModeExploreScreen$lambda$2");
                }
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                StoreModeExitConfirmKt.a(modifierE, function1, function0, composer, 0);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ l11(Function0 function0, Modifier modifier, Function0 function1) {
        this.d = function0;
        this.f75920c = modifier;
        this.f75921e = function1;
    }
}
