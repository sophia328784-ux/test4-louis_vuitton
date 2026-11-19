package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.li0;
import defpackage.yj0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistEmptyScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1292447669);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_nowishlistyet_text);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_nowishlistyet_text_2);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = strC + "\n\n" + strC2;
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-664131258, new yj0(snackbarHostState, (String) objX, function0, 15), gapComposerH), gapComposer, (i3 & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new li0(snackbarHostState, composableLambdaImpl, function0, i2, 1);
        }
    }
}
