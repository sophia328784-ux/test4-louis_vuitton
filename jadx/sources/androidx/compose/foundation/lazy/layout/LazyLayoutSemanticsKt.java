package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.reflect.KProperty0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutSemanticsKt {
    public static final Modifier a(Modifier modifier, KProperty0 kProperty0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z, boolean z2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "lazyLayoutSemantics");
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return modifier.o(new LazyLayoutSemanticsModifier(kProperty0, lazyLayoutSemanticState, orientation, z, z2));
    }
}
