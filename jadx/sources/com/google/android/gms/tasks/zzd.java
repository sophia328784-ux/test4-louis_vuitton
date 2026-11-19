package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzd implements zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Continuation f32098c;
    public final zzw d;

    public zzd(Executor executor, Continuation continuation, zzw zzwVar) {
        this.f32097b = executor;
        this.f32098c = continuation;
        this.d = zzwVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        this.f32097b.execute(new zzc(this, task));
    }
}
