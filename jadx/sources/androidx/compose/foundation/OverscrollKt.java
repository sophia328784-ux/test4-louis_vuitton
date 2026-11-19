package androidx.compose.foundation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OverscrollKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComputedProvidableCompositionLocal f4285a = new ComputedProvidableCompositionLocal(new f());

    public static final OverscrollEffect a(Composer composer) {
        composer.L(282942128);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        OverscrollFactory overscrollFactory = (OverscrollFactory) composer.k(f4285a);
        if (overscrollFactory == null) {
            composer.F();
            return null;
        }
        boolean zK = composer.K(overscrollFactory);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = overscrollFactory.a();
            composer.q(objX);
        }
        OverscrollEffect overscrollEffect = (OverscrollEffect) objX;
        composer.F();
        return overscrollEffect;
    }
}
