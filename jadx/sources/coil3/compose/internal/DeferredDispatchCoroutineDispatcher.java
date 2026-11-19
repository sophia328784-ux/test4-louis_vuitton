package coil3.compose.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004R\u000b\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¨\u0006\u0007"}, d2 = {"Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "delegate", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "Lkotlinx/atomicfu/AtomicBoolean;", "_unconfined", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class DeferredDispatchCoroutineDispatcher extends CoroutineDispatcher {
    public static final /* synthetic */ AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(DeferredDispatchCoroutineDispatcher.class, "c");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatcher f21331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile /* synthetic */ int f21332c = 1;

    public DeferredDispatchCoroutineDispatcher(CoroutineDispatcher coroutineDispatcher) {
        this.f21331b = coroutineDispatcher;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        r().dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        r().dispatchYield(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return r().isDispatchNeeded(coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i2, String str) {
        return r().limitedParallelism(i2, str);
    }

    public final CoroutineDispatcher r() {
        return d.get(this) == 1 ? Dispatchers.f74660b : this.f21331b;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: toString */
    public final String getD() {
        return "DeferredDispatchCoroutineDispatcher(delegate=" + this.f21331b + ")";
    }
}
