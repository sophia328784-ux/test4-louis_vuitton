package com.batch.android.e;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public class v implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadFactory f23188b = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23189a;

    public v() {
        this.f23189a = null;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = f23188b.newThread(runnable);
        if (this.f23189a == null) {
            threadNewThread.setName("com.batch.android");
            return threadNewThread;
        }
        threadNewThread.setName("com.batch.android." + this.f23189a);
        return threadNewThread;
    }

    public v(String str) {
        this.f23189a = str;
    }
}
