package com.google.android.gms.internal.measurement;

import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmg extends zzadu implements zzafd {
    private static final zzmg zzl;
    private static volatile zzafj zzm;
    private int zzb;
    private String zze = "";
    private zzacr zzf = zzacr.f30367c;
    private String zzg = "";
    private zzaef zzh;
    private zzaef zzi;
    private boolean zzj;
    private long zzk;

    static {
        zzmg zzmgVar = new zzmg();
        zzl = zzmgVar;
        zzadu.v(zzmg.class, zzmgVar);
    }

    public zzmg() {
        zzafm zzafmVar = zzafm.f30452f;
        this.zzh = zzafmVar;
        this.zzi = zzafmVar;
    }

    public static zzmf G() {
        return (zzmf) zzl.q();
    }

    public final String A() {
        return this.zze;
    }

    public final boolean B() {
        return (this.zzb & 2) != 0;
    }

    public final zzacr C() {
        return this.zzf;
    }

    public final String D() {
        return this.zzg;
    }

    public final zzaef E() {
        return this.zzh;
    }

    public final long F() {
        return this.zzk;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void I(zzacr zzacrVar) {
        zzacrVar.getClass();
        this.zzb |= 2;
        this.zzf = zzacrVar;
    }

    public final /* synthetic */ void J(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzg = str;
    }

    public final void K(zzmi zzmiVar) {
        zzaef zzaefVar = this.zzh;
        if (!zzaefVar.d0()) {
            this.zzh = z81.d(zzaefVar);
        }
        this.zzh.add(zzmiVar);
    }

    public final void L(String str) {
        str.getClass();
        zzaef zzaefVar = this.zzi;
        if (!zzaefVar.d0()) {
            this.zzi = z81.d(zzaefVar);
        }
        this.zzi.add(str);
    }

    public final /* synthetic */ void M(boolean z) {
        this.zzb |= 8;
        this.zzj = z;
    }

    public final /* synthetic */ void N(long j2) {
        this.zzb |= 16;
        this.zzk = j2;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzl, "\u0004\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001ဈ\u0002\u0002ဈ\u0000\u0003ည\u0001\u0004\u001b\u0005\u001a\bဇ\u0003\tဂ\u0004", new Object[]{"zzb", "zzg", "zze", "zzf", "zzh", zzmi.class, "zzi", "zzj", "zzk"});
        }
        if (i3 == 3) {
            return new zzmg();
        }
        if (i3 == 4) {
            return new zzmf(zzl);
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
        synchronized (zzmg.class) {
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
