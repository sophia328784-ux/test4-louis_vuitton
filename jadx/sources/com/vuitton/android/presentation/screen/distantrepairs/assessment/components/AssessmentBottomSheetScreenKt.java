package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.a9;
import defpackage.d21;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentBottomSheetScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1089003556);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        int i4 = i3 | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_decline_title_bottom_sheet), null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_decline_subtitle), null, StringResources_androidKt.c(gapComposerH, R.string.confirm), null, false, null, function0, StringResources_androidKt.c(gapComposerH, R.string.btn_cancel), false, null, function1, null, false, null, gapComposer, 0, ((i4 << 3) & 112) | ((i4 << 15) & 3670016), 976731);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 0);
        }
    }

    public static final void b(AssessmentBottomSheetScreen assessmentBottomSheetScreen, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 1297350514);
        int i3 = (gapComposerC.K(assessmentBottomSheetScreen) ? 4 : 2) | i2 | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (!assessmentBottomSheetScreen.equals(AssessmentBottomSheetScreen.AssessmentBottomSheetDecline.f57029a)) {
                throw d21.u(gapComposerC, 1213333443, false);
            }
            gapComposerC.L(-1041282625);
            a(function1, function0, gapComposerC, (i3 & 112) | ((i3 >> 6) & 14));
            gapComposerC.Z(false);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 8, assessmentBottomSheetScreen, function0, function1);
        }
    }
}
