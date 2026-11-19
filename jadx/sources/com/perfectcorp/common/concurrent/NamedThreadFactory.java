package com.perfectcorp.common.concurrent;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NamedThreadFactory implements ThreadFactory {
    public static ThreadFactory b(String str) {
        return new d(str);
    }

    public static ThreadFactory c(String str) {
        return new c(str);
    }

    public abstract String a();

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, a());
    }
}
