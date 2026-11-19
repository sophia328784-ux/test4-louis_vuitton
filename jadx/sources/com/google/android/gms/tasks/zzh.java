package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzh implements zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f32102c = new Object();
    public final OnCanceledListener d;

    public zzh(Executor executor, OnCanceledListener onCanceledListener) {
        this.f32101b = executor;
        this.d = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        if (task.j()) {
            synchronized (this.f32102c) {
                try {
                    if (this.d == null) {
                        return;
                    }
                    this.f32101b.execute(new zzg(this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
