package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfn extends zzadu implements zzafd {
    private static final zzfn zzk;
    private static volatile zzafj zzl;
    private int zzb;
    private int zze;
    private String zzf = "";
    private zzfh zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        zzfn zzfnVar = new zzfn();
        zzk = zzfnVar;
        zzadu.v(zzfn.class, zzfnVar);
    }

    public static zzfm I() {
        return (zzfm) zzk.q();
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final int B() {
        return this.zze;
    }

    public final String C() {
        return this.zzf;
    }

    public final zzfh D() {
        zzfh zzfhVar = this.zzg;
        return zzfhVar == null ? zzfh.I() : zzfhVar;
    }

    public final boolean E() {
        return this.zzh;
    }

    public final boolean F() {
        return this.zzi;
    }

    public final boolean G() {
        return (this.zzb & 32) != 0;
    }

    public final boolean H() {
        return this.zzj;
    }

    public final /* synthetic */ void J(String str) {
        this.zzb |= 2;
        this.zzf = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i3 == 3) {
            return new zzfn();
        }
        if (i3 == 4) {
            return new zzfm(zzk);
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
        synchronized (zzfn.class) {
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
