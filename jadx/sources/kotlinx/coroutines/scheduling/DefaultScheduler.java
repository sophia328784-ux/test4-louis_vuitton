package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import kotlinx.coroutines.internal.NamedDispatcher;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DefaultScheduler extends SchedulerCoroutineDispatcher {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DefaultScheduler f75163c = new DefaultScheduler(TasksKt.f75168c, TasksKt.d, TasksKt.f75169e, TasksKt.f75166a);

    @Override // kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i2, String str) {
        LimitedDispatcherKt.a(i2);
        if (i2 >= TasksKt.f75168c) {
            return str != null ? new NamedDispatcher(this, str) : this;
        }
        return super.limitedParallelism(i2, str);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: toString */
    public final String getD() {
        return "Dispatchers.Default";
    }
}
