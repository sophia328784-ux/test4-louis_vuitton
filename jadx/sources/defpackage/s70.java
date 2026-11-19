package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet.SignInSelectionBottomSheetContentKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79729b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79730c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f79731e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79732f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f79734i;

    public /* synthetic */ s70(Modifier modifier, boolean z, PagerState pagerState, PagerParallaxFactor pagerParallaxFactor, boolean z2, boolean z3, ComposableLambdaImpl composableLambdaImpl) {
        this.f79732f = modifier;
        this.f79730c = z;
        this.g = pagerState;
        this.f79733h = pagerParallaxFactor;
        this.d = z2;
        this.f79731e = z3;
        this.f79734i = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79729b;
        Function function = this.f79734i;
        Object obj3 = this.f79733h;
        Object obj4 = this.g;
        Object obj5 = this.f79732f;
        switch (i2) {
            case 0:
                Modifier modifierE = (Modifier) obj5;
                PagerState pagerState = (PagerState) obj4;
                PagerParallaxFactor pagerParallaxFactor = (PagerParallaxFactor) obj3;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVSlideShow_ROuykTE$lambda$0");
                }
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVSlideShowKt.b(pagerState, modifierE.o(this.f79730c ? GradientKt.a(new DTFunctionNameModifier("LVSlideShow_ROuykTE$lambda$0"), GradientKt.f48343b) : new DTFunctionNameModifier("LVSlideShow_ROuykTE$lambda$0")), pagerParallaxFactor, this.d, this.f79731e, composableLambdaImpl, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                SignInSelectionBottomSheetContentKt.a(this.f79730c, this.d, this.f79731e, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ s70(boolean z, boolean z2, boolean z3, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2) {
        this.f79730c = z;
        this.d = z2;
        this.f79731e = z3;
        this.f79732f = function0;
        this.g = function1;
        this.f79733h = function2;
        this.f79734i = function3;
    }
}
