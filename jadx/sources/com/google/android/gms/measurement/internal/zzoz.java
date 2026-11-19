package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzoz implements Callable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzpg zzb;

    public zzoz(zzpg zzpgVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzpgVar);
        this.zzb = zzpgVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        zzr zzrVar = this.zza;
        String str = zzrVar.f32016b;
        Preconditions.h(str);
        zzpg zzpgVar = this.zzb;
        zzjl zzjlVarF = zzpgVar.f(str);
        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
        if (zzjlVarF.i(zzjkVar) && zzjl.c(100, zzrVar.t).i(zzjkVar)) {
            return zzpgVar.d0(zzrVar).F();
        }
        zzpgVar.b().n.a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
