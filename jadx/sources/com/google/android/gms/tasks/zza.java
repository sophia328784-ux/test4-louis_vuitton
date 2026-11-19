package com.google.android.gms.tasks;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements OnSuccessListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OnTokenCanceledListener f32088b;

    public zza(zzb zzbVar, OnTokenCanceledListener onTokenCanceledListener) {
        this.f32088b = onTokenCanceledListener;
        Objects.requireNonNull(zzbVar);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        ((zzs) this.f32088b).f32114a.f32085a.q();
    }
}
