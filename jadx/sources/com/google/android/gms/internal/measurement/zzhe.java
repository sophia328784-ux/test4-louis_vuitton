package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhe extends zzadu implements zzafd {
    private static final zzhe zzl;
    private static volatile zzafj zzm;
    private int zzb;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzhe zzheVar = new zzhe();
        zzl = zzheVar;
        zzadu.v(zzhe.class, zzheVar);
    }

    public static zzhd H() {
        return (zzhd) zzl.q();
    }

    public static zzhe I() {
        return zzl;
    }

    public final boolean A() {
        return this.zze;
    }

    public final boolean B() {
        return this.zzf;
    }

    public final boolean C() {
        return this.zzg;
    }

    public final boolean D() {
        return this.zzh;
    }

    public final boolean E() {
        return this.zzi;
    }

    public final boolean F() {
        return this.zzj;
    }

    public final boolean G() {
        return this.zzk;
    }

    public final /* synthetic */ void J(boolean z) {
        this.zzb |= 1;
        this.zze = z;
    }

    public final /* synthetic */ void K(boolean z) {
        this.zzb |= 2;
        this.zzf = z;
    }

    public final /* synthetic */ void L(boolean z) {
        this.zzb |= 4;
        this.zzg = z;
    }

    public final /* synthetic */ void M(boolean z) {
        this.zzb |= 8;
        this.zzh = z;
    }

    public final /* synthetic */ void N(boolean z) {
        this.zzb |= 16;
        this.zzi = z;
    }

    public final /* synthetic */ void O(boolean z) {
        this.zzb |= 32;
        this.zzj = z;
    }

    public final /* synthetic */ void P(boolean z) {
        this.zzb |= 64;
        this.zzk = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzl, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဇ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i3 == 3) {
            return new zzhe();
        }
        if (i3 == 4) {
            return new zzhd(zzl);
        }
        if (i3 == 5) {
            return zzl;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzm;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzhe.class) {
            try {
                zzadqVar = zzm;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzl);
                    zzm = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
