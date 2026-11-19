package androidx.camera.core.impl.utils.executor;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class IoExecutor implements Executor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Executor f2439c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f2440b = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: androidx.camera.core.impl.utils.executor.IoExecutor.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicInteger f2441b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            Locale locale = Locale.US;
            thread.setName("CameraX-camerax_io_" + this.f2441b.getAndIncrement());
            return thread;
        }
    });

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2440b.execute(runnable);
    }
}
