package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzmi implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zznl zzc;

    public zzmi(zznl zznlVar, AtomicReference atomicReference, zzr zzrVar) {
        this.zza = atomicReference;
        this.zzb = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.zzc = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.zza;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.zzc;
                    zzic zzicVar = zznlVar.f31850a;
                    zzhh zzhhVar = zzicVar.f31841e;
                    zzic.k(zzhhVar);
                    if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                        zzgb zzgbVar = zznlVar.d;
                        if (zzgbVar != null) {
                            zzr zzrVar = this.zzb;
                            Preconditions.h(zzrVar);
                            atomicReference2.set(zzgbVar.B0(zzrVar));
                            String str = (String) atomicReference2.get();
                            if (str != null) {
                                zzlj zzljVar = zznlVar.f31850a.m;
                                zzic.l(zzljVar);
                                zzljVar.g.set(str);
                                zzhh zzhhVar2 = zzicVar.f31841e;
                                zzic.k(zzhhVar2);
                                zzhhVar2.g.b(str);
                            }
                            zznlVar.t();
                            atomicReference = this.zza;
                            atomicReference.notify();
                            return;
                        }
                        zzgu zzguVar = zzicVar.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.a("Failed to get app instance id");
                    } else {
                        zzgu zzguVar2 = zzicVar.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31773k.a("Analytics storage consent denied; will not get app instance id");
                        zzlj zzljVar2 = zznlVar.f31850a.m;
                        zzic.l(zzljVar2);
                        zzljVar2.g.set(null);
                        zzhh zzhhVar3 = zzicVar.f31841e;
                        zzic.k(zzhhVar3);
                        zzhhVar3.g.b(null);
                        atomicReference2.set(null);
                    }
                    atomicReference2.notify();
                } catch (RemoteException e2) {
                    zzgu zzguVar3 = this.zzc.f31850a.f31842f;
                    zzic.m(zzguVar3);
                    zzguVar3.f31769f.b(e2, "Failed to get app instance id");
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
