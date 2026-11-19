package androidx.arch.core.executor;

import android.os.Handler;
import android.os.Looper;
import defpackage.l8;

/* JADX INFO: loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile ArchTaskExecutor f1351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l8 f1352c = new l8(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DefaultTaskExecutor f1353a = new DefaultTaskExecutor();

    public static ArchTaskExecutor a() {
        if (f1351b != null) {
            return f1351b;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (f1351b == null) {
                    f1351b = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f1351b;
    }

    public final void b(Runnable runnable) {
        DefaultTaskExecutor defaultTaskExecutor = this.f1353a;
        if (defaultTaskExecutor.f1356c == null) {
            synchronized (defaultTaskExecutor.f1354a) {
                try {
                    if (defaultTaskExecutor.f1356c == null) {
                        defaultTaskExecutor.f1356c = Handler.createAsync(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        defaultTaskExecutor.f1356c.post(runnable);
    }
}
