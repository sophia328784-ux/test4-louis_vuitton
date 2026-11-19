package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicInt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/OneShotCancellationHandle;", "Landroidx/compose/runtime/CancellationHandle;", "Lkotlin/Function0;", "", "action", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OneShotCancellationHandle implements CancellationHandle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f8049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInt f8050c = new AtomicInt(0);

    public OneShotCancellationHandle(Function0<Unit> function0) {
        this.f8049b = function0;
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public final void cancel() {
        if (this.f8050c.compareAndSet(1, 1)) {
            return;
        }
        this.f8049b.mo47invoke();
    }
}
