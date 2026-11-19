package defpackage;

import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fs0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f69206c;

    public /* synthetic */ fs0(SnackbarHostState snackbarHostState, int i2) {
        this.f69205b = i2;
        this.f69206c = snackbarHostState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69205b;
        SnackbarHostState snackbarHostState = this.f69206c;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 1:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 2:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 3:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 4:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("SettingsScreen$lambda$4")), snackbarHostState, composer, 0, 0);
                } else {
                    composer.D();
                }
                break;
            case 5:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 6:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$1")), snackbarHostState, composer, 0, 0);
                } else {
                    composer.D();
                }
                break;
            case 7:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 8:
                float f2 = ThankYouScreenKt.f65243a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 9:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThematicPlpComposable$lambda$18");
                    Object objX = composer.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new p11(snackbarHostState, 6);
                        composer.q(objX);
                    }
                    LVSnackbarKt.a(ModifierExtKt.a(dTFunctionNameModifier, null, (Function1) objX, 3), snackbarHostState, composer, 48, 0);
                } else {
                    composer.D();
                }
                break;
            case 10:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 11:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 12:
                float f3 = WelcomeScreenKt.f54272a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 13:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            default:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
