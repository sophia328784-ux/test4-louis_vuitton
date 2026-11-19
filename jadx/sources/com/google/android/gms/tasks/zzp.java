package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzp<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f32109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SuccessContinuation f32110c;
    public final zzw d;

    public zzp(Executor executor, SuccessContinuation successContinuation, zzw zzwVar) {
        this.f32109b = executor;
        this.f32110c = successContinuation;
        this.d = zzwVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void a(Task task) {
        this.f32109b.execute(new zzo(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void b() {
        this.d.q();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.d.p(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.d.n(obj);
    }
}
