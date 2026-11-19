package com.vuitton.android.presentation.screen.osa.list.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.osa.models.AutomationTagsOSA$CancelConfirmAction;
import com.vuitton.android.presentation.screen.osa.models.AutomationTagsOSA$CancelDismissAction;
import defpackage.a;
import defpackage.a9;
import defpackage.d21;
import defpackage.il;
import defpackage.qe;
import defpackage.uv;
import defpackage.xe0;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListBottomSheetScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Function0 function2 = function1;
        GapComposer gapComposerH = composer.h(314247832);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_title_cancel);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_cancel_subtitle);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_confirm_cta);
            boolean z = ((i3 & 14) == 4) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new il(function0, function2, 7);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, strC, null, null, strC2, "osa_appointmentCancelDescription_text", strC3, null, false, AutomationTagsOSA$CancelConfirmAction.f60912a, (Function0) objX, StringResources_androidKt.c(gapComposerH, R.string.global_cancel), false, AutomationTagsOSA$CancelDismissAction.f60913a, function1, null, false, null, gapComposer, 1572864, ((i3 << 15) & 3670016) | 196614, 942875);
            function2 = function1;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function2, i2, 5);
        }
    }

    public static final void b(Modifier modifier, OsaListBottomSheetScreen osaListBottomSheetScreen, Function0 function0, Function0 function1, Composer composer, int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "OsaBottomSheetLayout");
        }
        Modifier modifier2 = modifier;
        modifier2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1834926314);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.K(osaListBottomSheetScreen) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (osaListBottomSheetScreen.equals(OsaListBottomSheetScreen.BottomSheetPrepare.f60884a)) {
                gapComposerH.L(1867379285);
                c(modifier2, gapComposerH, i3 & 14);
                gapComposerH.Z(false);
            } else {
                if (!osaListBottomSheetScreen.equals(OsaListBottomSheetScreen.BottomSheetCancel.f60883a)) {
                    throw d21.u(gapComposerH, 1867377081, false);
                }
                gapComposerH.L(1867382159);
                a(function0, function1, gapComposerH, (i3 >> 6) & 126);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) modifier2, (Object) osaListBottomSheetScreen, function0, (Function) function1, i2, 21);
        }
    }

    public static final void c(Modifier modifier, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "OsaBottomSheetPrepare");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1197422394);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.osa_modal_title), null, null, null, null, false, null, null, ComposableLambdaKt.b(1845777093, new xe0(modifier2, 4), gapComposerH), gapComposerH, i3 & 14, 48, 2042);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 10);
        }
    }
}
