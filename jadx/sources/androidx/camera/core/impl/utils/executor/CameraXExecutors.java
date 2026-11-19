package androidx.camera.core.impl.utils.executor;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraXExecutors {
    public static Executor a() {
        if (DirectExecutor.f2435b != null) {
            return DirectExecutor.f2435b;
        }
        synchronized (DirectExecutor.class) {
            try {
                if (DirectExecutor.f2435b == null) {
                    DirectExecutor.f2435b = new DirectExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return DirectExecutor.f2435b;
    }

    public static Executor b() {
        if (IoExecutor.f2439c != null) {
            return IoExecutor.f2439c;
        }
        synchronized (IoExecutor.class) {
            try {
                if (IoExecutor.f2439c == null) {
                    IoExecutor.f2439c = new IoExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return IoExecutor.f2439c;
    }

    public static ScheduledExecutorService c() {
        if (MainThreadExecutor.f2442a != null) {
            return MainThreadExecutor.f2442a;
        }
        synchronized (MainThreadExecutor.class) {
            try {
                if (MainThreadExecutor.f2442a == null) {
                    MainThreadExecutor.f2442a = new HandlerScheduledExecutorService(new Handler(Looper.getMainLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return MainThreadExecutor.f2442a;
    }

    public static ScheduledExecutorService d(Handler handler) {
        return new HandlerScheduledExecutorService(handler);
    }

    public static Executor e(Executor executor) {
        return new SequentialExecutor(executor);
    }
}
