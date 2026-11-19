package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.TermsAndConditionsCardKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightOnboardingKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeExitConfirmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a11 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f365c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f366e;

    public /* synthetic */ a11(Modifier modifier, Function0 function0, Function0 function1, int i2, int i3) {
        this.f364b = i3;
        this.f365c = modifier;
        this.d = function0;
        this.f366e = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f364b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                SpotlightOnboardingKt.a(this.f365c, this.d, this.f366e, composer, RecomposeScopeImplKt.a(7));
                break;
            case 1:
                StoreModeExitConfirmKt.a(this.f365c, this.d, this.f366e, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                TermsAndConditionsCardKt.a(this.f365c, this.d, this.f366e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
