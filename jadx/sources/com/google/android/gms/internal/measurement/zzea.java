package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzea extends zzeo {
    final /* synthetic */ String zza;
    final /* synthetic */ Object zzb;
    final /* synthetic */ zzez zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzea(zzez zzezVar, boolean z, int i2, String str, Object obj, Object obj2, Object obj3) {
        super(zzezVar, false);
        this.zza = str;
        this.zzb = obj;
        Objects.requireNonNull(zzezVar);
        this.zzc = zzezVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeo
    public final void zza() throws RemoteException {
        zzcp zzcpVar = this.zzc.f30620f;
        Preconditions.h(zzcpVar);
        zzcpVar.logHealthData(5, this.zza, new ObjectWrapper(this.zzb), new ObjectWrapper(null), new ObjectWrapper(null));
    }
}
