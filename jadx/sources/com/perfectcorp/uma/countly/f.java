package com.perfectcorp.uma.countly;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
final class f implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "Countly");
    }
}
