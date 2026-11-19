package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import defpackage.od;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPSearchHeaderKt {
    public static final void a(String str, Integer num, boolean z, LVColorScheme lVColorScheme, Function0 function0, Composer composer, int i2) {
        String str2;
        String strA;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1370020561);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(num) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(792103886);
            if (!z || str == null || str.length() == 0 || num == null) {
                gapComposerH.L(792477405);
                gapComposerH.Z(false);
                if (str == null) {
                    strA = "";
                } else {
                    str2 = str;
                }
                gapComposerH.Z(false);
                LVStandardTopBarKt.a(null, lVColorScheme, false, str2, null, null, function0, null, null, null, null, gapComposerH, 48 | ((i3 << 3) & 3670016), 0, 4021);
            } else {
                gapComposerH.L(792198777);
                strA = PluralStringResourceHelperKt.a(R.plurals.header_search_result_number_message, num.intValue(), new Object[]{num, str}, gapComposerH);
                gapComposerH.Z(false);
            }
            str2 = strA;
            gapComposerH.Z(false);
            LVStandardTopBarKt.a(null, lVColorScheme, false, str2, null, null, function0, null, null, null, null, gapComposerH, 48 | ((i3 << 3) & 3670016), 0, 4021);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(str, num, z, lVColorScheme, function0, i2);
        }
    }
}
