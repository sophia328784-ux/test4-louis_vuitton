package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zziu extends zzadu implements zzafd {
    private static final zziu zzk;
    private static volatile zzafj zzl;
    private int zzb;
    private long zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        zziu zziuVar = new zziu();
        zzk = zziuVar;
        zzadu.v(zziu.class, zziuVar);
    }

    public static zzit L() {
        return (zzit) zzk.q();
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final long B() {
        return this.zze;
    }

    public final String C() {
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

    public final long G() {
        return this.zzh;
    }

    public final boolean H() {
        return (this.zzb & 16) != 0;
    }

    public final float I() {
        return this.zzi;
    }

    public final boolean J() {
        return (this.zzb & 32) != 0;
    }

    public final double K() {
        return this.zzj;
    }

    public final /* synthetic */ void M(long j2) {
        this.zzb |= 1;
        this.zze = j2;
    }

    public final /* synthetic */ void N(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void O(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final /* synthetic */ void P() {
        this.zzb &= -5;
        this.zzg = zzk.zzg;
    }

    public final /* synthetic */ void Q(long j2) {
        this.zzb |= 8;
        this.zzh = j2;
    }

    public final /* synthetic */ void R() {
        this.zzb &= -9;
        this.zzh = 0L;
    }

    public final /* synthetic */ void S(double d) {
        this.zzb |= 32;
        this.zzj = d;
    }

    public final /* synthetic */ void T() {
        this.zzb &= -33;
        this.zzj = 0.0d;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i3 == 3) {
            return new zziu();
        }
        if (i3 == 4) {
            return new zzit(zzk);
        }
        if (i3 == 5) {
            return zzk;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzl;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zziu.class) {
            try {
                zzadqVar = zzl;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzk);
                    zzl = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
