package com.google.android.gms.common.util.concurrent;

import android.os.Looper;
import com.google.android.gms.internal.common.zzg;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerExecutor implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzg f29350b;

    public HandlerExecutor(Looper looper) {
        this.f29350b = new zzg(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f29350b.post(runnable);
    }
}
