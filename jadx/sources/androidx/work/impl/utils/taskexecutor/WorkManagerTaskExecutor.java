package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public class WorkManagerTaskExecutor implements TaskExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialExecutorImpl f20566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatcher f20567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f20568c = new Handler(Looper.getMainLooper());
    public final Executor d = new Executor() { // from class: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            WorkManagerTaskExecutor.this.f20568c.post(runnable);
        }
    };

    public WorkManagerTaskExecutor(Executor executor) {
        SerialExecutorImpl serialExecutorImpl = new SerialExecutorImpl(executor);
        this.f20566a = serialExecutorImpl;
        this.f20567b = ExecutorsKt.b(serialExecutorImpl);
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final Executor a() {
        return this.d;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final CoroutineDispatcher b() {
        return this.f20567b;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final SerialExecutorImpl c() {
        return this.f20566a;
    }
}
