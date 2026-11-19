package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class am implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatable f556c;

    public /* synthetic */ am(LottieAnimatable lottieAnimatable, int i2) {
        this.f555b = i2;
        this.f556c = lottieAnimatable;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        float fC;
        int i2 = this.f555b;
        LottieAnimatable lottieAnimatable = this.f556c;
        switch (i2) {
            case 0:
                fC = lottieAnimatable.c();
                break;
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                fC = lottieAnimatable.c();
                break;
            case 2:
                fC = lottieAnimatable.c();
                break;
            case 3:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVRadioButtonKt.f48494a;
                fC = lottieAnimatable.c();
                break;
            case 4:
                MainActivity.Companion companion = MainActivity.L;
                fC = lottieAnimatable.c();
                break;
            default:
                float f2 = SpotlightHotspotsKt.f64588a;
                fC = ((Number) lottieAnimatable.getF10755b()).floatValue();
                break;
        }
        return Float.valueOf(fC);
    }
}
