package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzni extends zzadu implements zzafd {
    private static final zzaec zzl = new zzng();
    private static final zzni zzq;
    private static volatile zzafj zzr;
    private int zzb;
    private boolean zzf;
    private long zzh;
    private zzaef zzi;
    private zzaef zzj;
    private zzaeb zzk;
    private zznm zzm;
    private boolean zzn;
    private boolean zzo;
    private zznf zzp;
    private zzacr zze = zzacr.f30367c;
    private String zzg = "";

    static {
        zzni zzniVar = new zzni();
        zzq = zzniVar;
        zzadu.v(zzni.class, zzniVar);
    }

    public zzni() {
        zzafm zzafmVar = zzafm.f30452f;
        this.zzi = zzafmVar;
        this.zzj = zzafmVar;
        this.zzk = zzadv.f30409f;
    }

    public static zznh N() {
        return (zznh) zzq.q();
    }

    public static zzni O() {
        return zzq;
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final zzacr B() {
        return this.zze;
    }

    public final boolean C() {
        return this.zzf;
    }

    public final String D() {
        return this.zzg;
    }

    public final long E() {
        return this.zzh;
    }

    public final zzaef F() {
        return this.zzi;
    }

    public final zzaef G() {
        return this.zzj;
    }

    public final List H() {
        return new zzaed.zza(this.zzk, zzl);
    }

    public final boolean I() {
        return (this.zzb & 16) != 0;
    }

    public final zznm J() {
        zznm zznmVar = this.zzm;
        return zznmVar == null ? zznm.C() : zznmVar;
    }

    public final boolean K() {
        return this.zzn;
    }

    public final boolean L() {
        return this.zzo;
    }

    public final zznf M() {
        zznf zznfVar = this.zzp;
        return zznfVar == null ? zznf.B() : zznfVar;
    }

    public final /* synthetic */ void P(long j2) {
        this.zzb |= 8;
        this.zzh = j2;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzq, "\u0004\u000b\u0000\u0001\u0001\f\u000b\u0000\u0003\u0000\u0001ည\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005\u001a\u0006\u001a\u0007ࠬ\bဉ\u0004\nဇ\u0005\u000bဇ\u0006\fဉ\u0007", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzaby.f30354a, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i3 == 3) {
            return new zzni();
        }
        if (i3 == 4) {
            return new zznh(zzq);
        }
        if (i3 == 5) {
            return zzq;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzr;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzni.class) {
            try {
                zzadqVar = zzr;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzq);
                    zzr = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
