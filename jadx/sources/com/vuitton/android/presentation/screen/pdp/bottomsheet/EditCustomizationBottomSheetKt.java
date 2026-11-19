package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import defpackage.cj;
import defpackage.u;
import defpackage.y;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditCustomizationBottomSheetKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61342a;

        static {
            int[] iArr = new int[CustomizationType.values().length];
            try {
                iArr[CustomizationType.HOTSTAMPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61342a = iArr;
        }
    }

    public static final void a(CustomizationType customizationType, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        String strF;
        customizationType.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-5724896);
        int i3 = i2 | (gapComposerH.d(customizationType.ordinal()) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int[] iArr = WhenMappings.f61342a;
            int i4 = iArr[customizationType.ordinal()];
            String strF2 = "";
            if (i4 == 1) {
                strF = cj.f(gapComposerH, -1206650403, R.string.hotstamping_edit_alert_pdp_title, gapComposerH, false);
            } else if (i4 != 2) {
                gapComposerH.L(1248724862);
                gapComposerH.Z(false);
                strF = "";
            } else {
                strF = cj.f(gapComposerH, -1206646917, R.string.engraving_edit_alert_pdp_title, gapComposerH, false);
            }
            int i5 = iArr[customizationType.ordinal()];
            if (i5 == 1) {
                strF2 = cj.f(gapComposerH, -1206641412, R.string.hotstamping_edit_alert_pdp_text, gapComposerH, false);
            } else if (i5 != 2) {
                gapComposerH.L(1249001630);
                gapComposerH.Z(false);
            } else {
                strF2 = cj.f(gapComposerH, -1206637958, R.string.engraving_edit_alert_pdp_text, gapComposerH, false);
            }
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, strF, null, null, null, null, false, null, null, ComposableLambdaKt.b(-683927765, new y(strF2, function0, function1, 2), gapComposerH), gapComposer, 0, 48, 2043);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 28, customizationType, function0, function1);
        }
    }
}
