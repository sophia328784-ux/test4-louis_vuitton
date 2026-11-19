package com.networkbench.agent.impl.session.screen;

import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class NBSUIHandlerThread {
    private static NBSUIHandlerThread instance;
    private HandlerThread uiHandlerThread;

    private NBSUIHandlerThread() {
        HandlerThread handlerThread = new HandlerThread("nbs ui handler");
        this.uiHandlerThread = handlerThread;
        handlerThread.start();
    }

    public static synchronized NBSUIHandlerThread getInstance() {
        try {
            if (instance == null) {
                instance = new NBSUIHandlerThread();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public Looper getUIHandlerLooper() {
        return this.uiHandlerThread.getLooper();
    }
}
