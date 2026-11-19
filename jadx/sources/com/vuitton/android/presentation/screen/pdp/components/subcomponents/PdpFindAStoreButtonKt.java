package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import defpackage.s;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpFindAStoreButtonKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0) {
        Function0 function1;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PdpFindAStoreButton");
        }
        Modifier modifier2 = modifier;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1877737910);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
            int i4 = LVAppDesignKitTheme.g(gapComposerH).g;
            function1 = function0;
            LVButtonKt.b((i3 & 14) | ((i3 << 24) & 1879048192), 496, gapComposerH, modifier2, configurationButton, Integer.valueOf(i4), null, StringResources_androidKt.c(gapComposerH, R.string.product_detail_discover_in_store), function1, false, false, false);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s(modifier2, function1, i2, 3);
        }
    }
}
