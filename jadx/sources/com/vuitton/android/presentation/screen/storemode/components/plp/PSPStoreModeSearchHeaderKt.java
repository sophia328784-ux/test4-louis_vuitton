package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import defpackage.ds;
import defpackage.jj;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPStoreModeSearchHeaderKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64919a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64919a = iArr;
        }
    }

    public static final void a(String str, Integer num, boolean z, boolean z2, LVColorScheme lVColorScheme, boolean z3, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        String str2;
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1316259487);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(num) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.b(z3) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strA = "";
            if (z) {
                gapComposerH.L(365474163);
                gapComposerH.Z(false);
                if (str != null) {
                    str2 = str;
                }
                gapComposer = gapComposerH;
                LVStandardTopBarKt.a(null, lVColorScheme, false, str2, null, null, function1, ComposableLambdaKt.b(767611266, new jj(function0, lVColorScheme, z3), gapComposerH), null, null, null, gapComposer, 12582960 | ((i3 >> 3) & 3670016), 0, 3893);
            } else {
                gapComposerH.L(365538364);
                if (!z2 || str == null || str.length() == 0 || num == null) {
                    gapComposerH.L(365911883);
                    gapComposerH.Z(false);
                    if (str != null) {
                        strA = str;
                    }
                } else {
                    gapComposerH.L(365633255);
                    strA = PluralStringResourceHelperKt.a(R.plurals.header_search_result_number_message, num.intValue(), new Object[]{num, str}, gapComposerH);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            str2 = strA;
            gapComposer = gapComposerH;
            LVStandardTopBarKt.a(null, lVColorScheme, false, str2, null, null, function1, ComposableLambdaKt.b(767611266, new jj(function0, lVColorScheme, z3), gapComposerH), null, null, null, gapComposer, 12582960 | ((i3 >> 3) & 3670016), 0, 3893);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ds(str, num, z, z2, lVColorScheme, z3, function0, function1, i2);
        }
    }
}
