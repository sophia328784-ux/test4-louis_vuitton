package com.vuitton.android.presentation.screen.authentication.common.components;

import android.content.Context;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextMeasurerHelperKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.ne0;
import defpackage.x70;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeAuthenticationTitleKt {
    public static final void a(Modifier modifier, List list, int i2, Composer composer, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "HeaderTitle");
        }
        Modifier modifier2 = modifier;
        modifier2.getClass();
        list.getClass();
        GapComposer gapComposerH = composer.h(894254624);
        int i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i3 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            i4 = i2;
            BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(2142435446, new ne0(list, LVAppDesignKitTheme.n(gapComposerH).l, TextMeasurerHelperKt.a(gapComposerH), i4, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)), gapComposerH), gapComposerH, (i5 & 14) | 3072, 6);
        } else {
            i4 = i2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x70(modifier2, list, i4, i3);
        }
    }
}
