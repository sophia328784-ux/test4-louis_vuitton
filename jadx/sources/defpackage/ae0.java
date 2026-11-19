package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartLoadingScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ae0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f492c;

    public /* synthetic */ ae0(SnackbarHostState snackbarHostState, int i2) {
        this.f491b = i2;
        this.f492c = snackbarHostState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f491b;
        SnackbarHostState snackbarHostState = this.f492c;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPaddingKt.d(new DTFunctionNameModifier("MyLvComposable$lambda$9"), WindowInsets_androidKt.a(composer)), snackbarHostState, composer, 48, 0);
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
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 3:
                float f2 = NativeCartLoadingScreenKt.f55047a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 4:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 5:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 6:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 7:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 8:
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
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 10:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 11:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 12:
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
            case 14:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 15:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 16:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 17:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 18:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 19:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PLPStoreModeScreen$lambda$2")), snackbarHostState, composer, 48, 0);
                } else {
                    composer.D();
                }
                break;
            case 20:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVSnackbarKt.a(PaddingKt.m(new DTFunctionNameModifier("PSPScreen$lambda$7"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48420j, 7), snackbarHostState, composer, 48, 0);
                } else {
                    composer.D();
                }
                break;
            case 21:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 48, 1);
                } else {
                    composer.D();
                }
                break;
            case 22:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 23:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 24:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 25:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 26:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 27:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PortalSliderScreen$lambda$2")), snackbarHostState, composer, 0, 0);
                } else {
                    composer.D();
                }
                break;
            case 28:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey29 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            default:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey30 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
