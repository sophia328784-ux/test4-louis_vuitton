package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatable f78760c;
    public final /* synthetic */ LottieDynamicProperties d;

    public /* synthetic */ p50(LottieAnimatable lottieAnimatable, LottieDynamicProperties lottieDynamicProperties, int i2) {
        this.f78759b = i2;
        this.f78760c = lottieAnimatable;
        this.d = lottieDynamicProperties;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78759b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        LottieAnimatable lottieAnimatable = this.f78760c;
        int i3 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVCheckbox$lambda$8");
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierO = SizeKt.o(dTFunctionNameModifier, 24.0f);
                    LottieComposition lottieCompositionA = lottieAnimatable.A();
                    boolean zK = composer.K(lottieAnimatable);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new am(lottieAnimatable, i3);
                        composer.q(objX);
                    }
                    LottieAnimationKt.b(lottieCompositionA, (Function0) objX, modifierO, false, false, false, false, null, false, this.d, null, null, false, false, null, null, false, composer, 1073742208, 0, 130552);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVRadioButtonKt.f48494a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVRadioButtonInternal$lambda$8");
                    Dp.Companion companion2 = Dp.f11004c;
                    Modifier modifierO2 = SizeKt.o(dTFunctionNameModifier2, 24.0f);
                    LottieComposition lottieCompositionA2 = lottieAnimatable.A();
                    boolean zK2 = composer2.K(lottieAnimatable);
                    Object objX2 = composer2.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new am(lottieAnimatable, 3);
                        composer2.q(objX2);
                    }
                    LottieAnimationKt.b(lottieCompositionA2, (Function0) objX2, modifierO2, false, false, false, false, null, false, this.d, null, null, false, false, null, null, false, composer2, 1073742208, 0, 130552);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
