package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaie implements zzaid {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzpo f30533a = new zzpo(zzagr.d, 6);

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final String I() {
        return (String) f30533a.c(5, "measurement.test.string_flag", "---").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final boolean d0() {
        return ((Boolean) f30533a.a(0, "measurement.test.boolean_flag", false).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long e0() {
        return ((Long) f30533a.b(1, "measurement.test.cached_long_flag", -1L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final double f0() {
        zzpo zzpoVar = f30533a;
        AtomicReferenceArray atomicReferenceArray = zzpoVar.f30810a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(2);
        if (zzomVar == null) {
            zznz zznzVar = new zznz("measurement.test.double_flag", zzpoVar.f30811b.f30775a);
            while (!atomicReferenceArray.compareAndSet(2, null, zznzVar)) {
                if (atomicReferenceArray.get(2) != null) {
                    zzomVar = (zzom) atomicReferenceArray.get(2);
                    zzomVar.getClass();
                }
            }
            zzomVar = zznzVar;
        }
        return ((Double) zzomVar.get()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long g0() {
        return ((Long) f30533a.b(3, "measurement.test.int_flag", -2L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long h0() {
        return ((Long) f30533a.b(4, "measurement.test.long_flag", -1L).get()).longValue();
    }
}
