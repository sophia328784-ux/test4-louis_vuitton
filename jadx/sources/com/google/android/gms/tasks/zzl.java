package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzl implements zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f32106c = new Object();
    public final OnFailureListener d;

    public zzl(Executor executor, OnFailureListener onFailureListener) {
        this.f32105b = executor;
        this.d = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        if (task.isSuccessful() || task.j()) {
            return;
        }
        synchronized (this.f32106c) {
            try {
                if (this.d == null) {
                    return;
                }
                this.f32105b.execute(new zzk(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
