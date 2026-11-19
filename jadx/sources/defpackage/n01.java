package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.lifecycle.compose.FlowExtKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n01 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76411c;
    public final /* synthetic */ SplashScreenActivity d;

    public /* synthetic */ n01(int i2, SplashScreenActivity splashScreenActivity, int i3) {
        this.f76410b = i3;
        this.f76411c = i2;
        this.d = splashScreenActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76410b;
        SplashScreenActivity splashScreenActivity = this.d;
        int i3 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i4 = SplashScreenActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1910479016, new n01(this.f76411c, splashScreenActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                int i5 = SplashScreenActivity.q;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("onCreate$lambda$0$0");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    Modifier modifierI = pq0.i("onCreate$lambda$0$0", fillElement);
                    boolean zY = composer2.y(splashScreenActivity);
                    Object objX = composer2.x();
                    int i6 = 7;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new hv0(splashScreenActivity, i6);
                        composer2.q(objX);
                    }
                    LvVideoPlayerKt.a(modifierI, this.f76411c, 0, null, true, true, (Function0) objX, composer2, 1794054);
                    if (((Boolean) FlowExtKt.c(splashScreenActivity.B().getJ(), null, composer2, 0, 7).getF10755b()).booleanValue()) {
                        composer2.L(958996692);
                        LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("round_loader.json"), composer2, 6);
                        LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, Integer.MAX_VALUE, composer2, 958);
                        Modifier modifierO2 = SizeKt.o(PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("onCreate$lambda$0$0"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48421k, 7), LVAppDesignKitTheme.d(composer2).o);
                        LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                        boolean zK = composer2.K(lottieAnimatableA);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new x(lottieAnimatableA, 11);
                            composer2.q(objX2);
                        }
                        LottieAnimationKt.b(f10755b, (Function0) objX2, modifierO2, false, false, false, false, null, false, null, null, contentScale$Companion$Crop$1, false, false, null, null, false, composer2, 0, 48, 129016);
                        composer2 = composer2;
                        composer2.F();
                    } else {
                        composer2.L(959915408);
                        composer2.F();
                    }
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
