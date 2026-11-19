package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzn implements zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f32108c = new Object();
    public final OnSuccessListener d;

    public zzn(Executor executor, OnSuccessListener onSuccessListener) {
        this.f32107b = executor;
        this.d = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        if (task.isSuccessful()) {
            synchronized (this.f32108c) {
                try {
                    if (this.d == null) {
                        return;
                    }
                    this.f32107b.execute(new zzm(this, task));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
