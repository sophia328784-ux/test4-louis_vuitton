package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzff extends zzadu implements zzafd {
    private static final zzff zzm;
    private static volatile zzafj zzn;
    private int zzb;
    private int zze;
    private String zzf = "";
    private zzaef zzg = zzafm.f30452f;
    private boolean zzh;
    private zzfl zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        zzff zzffVar = new zzff();
        zzm = zzffVar;
        zzadu.v(zzff.class, zzffVar);
    }

    public static zzfe M() {
        return (zzfe) zzm.q();
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

    public final List D() {
        return this.zzg;
    }

    public final int E() {
        return this.zzg.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfh F(int i2) {
        return (zzfh) this.zzg.get(i2);
    }

    public final boolean G() {
        return (this.zzb & 8) != 0;
    }

    public final zzfl H() {
        zzfl zzflVar = this.zzi;
        return zzflVar == null ? zzfl.J() : zzflVar;
    }

    public final boolean I() {
        return this.zzj;
    }

    public final boolean J() {
        return this.zzk;
    }

    public final boolean K() {
        return (this.zzb & 64) != 0;
    }

    public final boolean L() {
        return this.zzl;
    }

    public final /* synthetic */ void N(String str) {
        this.zzb |= 2;
        this.zzf = str;
    }

    public final void O(int i2, zzfh zzfhVar) {
        zzaef zzaefVar = this.zzg;
        if (!zzaefVar.d0()) {
            this.zzg = z81.d(zzaefVar);
        }
        this.zzg.set(i2, zzfhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzm, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", zzfh.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i3 == 3) {
            return new zzff();
        }
        if (i3 == 4) {
            return new zzfe(zzm);
        }
        if (i3 == 5) {
            return zzm;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzn;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzff.class) {
            try {
                zzadqVar = zzn;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzm);
                    zzn = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
