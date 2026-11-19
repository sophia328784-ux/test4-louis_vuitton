package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import defpackage.a;
import defpackage.jc;
import defpackage.kc;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isLegalConsentChecked", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BackInStockBottomSheetKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, String str4, String str5, boolean z, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "BackInStockBottomSheet-icvEI7I");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(1231961309);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i6 = i4 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(str4) ? 16384 : 8192) | (gapComposerH.K(str5) ? 131072 : 65536) | (gapComposerH.b(z) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i6 & 1, (4793491 & i6) != 4793490)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("BackInStockBottomSheet-icvEI7I");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            int i7 = (i6 & 14) | ((i6 << 3) & 896);
            Modifier modifier3 = dTFunctionNameModifier;
            LVCustomBottomSheetContentKt.a(modifier3, Call.Parameters.DEFAULT_CAMERA_ZOOM, str, null, null, null, null, false, null, null, ComposableLambdaKt.b(941318696, new jc(str4, str5, str2, str3, z, function0, (MutableState) objX), gapComposerH), gapComposerH, i7, 48, 2042);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(modifier2, str, str2, str3, str4, str5, z, function0, i2, i3);
        }
    }
}
