package androidx.camera.core.impl.utils.executor;

import defpackage.ba;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class AudioExecutor implements Executor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile AudioExecutor f2432c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f2433b = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: androidx.camera.core.impl.utils.executor.AudioExecutor.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicInteger f2434b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(new ba(runnable, 0));
            Locale locale = Locale.US;
            thread.setName("CameraX-camerax_audio_" + this.f2434b.getAndIncrement());
            return thread;
        }
    });

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2433b.execute(runnable);
    }
}
