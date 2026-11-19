package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public class NamedThreadFactory implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadFactory f29352c = Executors.defaultThreadFactory();

    public NamedThreadFactory(String str) {
        Preconditions.i(str, "Name must not be null");
        this.f29351b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f29352c.newThread(new zza(runnable, 0));
        threadNewThread.setName(this.f29351b);
        return threadNewThread;
    }
}
