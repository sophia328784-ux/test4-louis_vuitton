package com.google.firebase.concurrent;

import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
class CustomThreadFactory implements ThreadFactory {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ThreadFactory f34431f = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f34432b = new AtomicLong();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34433c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StrictMode.ThreadPolicy f34434e;

    public CustomThreadFactory(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        this.f34433c = str;
        this.d = i2;
        this.f34434e = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = f34431f.newThread(new a(this, runnable, 0));
        Locale locale = Locale.ROOT;
        threadNewThread.setName(this.f34433c + " Thread #" + this.f34432b.getAndIncrement());
        return threadNewThread;
    }
}
