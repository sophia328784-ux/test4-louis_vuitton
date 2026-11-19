package com.google.android.gms.tasks;

import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzu implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.internal.tasks.zza f32115b = new com.google.android.gms.internal.tasks.zza(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f32115b.post(runnable);
    }
}
