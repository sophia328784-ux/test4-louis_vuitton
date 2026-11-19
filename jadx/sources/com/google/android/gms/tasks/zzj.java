package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzj implements zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f32104c = new Object();
    public final OnCompleteListener d;

    public zzj(Executor executor, OnCompleteListener onCompleteListener) {
        this.f32103b = executor;
        this.d = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        synchronized (this.f32104c) {
            try {
                if (this.d == null) {
                    return;
                }
                this.f32103b.execute(new zzi(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
