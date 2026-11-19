package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhw extends zzadu implements zzafd {
    private static final zzhw zzk;
    private static volatile zzafj zzl;
    private int zzb;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = "";
    private String zzf = "";
    private zzaef zzj = zzafm.f30452f;

    static {
        zzhw zzhwVar = new zzhw();
        zzk = zzhwVar;
        zzadu.v(zzhw.class, zzhwVar);
    }

    public static zzhv M() {
        return (zzhv) zzk.q();
    }

    public final boolean A() {
        return (this.zzb & 1) != 0;
    }

    public final String B() {
        return this.zze;
    }

    public final boolean C() {
        return (this.zzb & 2) != 0;
    }

    public final String D() {
        return this.zzf;
    }

    public final boolean E() {
        return (this.zzb & 4) != 0;
    }

    public final long F() {
        return this.zzg;
    }

    public final boolean G() {
        return (this.zzb & 8) != 0;
    }

    public final float H() {
        return this.zzh;
    }

    public final boolean I() {
        return (this.zzb & 16) != 0;
    }

    public final double J() {
        return this.zzi;
    }

    public final zzaef K() {
        return this.zzj;
    }

    public final int L() {
        return this.zzj.size();
    }

    public final /* synthetic */ void N(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void O(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void P() {
        this.zzb &= -3;
        this.zzf = zzk.zzf;
    }

    public final /* synthetic */ void Q(long j2) {
        this.zzb |= 4;
        this.zzg = j2;
    }

    public final /* synthetic */ void R() {
        this.zzb &= -5;
        this.zzg = 0L;
    }

    public final /* synthetic */ void S(double d) {
        this.zzb |= 16;
        this.zzi = d;
    }

    public final /* synthetic */ void T() {
        this.zzb &= -17;
        this.zzi = 0.0d;
    }

    public final void U(zzhw zzhwVar) {
        zzaef zzaefVar = this.zzj;
        if (!zzaefVar.d0()) {
            this.zzj = z81.d(zzaefVar);
        }
        this.zzj.add(zzhwVar);
    }

    public final void V(ArrayList arrayList) {
        zzaef zzaefVar = this.zzj;
        if (!zzaefVar.d0()) {
            this.zzj = z81.d(zzaefVar);
        }
        zzacb.k(arrayList, this.zzj);
    }

    public final void W() {
        this.zzj = zzafm.f30452f;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzhw.class});
        }
        if (i3 == 3) {
            return new zzhw();
        }
        if (i3 == 4) {
            return new zzhv(zzk);
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
        synchronized (zzhw.class) {
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
