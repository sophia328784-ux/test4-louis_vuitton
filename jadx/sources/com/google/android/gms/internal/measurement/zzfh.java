package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfh extends zzadu implements zzafd {
    private static final zzfh zzi;
    private static volatile zzafj zzj;
    private int zzb;
    private zzfr zze;
    private zzfl zzf;
    private boolean zzg;
    private String zzh = "";

    static {
        zzfh zzfhVar = new zzfh();
        zzi = zzfhVar;
        zzadu.v(zzfh.class, zzfhVar);
    }

    public static zzfh I() {
        return zzi;
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final zzfr B() {
        zzfr zzfrVar = this.zze;
        return zzfrVar == null ? zzfr.H() : zzfrVar;
    }

    public final boolean C() {
        return (this.zzb & 2) != 0;
    }

    public final zzfl D() {
        zzfl zzflVar = this.zzf;
        return zzflVar == null ? zzfl.J() : zzflVar;
    }

    public final boolean E() {
        return (this.zzb & 4) != 0;
    }

    public final boolean F() {
        return this.zzg;
    }

    public final boolean G() {
        return (this.zzb & 8) != 0;
    }

    public final String H() {
        return this.zzh;
    }

    public final /* synthetic */ void J(String str) {
        this.zzb |= 8;
        this.zzh = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        if (i3 == 3) {
            return new zzfh();
        }
        if (i3 == 4) {
            return new zzfg(zzi);
        }
        if (i3 == 5) {
            return zzi;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzj;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzfh.class) {
            try {
                zzadqVar = zzj;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzi);
                    zzj = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
