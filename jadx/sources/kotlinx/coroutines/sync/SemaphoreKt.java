package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SemaphoreKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f75220a = SystemPropsKt.d(100, 12, "kotlinx.coroutines.semaphore.maxSpinCycles");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Symbol f75221b = new Symbol("PERMIT");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Symbol f75222c = new Symbol("TAKEN");
    public static final Symbol d = new Symbol("BROKEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Symbol f75223e = new Symbol("CANCELLED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f75224f = SystemPropsKt.d(16, 12, "kotlinx.coroutines.semaphore.segmentSize");

    public static Semaphore a(int i2) {
        return new SemaphoreImpl(i2, 0);
    }
}
