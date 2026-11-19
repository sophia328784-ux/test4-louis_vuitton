package androidx.paging;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/AccessorStateHolder;", "", "Key", "Value", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class AccessorStateHolder<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f18520a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f18521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AccessorState f18522c;

    public AccessorStateHolder() {
        LoadStates.f18638f.getClass();
        this.f18521b = StateFlowKt.a(LoadStates.g);
        this.f18522c = new AccessorState();
    }

    public final Object a(Function1 function1) {
        AccessorState accessorState = this.f18522c;
        function1.getClass();
        ReentrantLock reentrantLock = this.f18520a;
        try {
            reentrantLock.lock();
            Object objInvoke = function1.invoke(accessorState);
            this.f18521b.setValue(new LoadStates(accessorState.b(LoadType.REFRESH), accessorState.b(LoadType.PREPEND), accessorState.b(LoadType.APPEND)));
            return objInvoke;
        } finally {
            reentrantLock.unlock();
        }
    }
}
