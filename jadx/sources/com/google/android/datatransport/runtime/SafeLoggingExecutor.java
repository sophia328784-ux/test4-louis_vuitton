package com.google.android.datatransport.runtime;

import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class SafeLoggingExecutor implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f27974b;

    public static class SafeLoggingRunnable implements Runnable {
        private final Runnable delegate;

        public SafeLoggingRunnable(Runnable runnable) {
            this.delegate = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception unused) {
                Log.isLoggable("TRuntime.".concat("Executor"), 6);
            }
        }
    }

    public SafeLoggingExecutor(ExecutorService executorService) {
        this.f27974b = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f27974b.execute(new SafeLoggingRunnable(runnable));
    }
}
