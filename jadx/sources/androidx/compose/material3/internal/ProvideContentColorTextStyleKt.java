package androidx.compose.material3.internal;

import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.text.TextStyle;
import defpackage.qq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ProvideContentColorTextStyleKt {
    public static final void a(long j2, TextStyle textStyle, Function2 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-684938728);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.e(j2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(textStyle) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextKt.f7383a;
            CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(j2, ContentColorKt.f6730a), dynamicProvidableCompositionLocal.c(((TextStyle) gapComposerH.k(dynamicProvidableCompositionLocal)).d(textStyle))}, function2, gapComposerH, ((i3 >> 3) & 112) | 8);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qq0(j2, textStyle, function2, i2, 0);
        }
    }
}
