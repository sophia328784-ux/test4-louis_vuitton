package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposablesKt {
    public static final long a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return composer.getT();
    }

    public static final void b() {
        throw new IllegalStateException("Invalid applier");
    }
}
