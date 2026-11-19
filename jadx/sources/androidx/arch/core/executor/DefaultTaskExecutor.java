package androidx.arch.core.executor;

import android.os.Handler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTaskExecutor extends TaskExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1354a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f1355b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.arch.core.executor.DefaultTaskExecutor.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicInteger f1357b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("arch_disk_io_" + this.f1357b.getAndIncrement());
            return thread;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Handler f1356c;
}
