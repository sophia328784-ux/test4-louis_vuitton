package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import com.airbnb.lottie.compose.LottieAnimationState;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightOnboardingKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationState f80979c;

    public /* synthetic */ x(LottieAnimationState lottieAnimationState, int i2) {
        this.f80978b = i2;
        this.f80979c = lottieAnimationState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        float fFloatValue;
        int i2 = this.f80978b;
        LottieAnimationState lottieAnimationState = this.f80979c;
        switch (i2) {
            case 0:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 1:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 2:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 3:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 4:
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 5:
                CubicBezierEasing cubicBezierEasing2 = LVIconButtonKt.f48475a;
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 6:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 7:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 8:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 9:
                fFloatValue = lottieAnimationState.c();
                break;
            case 10:
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            case 11:
                int i3 = SplashScreenActivity.q;
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
            default:
                float f2 = SpotlightOnboardingKt.f64600a;
                fFloatValue = ((Number) lottieAnimationState.getF10755b()).floatValue();
                break;
        }
        return Float.valueOf(fFloatValue);
    }
}
