package defpackage;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.VirtualStudioConsentsBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderEmptyComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackerKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyConfirmationBottomSheetKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kn0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f71689c;

    public /* synthetic */ kn0(int i2, int i3, Function0 function0) {
        this.f71688b = i3;
        this.f71689c = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71688b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f71689c;
        int i3 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer, R.string.samples_title), null, null, this.f71689c, null, null, null, null, composer, 0, 0, 4023);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer2, R.string.ips_myreco_section), null, null, this.f71689c, null, null, null, null, composer2, 0, 0, 4023);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer3, R.string.title_explore_the_look), null, null, this.f71689c, null, null, null, null, composer3, 0, 0, 4023);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer4, R.string.place_search_title), null, null, this.f71689c, null, null, null, null, composer4, 0, 0, 4023);
                } else {
                    composer4.D();
                }
                break;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer5, R.string.privacy_settings), null, null, this.f71689c, null, null, null, null, composer5, 0, 0, 4023);
                } else {
                    composer5.D();
                }
                break;
            case 5:
                ((Integer) obj2).getClass();
                PrivacyConfirmationBottomSheetKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer6, R.string.alt_close), this.f71689c, null, null, composer6, 48, 205);
                } else {
                    composer6.D();
                }
                break;
            case 7:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer7, R.string.alt_close), this.f71689c, null, null, composer7, 48, 205);
                } else {
                    composer7.D();
                }
                break;
            case 8:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer8, R.string.alt_close), this.f71689c, null, null, composer8, 48, 205);
                } else {
                    composer8.D();
                }
                break;
            case 9:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    RepairConfirmAddressBffComposableKt.d(function0, composer9, 0);
                } else {
                    composer9.D();
                }
                break;
            case 10:
                ((Integer) obj2).getClass();
                RepairConfirmAddressBffComposableKt.d(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 11:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer10, R.string.dr_screen_title), null, null, this.f71689c, null, null, null, null, composer10, 0, 0, 4023);
                } else {
                    composer10.D();
                }
                break;
            case 12:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    RepairListComposableKt.b(function0, composer11, 0);
                } else {
                    composer11.D();
                }
                break;
            case 13:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    RepairListComposableKt.b(function0, composer12, 0);
                } else {
                    composer12.D();
                }
                break;
            case 14:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    RepairListComposableKt.b(function0, composer13, 0);
                } else {
                    composer13.D();
                }
                break;
            case 15:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    RepairListComposableKt.b(function0, composer14, 0);
                } else {
                    composer14.D();
                }
                break;
            case 16:
                ((Integer) obj2).getClass();
                RepairListComposableKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 17:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer15, R.string.dr_screen_title), null, null, this.f71689c, null, null, null, null, composer15, 0, 0, 4023);
                } else {
                    composer15.D();
                }
                break;
            case 18:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer16, R.string.mylv_myprofile_myinfosbrick_title), null, null, this.f71689c, null, null, null, null, composer16, 0, 0, 4023);
                } else {
                    composer16.D();
                }
                break;
            case 19:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer17, R.string.mylv_myprofile_settingsbrick_title), null, null, this.f71689c, null, null, null, null, composer17, 0, 0, 4023);
                } else {
                    composer17.D();
                }
                break;
            case 20:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) composer18.k(ShadeFinderTrackerKt.f62295a);
                    boolean zY = composer18.y(shadeFinderTracker);
                    Object objX = composer18.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new hv0(shadeFinderTracker, i3);
                        composer18.q(objX);
                    }
                    ShadeFinderEmptyComposableKt.b(function0, (Function0) objX, composer18, 0);
                } else {
                    composer18.D();
                }
                break;
            case 21:
                ((Integer) obj2).getClass();
                ShadeFinderEmptyComposableKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 22:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "", null, null, this.f71689c, null, null, null, null, composer19, 3072, 0, 4023);
                } else {
                    composer19.D();
                }
                break;
            case 23:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    Modifier modifierC = FocusableKt.c(new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$5"), null, 3);
                    Object objX2 = composer20.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new av0(15);
                        composer20.q(objX2);
                    }
                    LVStandardTopBarKt.a(SemanticsModifierKt.b(modifierC, false, (Function1) objX2), null, false, "", null, null, this.f71689c, null, null, null, null, composer20, 3072, 0, 4022);
                } else {
                    composer20.D();
                }
                break;
            case 24:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer21, R.string.alt_close), this.f71689c, null, null, composer21, 48, 205);
                } else {
                    composer21.D();
                }
                break;
            case 25:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer22, R.string.alt_close), this.f71689c, null, null, composer22, 48, 205);
                } else {
                    composer22.D();
                }
                break;
            case 26:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                float f2 = StoreModeWelcomeComposableKt.f64839a;
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer23, R.string.alt_close), this.f71689c, null, null, composer23, 48, 205);
                } else {
                    composer23.D();
                }
                break;
            case 27:
                Composer composer24 = (Composer) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                if (composer24.p(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer24, R.string.terms_conditions), null, null, this.f71689c, null, null, null, null, composer24, 0, 0, 4023);
                } else {
                    composer24.D();
                }
                break;
            case 28:
                Composer composer25 = (Composer) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                if (composer25.p(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer25, R.string.my_certificate_title), null, null, this.f71689c, null, null, null, null, composer25, 0, 0, 4023);
                } else {
                    composer25.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                VirtualStudioConsentsBottomSheetKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ kn0(Function0 function0, int i2) {
        this.f71688b = i2;
        this.f71689c = function0;
    }
}
