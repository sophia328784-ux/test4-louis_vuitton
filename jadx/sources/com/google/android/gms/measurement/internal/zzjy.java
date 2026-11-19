package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzjy implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzlj zzb;

    public zzjy(zzlj zzljVar, boolean z) {
        this.zza = z;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004c  */
    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzic zzicVar = zzljVar.f31850a;
        boolean zF = zzicVar.f();
        boolean z = false;
        boolean z2 = zzicVar.y != null && zzicVar.y.booleanValue();
        boolean z3 = this.zza;
        zzicVar.y = Boolean.valueOf(z3);
        if (z2 == z3) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.b(Boolean.valueOf(z3), "Default data collection state already set to");
        }
        if (zzicVar.f() != zF) {
            boolean zF2 = zzicVar.f();
            if (zzicVar.y != null && zzicVar.y.booleanValue()) {
                z = true;
            }
            if (zF2 != z) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31773k.c("Default data collection is different than actual status", Boolean.valueOf(z3), Boolean.valueOf(zF));
            }
        } else {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31773k.c("Default data collection is different than actual status", Boolean.valueOf(z3), Boolean.valueOf(zF));
        }
        zzljVar.H();
    }
}
