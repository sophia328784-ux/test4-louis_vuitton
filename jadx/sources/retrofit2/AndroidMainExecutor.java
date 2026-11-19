package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidMainExecutor implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f79326b = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f79326b.post(runnable);
    }
}
