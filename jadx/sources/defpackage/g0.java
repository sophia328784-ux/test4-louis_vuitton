package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f69241c;

    public /* synthetic */ g0(SnackbarHostState snackbarHostState, int i2) {
        this.f69240b = i2;
        this.f69241c = snackbarHostState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69240b;
        SnackbarHostState snackbarHostState = this.f69241c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer, 0, 1);
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SnackbarHostKt.b(this.f69241c, null, null, composer2, 6, 6);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer3, 0, 1);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer4, 0, 1);
                } else {
                    composer4.D();
                }
                break;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer5, 48, 1);
                } else {
                    composer5.D();
                }
                break;
            case 5:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer6, 0, 1);
                } else {
                    composer6.D();
                }
                break;
            case 6:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer7, 0, 1);
                } else {
                    composer7.D();
                }
                break;
            case 7:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer8, 0, 1);
                } else {
                    composer8.D();
                }
                break;
            case 8:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                float f2 = BeautyVtoScreenKt.f62031a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer9, 0, 1);
                } else {
                    composer9.D();
                }
                break;
            case 9:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer10, 0, 1);
                } else {
                    composer10.D();
                }
                break;
            case 10:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer11, 0, 1);
                } else {
                    composer11.D();
                }
                break;
            case 11:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer12, 0, 1);
                } else {
                    composer12.D();
                }
                break;
            case 12:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer13, 0, 1);
                } else {
                    composer13.D();
                }
                break;
            case 13:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                int i3 = BookingReservationScreenKt.f54457b;
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer14, 0, 1);
                } else {
                    composer14.D();
                }
                break;
            case 14:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer15, 0, 1);
                } else {
                    composer15.D();
                }
                break;
            case 15:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("CatalogStoreMode$lambda$8"));
                    Dp.Companion companion = Dp.f11004c;
                    LVSnackbarKt.a(PaddingKt.m(modifierB, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 70.0f, 7), snackbarHostState, composer16, 48, 0);
                } else {
                    composer16.D();
                }
                break;
            case 16:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer17, 0, 1);
                } else {
                    composer17.D();
                }
                break;
            case 17:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer18, 0, 1);
                } else {
                    composer18.D();
                }
                break;
            case 18:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    SnackbarHostKt.b(this.f69241c, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("DispatchComposable$lambda$6")), null, composer19, 6, 4);
                } else {
                    composer19.D();
                }
                break;
            case 19:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                float f4 = DistantRepairBottomSheetDatePickerKt.f57325a;
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer20, 0, 1);
                } else {
                    composer20.D();
                }
                break;
            case 20:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer21, 0, 1);
                } else {
                    composer21.D();
                }
                break;
            case 21:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer22, 0, 1);
                } else {
                    composer22.D();
                }
                break;
            case 22:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer23, 0, 1);
                } else {
                    composer23.D();
                }
                break;
            case 23:
                Composer composer24 = (Composer) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                if (composer24.p(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer24, 0, 1);
                } else {
                    composer24.D();
                }
                break;
            case 24:
                Composer composer25 = (Composer) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                if (composer25.p(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer25, 0, 1);
                } else {
                    composer25.D();
                }
                break;
            case 25:
                Composer composer26 = (Composer) obj;
                int iIntValue26 = ((Integer) obj2).intValue();
                if (composer26.p(iIntValue26 & 1, (iIntValue26 & 3) != 2)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer26, 0, 1);
                } else {
                    composer26.D();
                }
                break;
            case 26:
                Composer composer27 = (Composer) obj;
                int iIntValue27 = ((Integer) obj2).intValue();
                if (composer27.p(iIntValue27 & 1, (iIntValue27 & 3) != 2)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer27, 0, 1);
                } else {
                    composer27.D();
                }
                break;
            case 27:
                Composer composer28 = (Composer) obj;
                int iIntValue28 = ((Integer) obj2).intValue();
                List list = FeedScreenKt.f57835a;
                if (composer28.p(iIntValue28 & 1, (iIntValue28 & 3) != 2)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer28, 0, 1);
                } else {
                    composer28.D();
                }
                break;
            case 28:
                Composer composer29 = (Composer) obj;
                int iIntValue29 = ((Integer) obj2).intValue();
                if (composer29.p(iIntValue29 & 1, (iIntValue29 & 3) != 2)) {
                    OpaqueKey opaqueKey29 = ComposerKt.f7940a;
                    LVSnackbarKt.a(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ImmersiveArticleScreen$lambda$3")), snackbarHostState, composer29, 0, 0);
                } else {
                    composer29.D();
                }
                break;
            default:
                Composer composer30 = (Composer) obj;
                int iIntValue30 = ((Integer) obj2).intValue();
                if (composer30.p(iIntValue30 & 1, (iIntValue30 & 3) != 2)) {
                    OpaqueKey opaqueKey30 = ComposerKt.f7940a;
                    LVSnackbarKt.a(null, snackbarHostState, composer30, 0, 1);
                } else {
                    composer30.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
