package kotlinx.coroutines.internal;

import defpackage.b21;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class LimitedDispatcherKt {
    public static final void a(int i2) {
        if (i2 >= 1) {
            return;
        }
        b21.n(pq0.k(i2, "Expected positive parallelism level, but got "));
    }
}
