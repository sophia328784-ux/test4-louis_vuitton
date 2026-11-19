package androidx.camera.core;

import androidx.camera.core.impl.CameraFactory;
import defpackage.ba;
import defpackage.vi;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class CameraExecutor implements Executor {
    public static final ThreadFactory d = new ThreadFactory() { // from class: androidx.camera.core.CameraExecutor.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicInteger f1886b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(new ba(runnable, 1));
            thread.setPriority(7);
            Locale locale = Locale.US;
            thread.setName("CameraX-core_camera_" + this.f1886b.getAndIncrement());
            return thread;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1884b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ThreadPoolExecutor f1885c;

    public CameraExecutor() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), d);
        threadPoolExecutor.setRejectedExecutionHandler(new vi(0));
        this.f1885c = threadPoolExecutor;
    }

    public final void a(CameraFactory cameraFactory) {
        ThreadPoolExecutor threadPoolExecutor;
        cameraFactory.getClass();
        synchronized (this.f1884b) {
            try {
                if (this.f1885c.isShutdown()) {
                    ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), d);
                    threadPoolExecutor2.setRejectedExecutionHandler(new vi(0));
                    this.f1885c = threadPoolExecutor2;
                }
                threadPoolExecutor = this.f1885c;
            } catch (Throwable th) {
                throw th;
            }
        }
        int iMax = Math.max(1, cameraFactory.d().size());
        threadPoolExecutor.setMaximumPoolSize(iMax);
        threadPoolExecutor.setCorePoolSize(iMax);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.f1884b) {
            this.f1885c.execute(runnable);
        }
    }
}
