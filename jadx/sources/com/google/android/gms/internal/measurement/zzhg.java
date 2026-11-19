package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhg extends zzadu implements zzafd {
    private static final zzhg zzi;
    private static volatile zzafj zzj;
    private int zzb;
    private int zze;
    private zzii zzf;
    private zzii zzg;
    private boolean zzh;

    static {
        zzhg zzhgVar = new zzhg();
        zzi = zzhgVar;
        zzadu.v(zzhg.class, zzhgVar);
    }

    public static zzhf H() {
        return (zzhf) zzi.q();
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final int B() {
        return this.zze;
    }

    public final zzii C() {
        zzii zziiVar = this.zzf;
        return zziiVar == null ? zzii.J() : zziiVar;
    }

    public final boolean D() {
        return (this.zzb & 4) != 0;
    }

    public final zzii E() {
        zzii zziiVar = this.zzg;
        return zziiVar == null ? zzii.J() : zziiVar;
    }

    public final boolean F() {
        return (this.zzb & 8) != 0;
    }

    public final boolean G() {
        return this.zzh;
    }

    public final /* synthetic */ void I(int i2) {
        this.zzb |= 1;
        this.zze = i2;
    }

    public final /* synthetic */ void J(zzii zziiVar) {
        this.zzf = zziiVar;
        this.zzb |= 2;
    }

    public final /* synthetic */ void K(zzii zziiVar) {
        this.zzg = zziiVar;
        this.zzb |= 4;
    }

    public final /* synthetic */ void L(boolean z) {
        this.zzb |= 8;
        this.zzh = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzi, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        if (i3 == 3) {
            return new zzhg();
        }
        if (i3 == 4) {
            return new zzhf(zzi);
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
        synchronized (zzhg.class) {
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
