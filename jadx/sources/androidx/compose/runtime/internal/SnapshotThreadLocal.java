package androidx.compose.runtime.internal;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/internal/SnapshotThreadLocal;", "T", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotThreadLocal<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f8402a = new AtomicReference(SnapshotThreadLocalKt.f8405a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8403b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f8404c;

    public final Object a() {
        long jA = Thread_jvmKt.a();
        if (jA == Thread_androidKt.f8409a) {
            return this.f8404c;
        }
        ThreadMap threadMap = (ThreadMap) this.f8402a.get();
        int iA = threadMap.a(jA);
        if (iA >= 0) {
            return threadMap.f8408c[iA];
        }
        return null;
    }

    public final void b(Object obj) {
        long jA = Thread_jvmKt.a();
        if (jA == Thread_androidKt.f8409a) {
            this.f8404c = obj;
            return;
        }
        synchronized (this.f8403b) {
            ThreadMap threadMap = (ThreadMap) this.f8402a.get();
            int iA = threadMap.a(jA);
            if (iA < 0) {
                this.f8402a.set(threadMap.b(jA, obj));
            } else {
                threadMap.f8408c[iA] = obj;
            }
        }
    }
}
