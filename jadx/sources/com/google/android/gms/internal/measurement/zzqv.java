package com.google.android.gms.internal.measurement;

import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqv extends zzadu implements zzafd {
    private static final zzqv zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private long zzh;
    private String zze = "";
    private zzacr zzf = zzacr.f30367c;
    private String zzg = "";
    private zzaef zzi = zzafm.f30452f;

    static {
        zzqv zzqvVar = new zzqv();
        zzj = zzqvVar;
        zzadu.v(zzqv.class, zzqvVar);
    }

    public static zzqu G() {
        return (zzqu) zzj.q();
    }

    public static zzqv H() {
        return zzj;
    }

    public final String A() {
        return this.zze;
    }

    public final zzacr B() {
        return this.zzf;
    }

    public final String C() {
        return this.zzg;
    }

    public final long D() {
        return this.zzh;
    }

    public final zzaef E() {
        return this.zzi;
    }

    public final int F() {
        return this.zzi.size();
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void J(zzacr zzacrVar) {
        zzacrVar.getClass();
        this.zzb |= 2;
        this.zzf = zzacrVar;
    }

    public final /* synthetic */ void K(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final /* synthetic */ void L(long j2) {
        this.zzb |= 8;
        this.zzh = j2;
    }

    public final void M(zzqx zzqxVar) {
        zzaef zzaefVar = this.zzi;
        if (!zzaefVar.d0()) {
            this.zzi = z81.d(zzaefVar);
        }
        this.zzi.add(zzqxVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", zzqx.class});
        }
        if (i3 == 3) {
            return new zzqv();
        }
        if (i3 == 4) {
            return new zzqu(zzj);
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
        synchronized (zzqv.class) {
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
