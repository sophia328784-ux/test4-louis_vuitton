package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzii extends zzadu implements zzafd {
    private static final zzii zzh;
    private static volatile zzafj zzi;
    private zzaee zzb;
    private zzaee zze;
    private zzaef zzf;
    private zzaef zzg;

    static {
        zzii zziiVar = new zzii();
        zzh = zziiVar;
        zzadu.v(zzii.class, zziiVar);
    }

    public zzii() {
        zzaeq zzaeqVar = zzaeq.f30421f;
        this.zzb = zzaeqVar;
        this.zze = zzaeqVar;
        zzafm zzafmVar = zzafm.f30452f;
        this.zzf = zzafmVar;
        this.zzg = zzafmVar;
    }

    public static zzih I() {
        return (zzih) zzh.q();
    }

    public static zzii J() {
        return zzh;
    }

    public final List A() {
        return this.zzb;
    }

    public final int B() {
        return this.zzb.size();
    }

    public final List C() {
        return this.zze;
    }

    public final int D() {
        return this.zze.size();
    }

    public final zzaef E() {
        return this.zzf;
    }

    public final int F() {
        return this.zzf.size();
    }

    public final zzaef G() {
        return this.zzg;
    }

    public final int H() {
        return this.zzg.size();
    }

    public final void K(Iterable iterable) {
        zzaee zzaeeVar = this.zzb;
        if (!zzaeeVar.d0()) {
            int size = zzaeeVar.size();
            this.zzb = zzaeeVar.d(size + size);
        }
        zzacb.k(iterable, this.zzb);
    }

    public final void L() {
        this.zzb = zzaeq.f30421f;
    }

    public final void M(List list) {
        zzaee zzaeeVar = this.zze;
        if (!zzaeeVar.d0()) {
            int size = zzaeeVar.size();
            this.zze = zzaeeVar.d(size + size);
        }
        zzacb.k(list, this.zze);
    }

    public final void N() {
        this.zze = zzaeq.f30421f;
    }

    public final void O(ArrayList arrayList) {
        zzaef zzaefVar = this.zzf;
        if (!zzaefVar.d0()) {
            this.zzf = z81.d(zzaefVar);
        }
        zzacb.k(arrayList, this.zzf);
    }

    public final void P() {
        this.zzf = zzafm.f30452f;
    }

    public final void Q(Iterable iterable) {
        zzaef zzaefVar = this.zzg;
        if (!zzaefVar.d0()) {
            this.zzg = z81.d(zzaefVar);
        }
        zzacb.k(iterable, this.zzg);
    }

    public final void R() {
        this.zzg = zzafm.f30452f;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzh, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zze", "zzf", zzhq.class, "zzg", zzik.class});
        }
        if (i3 == 3) {
            return new zzii();
        }
        if (i3 == 4) {
            return new zzih(zzh);
        }
        if (i3 == 5) {
            return zzh;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzi;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzii.class) {
            try {
                zzadqVar = zzi;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzh);
                    zzi = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
