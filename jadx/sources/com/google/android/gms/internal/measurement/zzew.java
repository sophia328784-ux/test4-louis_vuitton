package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzew extends zzeo {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzcm zzb;
    final /* synthetic */ zzey zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzew(zzey zzeyVar, Activity activity, zzcm zzcmVar) {
        super(zzeyVar.f30614b, true);
        this.zza = activity;
        this.zzb = zzcmVar;
        Objects.requireNonNull(zzeyVar);
        this.zzc = zzeyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeo
    public final void zza() throws RemoteException {
        zzcp zzcpVar = this.zzc.f30614b.f30620f;
        Preconditions.h(zzcpVar);
        zzcpVar.onActivitySaveInstanceStateByScionActivityInfo(zzdd.W1(this.zza), this.zzb, this.zzj);
    }
}
