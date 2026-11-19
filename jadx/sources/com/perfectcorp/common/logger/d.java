package com.perfectcorp.common.logger;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
final class d implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ a f39284b;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "sdk::FileLogger");
        thread.setPriority(1);
        return thread;
    }
}
