package com.vuitton.android.presentation.screen.cart.components.sections;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceListKt;
import defpackage.a;
import defpackage.k60;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartReinsuranceKt {
    public static final void a(Modifier modifier, ImmutableList immutableList, Function1 function1, Function3 function3, Composer composer, int i2) {
        ImmutableList immutableList2;
        if (modifier != null) {
            modifier = a.e(modifier, "NativeCartReinsurance");
        }
        Modifier modifier2 = modifier;
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-702898320);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.y(immutableList) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            int i4 = LVAppDesignKitTheme.g(gapComposerH).I;
            boolean z = ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new k60(function1, function3, 21);
                gapComposerH.q(objX);
            }
            ReinsuranceListKt.b(modifierB, immutableList, i4, (Function1) objX, gapComposerH, i3 & 112, 0);
            immutableList2 = immutableList;
        } else {
            immutableList2 = immutableList;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(modifier2, immutableList2, function1, function3, i2);
        }
    }
}
