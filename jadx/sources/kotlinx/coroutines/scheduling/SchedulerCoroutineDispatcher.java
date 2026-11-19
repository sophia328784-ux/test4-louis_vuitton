package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class SchedulerCoroutineDispatcher extends ExecutorCoroutineDispatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScheduler f75165b;

    public /* synthetic */ SchedulerCoroutineDispatcher(int i2, int i3, long j2, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? TasksKt.f75168c : i2, (i4 & 2) != 0 ? TasksKt.d : i3, (i4 & 4) != 0 ? TasksKt.f75169e : j2, (i4 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public void close() throws InterruptedException {
        this.f75165b.close();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.k(this.f75165b, runnable, 6);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.k(this.f75165b, runnable, 2);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    /* JADX INFO: renamed from: r */
    public final Executor getF74668b() {
        return this.f75165b;
    }

    public SchedulerCoroutineDispatcher(int i2, int i3, long j2, String str) {
        this.f75165b = new CoroutineScheduler(i2, i3, j2, str);
    }

    public SchedulerCoroutineDispatcher() {
        this(0, 0, 0L, null, 15, null);
    }
}
