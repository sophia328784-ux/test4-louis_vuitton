package androidx.core.provider;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
class RequestExecutor$DefaultThreadFactory implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f12113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12114c;

    public static class ProcessPriorityThread extends Thread {
        private final int mPriority;

        public ProcessPriorityThread(Runnable runnable, String str, int i2) {
            super(runnable, str);
            this.mPriority = i2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(this.mPriority);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new ProcessPriorityThread(runnable, this.f12113b, this.f12114c);
    }
}
