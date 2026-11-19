package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.a9;
import defpackage.gi0;
import defpackage.il;
import defpackage.pu;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailBottomSheetLayoutKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Function0 function2 = function1;
        GapComposer gapComposerH = composer.h(-885740429);
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
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_title_cancel_appointment);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_title_cancel_description);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.button_yes);
            boolean z = ((i3 & 112) == 32) | ((i3 & 14) == 4);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new il(function2, function0, 15);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, strC, null, null, strC2, null, strC3, null, false, null, (Function0) objX, StringResources_androidKt.c(gapComposerH, R.string.button_no), false, null, function1, null, false, null, gapComposer, 0, (i3 << 15) & 3670016, 976731);
            function2 = function1;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function2, i2, 9);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-84663605);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, null, null, null, StringResources_androidKt.c(gapComposerH, R.string.restitution_date_clue), null, StringResources_androidKt.c(gapComposerH, R.string.ok), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, 0, (i3 << 3) & 112, 1046367);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 5, function0);
        }
    }

    public static final void c(BottomSheetScreen bottomSheetScreen, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 1268164736);
        int i3 = (gapComposerC.K(bottomSheetScreen) ? 4 : 2) | i2 | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (bottomSheetScreen.equals(BottomSheetScreen.BottomSheetCancel.f63785a)) {
                gapComposerC.L(-1064393662);
                a(function0, function1, gapComposerC, (i3 >> 3) & 126);
                gapComposerC.Z(false);
            } else if (bottomSheetScreen.equals(BottomSheetScreen.BottomSheetInfo.f63786a)) {
                gapComposerC.L(-1064388043);
                b(function1, gapComposerC, (i3 >> 6) & 14);
                gapComposerC.Z(false);
            } else {
                gapComposerC.L(-1064384828);
                gapComposerC.Z(false);
            }
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 19, bottomSheetScreen, function0, function1);
        }
    }
}
