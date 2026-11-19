package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
final class zzeb implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadFactory f30611b = Executors.defaultThreadFactory();

    public zzeb(zzez zzezVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f30611b.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }
}
