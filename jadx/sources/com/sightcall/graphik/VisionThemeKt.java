package com.sightcall.graphik;

import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import defpackage.om;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"VisionTheme", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "graphik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class VisionThemeKt {
    public static final void VisionTheme(Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i2) {
        int i3;
        Function2<? super Composer, ? super Integer, Unit> function3;
        function2.getClass();
        GapComposer gapComposerH = composer.h(1560958703);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i3 & 3) == 2 && gapComposerH.i()) {
            gapComposerH.D();
            function3 = function2;
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function3 = function2;
            MaterialThemeKt.b(null, null, VisionTypographyKt.getVisionTypography(), function3, gapComposerH, ((i3 << 9) & 7168) | KyberEngine.KyberPolyBytes, 3);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(function3, i2, 17);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit VisionTheme$lambda$0(Function2 function2, int i2, Composer composer, int i3) {
        VisionTheme(function2, composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }
}
