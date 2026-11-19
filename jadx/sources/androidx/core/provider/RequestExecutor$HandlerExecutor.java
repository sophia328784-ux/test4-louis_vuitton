package androidx.core.provider;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
class RequestExecutor$HandlerExecutor implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f12115b;

    public RequestExecutor$HandlerExecutor(Handler handler) {
        this.f12115b = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        Handler handler = this.f12115b;
        if (handler.post(runnable)) {
            return;
        }
        throw new RejectedExecutionException(handler + " is shutting down");
    }
}
