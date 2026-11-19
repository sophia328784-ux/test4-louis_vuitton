package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b!\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/snapshots/StateObject;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class StateObjectImpl implements StateObject {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInt f8532b = new AtomicInt(0);

    public final void J(int i2) {
        AtomicInt atomicInt;
        int i3;
        do {
            atomicInt = this.f8532b;
            i3 = atomicInt.get();
            int i4 = ReaderKind.f8460a;
            if ((i3 & i2) != 0) {
                return;
            }
        } while (!atomicInt.compareAndSet(i3, i3 | i2));
    }

    public final boolean j(int i2) {
        int i3 = this.f8532b.get();
        int i4 = ReaderKind.f8460a;
        return (i3 & i2) != 0;
    }
}
