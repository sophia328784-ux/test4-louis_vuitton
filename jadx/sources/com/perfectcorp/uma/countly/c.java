package com.perfectcorp.uma.countly;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
final class c implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "CountlyConnectionQueue");
        try {
            thread.setPriority(4);
        } catch (Throwable unused) {
        }
        return thread;
    }
}
