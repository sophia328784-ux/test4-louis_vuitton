package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgl extends zzadu implements zzafd {
    private static final zzgl zzw;
    private static volatile zzafj zzx;
    private int zzb;
    private long zze;
    private String zzf = "";
    private int zzg;
    private zzaef zzh;
    private zzaef zzi;
    private zzaef zzj;
    private String zzk;
    private boolean zzl;
    private zzaef zzm;
    private zzaef zzn;
    private String zzo;
    private String zzp;
    private zzgf zzq;
    private zzgp zzr;
    private zzgv zzs;
    private zzgr zzt;
    private zzgn zzu;
    private zzaeb zzv;

    static {
        zzgl zzglVar = new zzgl();
        zzw = zzglVar;
        zzadu.v(zzgl.class, zzglVar);
    }

    public zzgl() {
        zzafm zzafmVar = zzafm.f30452f;
        this.zzh = zzafmVar;
        this.zzi = zzafmVar;
        this.zzj = zzafmVar;
        this.zzk = "";
        this.zzm = zzafmVar;
        this.zzn = zzafmVar;
        this.zzo = "";
        this.zzp = "";
        this.zzv = zzadv.f30409f;
    }

    public static zzgk R() {
        return (zzgk) zzw.q();
    }

    public static zzgl S() {
        return zzw;
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final long B() {
        return this.zze;
    }

    public final boolean C() {
        return (this.zzb & 2) != 0;
    }

    public final String D() {
        return this.zzf;
    }

    public final zzaef E() {
        return this.zzh;
    }

    public final int F() {
        return this.zzi.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzgj G(int i2) {
        return (zzgj) this.zzi.get(i2);
    }

    public final List H() {
        return this.zzj;
    }

    public final zzaef I() {
        return this.zzm;
    }

    public final int J() {
        return this.zzm.size();
    }

    public final zzaef K() {
        return this.zzn;
    }

    public final String L() {
        return this.zzo;
    }

    public final boolean M() {
        return (this.zzb & 128) != 0;
    }

    public final zzgf N() {
        zzgf zzgfVar = this.zzq;
        return zzgfVar == null ? zzgf.G() : zzgfVar;
    }

    public final boolean O() {
        return (this.zzb & 512) != 0;
    }

    public final zzgv P() {
        zzgv zzgvVar = this.zzs;
        return zzgvVar == null ? zzgv.C() : zzgvVar;
    }

    public final zzaeb Q() {
        return this.zzv;
    }

    public final void T(int i2, zzgj zzgjVar) {
        zzaef zzaefVar = this.zzi;
        if (!zzaefVar.d0()) {
            this.zzi = z81.d(zzaefVar);
        }
        this.zzi.set(i2, zzgjVar);
    }

    public final void U() {
        this.zzj = zzafm.f30452f;
    }

    public final void V() {
        this.zzm = zzafm.f30452f;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzw, "\u0004\u0012\u0000\u0001\u0001\u0014\u0012\u0000\u0006\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b\u0014+", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", zzgt.class, "zzi", zzgj.class, "zzj", zzfd.class, "zzk", "zzl", "zzm", zzja.class, "zzn", zzgh.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv"});
        }
        if (i3 == 3) {
            return new zzgl();
        }
        if (i3 == 4) {
            return new zzgk(zzw);
        }
        if (i3 == 5) {
            return zzw;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzx;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzgl.class) {
            try {
                zzadqVar = zzx;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzw);
                    zzx = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
