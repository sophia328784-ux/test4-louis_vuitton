package com.google.android.gms.tasks;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class zzb extends CancellationToken {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzw f32096a = new zzw();

    @Override // com.google.android.gms.tasks.CancellationToken
    public final CancellationToken a(OnTokenCanceledListener onTokenCanceledListener) {
        this.f32096a.f(TaskExecutors.f32086a, new zza(this, onTokenCanceledListener));
        return this;
    }
}
