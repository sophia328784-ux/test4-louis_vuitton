package com.vuitton.android.presentation.contact.compose;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.qe;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TermsAndConditionsBottomSheetKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TermsAndConditionsBottomSheet");
        }
        GapComposer gapComposerH = composer.h(-1081781710);
        int i3 = i2 | 6;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TermsAndConditionsBottomSheet");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.csc_contact_bottomsheet_chat_title_optout);
            ComposableSingletons$TermsAndConditionsBottomSheetKt.f51128a.getClass();
            LVCustomBottomSheetContentKt.a(modifierM, Call.Parameters.DEFAULT_CAMERA_ZOOM, strC, null, null, null, null, false, null, null, ComposableSingletons$TermsAndConditionsBottomSheetKt.f51129b, gapComposerH, 0, 48, 2042);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifierE, i2, 23);
        }
    }
}
