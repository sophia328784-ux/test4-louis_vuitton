package com.perfectcorp.uma.countly;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
final class e implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "Countly_cmd");
        try {
            thread.setPriority(4);
        } catch (Throwable unused) {
        }
        return thread;
    }
}
