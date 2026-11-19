package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzeh extends zzeo {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzez zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeh(zzez zzezVar, boolean z) {
        super(zzezVar, true);
        this.zza = z;
        Objects.requireNonNull(zzezVar);
        this.zzb = zzezVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeo
    public final void zza() throws RemoteException {
        zzcp zzcpVar = this.zzb.f30620f;
        Preconditions.h(zzcpVar);
        zzcpVar.setDataCollectionEnabled(this.zza);
    }
}
