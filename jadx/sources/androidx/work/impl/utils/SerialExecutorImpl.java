package androidx.work.impl.utils;

import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class SerialExecutorImpl implements SerialExecutor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f20553c;
    public Runnable d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f20552b = new ArrayDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f20554e = new Object();

    public static class Task implements Runnable {
        final Runnable mRunnable;
        final SerialExecutorImpl mSerialExecutor;

        public Task(SerialExecutorImpl serialExecutorImpl, Runnable runnable) {
            this.mSerialExecutor = serialExecutorImpl;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mRunnable.run();
                synchronized (this.mSerialExecutor.f20554e) {
                    this.mSerialExecutor.h();
                }
            } catch (Throwable th) {
                synchronized (this.mSerialExecutor.f20554e) {
                    this.mSerialExecutor.h();
                    throw th;
                }
            }
        }
    }

    public SerialExecutorImpl(Executor executor) {
        this.f20553c = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f20554e) {
            try {
                this.f20552b.add(new Task(this, runnable));
                if (this.d == null) {
                    h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        Runnable runnable = (Runnable) this.f20552b.poll();
        this.d = runnable;
        if (runnable != null) {
            this.f20553c.execute(runnable);
        }
    }
}
