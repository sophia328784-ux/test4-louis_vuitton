package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import defpackage.g2;
import defpackage.v1;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutItemContentFactoryKt {
    public static final void a(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i2, Object obj2, Composer composer, int i3) {
        GapComposer gapComposerH = composer.h(1439843069);
        int i4 = (gapComposerH.K(lazyLayoutItemProvider) ? 4 : 2) | i3 | (gapComposerH.K(obj) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.K(obj2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ((SaveableStateHolder) obj).f(obj2, ComposableLambdaKt.b(980966366, new g2(i2, lazyLayoutItemProvider, obj2), gapComposerH), gapComposerH, 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(lazyLayoutItemProvider, obj, i2, obj2, i3);
        }
    }
}
