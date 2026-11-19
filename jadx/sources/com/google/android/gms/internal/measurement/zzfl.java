package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfl extends zzadu implements zzafd {
    private static final zzfl zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private int zze;
    private boolean zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzfl zzflVar = new zzfl();
        zzj = zzflVar;
        zzadu.v(zzfl.class, zzflVar);
    }

    public static zzfl J() {
        return zzj;
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final boolean B() {
        return (this.zzb & 2) != 0;
    }

    public final boolean C() {
        return this.zzf;
    }

    public final boolean D() {
        return (this.zzb & 4) != 0;
    }

    public final String E() {
        return this.zzg;
    }

    public final boolean F() {
        return (this.zzb & 8) != 0;
    }

    public final String G() {
        return this.zzh;
    }

    public final boolean H() {
        return (this.zzb & 16) != 0;
    }

    public final String I() {
        return this.zzi;
    }

    public final int K() {
        int i2;
        int i3 = this.zze;
        if (i3 != 0) {
            i2 = 2;
            if (i3 != 1) {
                if (i3 != 2) {
                    i2 = 4;
                    if (i3 != 3) {
                        i2 = i3 != 4 ? 0 : 5;
                    }
                } else {
                    i2 = 3;
                }
            }
        } else {
            i2 = 1;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zze", zzfj.f30624a, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i3 == 3) {
            return new zzfl();
        }
        if (i3 == 4) {
            return new zzfi(zzj);
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
        synchronized (zzfl.class) {
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
