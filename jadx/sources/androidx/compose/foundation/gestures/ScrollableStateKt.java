package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.ku0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollableStateKt {
    public static final ScrollableState a(Function1 function1) {
        return new DefaultScrollableState(function1);
    }

    public static final ScrollableState b(Composer composer, Function1 function1) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MutableState mutableStateL = SnapshotStateKt.l(function1, composer);
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            DefaultScrollableState defaultScrollableState = new DefaultScrollableState(new ku0(0, mutableStateL));
            composer.q(defaultScrollableState);
            objX = defaultScrollableState;
        }
        return (ScrollableState) objX;
    }
}
