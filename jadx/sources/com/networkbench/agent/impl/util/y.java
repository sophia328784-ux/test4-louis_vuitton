package com.networkbench.agent.impl.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y implements Runnable {
    private static final String TAG = "NBSRunnable";

    @Override // java.lang.Runnable
    public void run() {
        try {
            tryCatchRun();
        } catch (Throwable unused) {
        }
    }

    public abstract void tryCatchRun();
}
