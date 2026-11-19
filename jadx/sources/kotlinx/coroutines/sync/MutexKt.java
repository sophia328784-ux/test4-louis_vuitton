package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class MutexKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Symbol f75210a = new Symbol("NO_OWNER");

    static {
        new Symbol("ALREADY_LOCKED_BY_OWNER");
    }

    public static MutexImpl a() {
        return new MutexImpl(false);
    }
}
