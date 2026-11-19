package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfd extends zzadu implements zzafd {
    private static final zzfd zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private int zze;
    private zzaef zzf;
    private zzaef zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        zzfd zzfdVar = new zzfd();
        zzj = zzfdVar;
        zzadu.v(zzfd.class, zzfdVar);
    }

    public zzfd() {
        zzafm zzafmVar = zzafm.f30452f;
        this.zzf = zzafmVar;
        this.zzg = zzafmVar;
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

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfn E(int i2) {
        return (zzfn) this.zzf.get(i2);
    }

    public final zzaef F() {
        return this.zzg;
    }

    public final int G() {
        return this.zzg.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzff H(int i2) {
        return (zzff) this.zzg.get(i2);
    }

    public final void I(int i2, zzfn zzfnVar) {
        zzaef zzaefVar = this.zzf;
        if (!zzaefVar.d0()) {
            this.zzf = z81.d(zzaefVar);
        }
        this.zzf.set(i2, zzfnVar);
    }

    public final void J(int i2, zzff zzffVar) {
        zzaef zzaefVar = this.zzg;
        if (!zzaefVar.d0()) {
            this.zzg = z81.d(zzaefVar);
        }
        this.zzg.set(i2, zzffVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzb", "zze", "zzf", zzfn.class, "zzg", zzff.class, "zzh", "zzi"});
        }
        if (i3 == 3) {
            return new zzfd();
        }
        if (i3 == 4) {
            return new zzfc(zzj);
        }
        if (i3 == 5) {
            return zzj;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzk;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzfd.class) {
            try {
                zzadqVar = zzk;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzj);
                    zzk = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
