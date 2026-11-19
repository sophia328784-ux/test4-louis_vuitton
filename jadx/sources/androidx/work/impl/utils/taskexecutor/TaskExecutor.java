package androidx.work.impl.utils.taskexecutor;

import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public interface TaskExecutor {
    Executor a();

    default CoroutineDispatcher b() {
        return ExecutorsKt.b(c());
    }

    SerialExecutorImpl c();

    default void d(Runnable runnable) {
        c().execute(runnable);
    }
}
