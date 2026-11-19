package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzik extends zzadu implements zzafd {
    private static final zzik zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private int zze;
    private zzaee zzf = zzaeq.f30421f;

    static {
        zzik zzikVar = new zzik();
        zzg = zzikVar;
        zzadu.v(zzik.class, zzikVar);
    }

    public static zzij F() {
        return (zzij) zzg.q();
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final int B() {
        return this.zze;
    }

    public final List C() {
        return this.zzf;
    }

    public final int D() {
        return this.zzf.size();
    }

    public final long E(int i2) {
        return this.zzf.C(i2);
    }

    public final /* synthetic */ void G(int i2) {
        this.zzb |= 1;
        this.zze = i2;
    }

    public final void H(List list) {
        zzaee zzaeeVar = this.zzf;
        if (!zzaeeVar.d0()) {
            int size = zzaeeVar.size();
            this.zzf = zzaeeVar.d(size + size);
        }
        zzacb.k(list, this.zzf);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i3 == 3) {
            return new zzik();
        }
        if (i3 == 4) {
            return new zzij(zzg);
        }
        if (i3 == 5) {
            return zzg;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzh;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzik.class) {
            try {
                zzadqVar = zzh;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzg);
                    zzh = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
