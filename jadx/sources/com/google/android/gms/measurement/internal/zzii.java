package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzii implements Runnable {
    final /* synthetic */ zzah zza;
    final /* synthetic */ zzjd zzb;

    public zzii(zzjd zzjdVar, zzah zzahVar) {
        this.zza = zzahVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        zzah zzahVar = this.zza;
        Object objW1 = zzahVar.d.W1();
        zzpg zzpgVar = zzjdVar.f31847a;
        if (objW1 == null) {
            zzpgVar.getClass();
            String str = zzahVar.f31543b;
            Preconditions.h(str);
            zzr zzrVarQ = zzpgVar.Q(str);
            if (zzrVarQ != null) {
                zzpgVar.b0(zzahVar, zzrVarQ);
                return;
            }
            return;
        }
        zzpgVar.getClass();
        String str2 = zzahVar.f31543b;
        Preconditions.h(str2);
        zzr zzrVarQ2 = zzpgVar.Q(str2);
        if (zzrVarQ2 != null) {
            zzpgVar.a0(zzahVar, zzrVarQ2);
        }
    }
}
