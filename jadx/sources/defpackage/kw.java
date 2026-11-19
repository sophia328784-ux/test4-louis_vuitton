package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVDatePickerKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxComposableKt;
import com.vuitton.android.presentation.screen.booking.summary.components.bottomsheets.ExpirationBottomSheetContentKt;
import com.vuitton.android.presentation.screen.mylv.components.ComposableSingletons$MyLvComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingTransitionComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListComposableKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kw implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f75880c;

    public /* synthetic */ kw(int i2, int i3, Function0 function0) {
        this.f75879b = i3;
        this.f75880c = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f75879b;
        Function0 function0 = this.f75880c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer, R.string.mylv_dashboard_mysecureoutline), null, null, this.f75880c, null, null, null, null, composer, 0, 0, 4023);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                ExpirationBottomSheetContentKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer2, R.string.cart_gift_panel_title), null, null, this.f75880c, null, null, null, null, composer2, 0, 0, 4023);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer3, R.string.alt_close), this.f75880c, null, null, composer3, 48, 205);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    InboxComposableKt.b(false, null, this.f75880c, composer4, 0, 3);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    InboxComposableKt.b(false, null, this.f75880c, composer5, 0, 3);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    InboxComposableKt.b(false, null, this.f75880c, composer6, 0, 3);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    ComposableSingletons$LVDatePickerKt.f50947a.getClass();
                    ButtonKt.b(this.f75880c, null, false, null, null, null, ComposableSingletons$LVDatePickerKt.f50949c, composer7, 805306368, 510);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                function0.mo47invoke();
                return Unit.f71739a;
            case 9:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer8, R.string.my_icons_description), null, null, this.f75880c, null, null, null, null, composer8, 0, 0, 4023);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    ComposableSingletons$MyLvComposableKt.f59385a.getClass();
                    IconButtonKt.a(this.f75880c, null, false, null, null, ComposableSingletons$MyLvComposableKt.f59387c, composer9, 1572864, 62);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer10, R.string.notif_section_settings), null, null, this.f75880c, null, null, null, null, composer10, 0, 0, 4023);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                return NucleusReducerBuilder.executesSimpleCommand$lambda$0(function0, obj, (Action) obj2);
            case 13:
                ((Integer) obj2).getClass();
                OnboardingTransitionComposableKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer11, R.string.mylv_settings_gcm_lva_optout_title), null, null, this.f75880c, null, null, null, null, composer11, 0, 0, 4023);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer12, R.string.manage_privacy_settings), null, null, this.f75880c, null, null, null, null, composer12, 0, 0, 4023);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer13, R.string.exchange_review_header), null, null, this.f75880c, null, null, null, null, composer13, 0, 0, 4023);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer14, R.string.exchange_review_header), null, null, this.f75880c, null, null, null, null, composer14, 0, 0, 4023);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    OrderListComposableKt.b(function0, composer15, 0);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                OrderListComposableKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeReasonScreenKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer16, R.string.return_select_reason_header), null, null, this.f75880c, null, null, null, null, composer16, 0, 0, 4023);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.m(PaddingKt.m(PaddingKt.k(BackgroundKt.b(ShadowKt.c(SizeKt.d(new DTFunctionNameModifier("OrderReturnSummaryScreen$lambda$1"), 1.0f), composer17, 6, 3), LVAppDesignKitTheme.c(composer17).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer17).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).f48416e, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode = Long.hashCode(composer17.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer17.n();
                    Modifier modifierC = ComposedModifierKt.c(composer17, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer17.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer17.B();
                    if (composer17.getS()) {
                        composer17.C(function1);
                    } else {
                        composer17.o();
                    }
                    Updater.c(composer17, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer17, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer17, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer17, ComposeUiNode.Companion.f9645h);
                    LVButtonKt.b(6, 504, composer17, n00.c(composer17, modifierC, ComposeUiNode.Companion.d, "OrderReturnSummaryScreen$lambda$1", 1.0f), LVAppDesignKitTheme.b(composer17).f48446a, null, null, StringResources_androidKt.c(composer17, R.string.return_refund_cta), this.f75880c, false, false, false);
                    composer17.r();
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer18, R.string.mylv_dashboard_osa), null, null, this.f75880c, null, null, null, null, composer18, 0, 0, 4023);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer19, R.string.legal_specific_consent_title), null, null, this.f75880c, null, WindowInsets_androidKt.b(composer19), null, null, composer19, 0, 0, 3767);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                OsaListComposableKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 26:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer20, R.string.mylv_dashboard_osa), null, null, this.f75880c, null, null, null, null, composer20, 0, 0, 4023);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 27:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer21, R.string.cart_packaging_card_title), null, null, this.f75880c, null, null, null, null, composer21, 0, 0, 4023);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "", null, null, this.f75880c, null, null, null, null, composer22, 3072, 0, 4023);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            default:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "", null, null, this.f75880c, null, null, null, null, composer23, 3072, 0, 4023);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ kw(Function0 function0, int i2) {
        this.f75879b = i2;
        this.f75880c = function0;
    }
}
