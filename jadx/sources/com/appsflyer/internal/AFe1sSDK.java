package com.appsflyer.internal;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1sSDK extends TimerTask {
    private final Thread registerClient;

    public AFe1sSDK(Thread thread) {
        thread.getClass();
        this.registerClient = thread;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.registerClient.interrupt();
    }
}
