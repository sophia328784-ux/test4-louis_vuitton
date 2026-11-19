package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhs extends zzadu implements zzafd {
    private static final zzhs zzm;
    private static volatile zzafj zzn;
    private int zzb;
    private zzaef zze = zzafm.f30452f;
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private long zzk;
    private long zzl;

    static {
        zzhs zzhsVar = new zzhs();
        zzm = zzhsVar;
        zzadu.v(zzhs.class, zzhsVar);
    }

    public static zzhr Q() {
        return (zzhr) zzm.q();
    }

    public final /* synthetic */ void A(long j2) {
        this.zzb |= 64;
        this.zzl = j2;
    }

    public final void B() {
        zzaef zzaefVar = this.zze;
        if (zzaefVar.d0()) {
            return;
        }
        this.zze = z81.d(zzaefVar);
    }

    public final List C() {
        return this.zze;
    }

    public final int D() {
        return this.zze.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzhw E(int i2) {
        return (zzhw) this.zze.get(i2);
    }

    public final String F() {
        return this.zzf;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final long H() {
        return this.zzg;
    }

    public final boolean I() {
        return (this.zzb & 4) != 0;
    }

    public final long J() {
        return this.zzh;
    }

    public final boolean K() {
        return (this.zzb & 8) != 0;
    }

    public final int L() {
        return this.zzi;
    }

    public final boolean M() {
        return (this.zzb & 32) != 0;
    }

    public final long N() {
        return this.zzk;
    }

    public final boolean O() {
        return (this.zzb & 64) != 0;
    }

    public final long P() {
        return this.zzl;
    }

    public final /* synthetic */ void R(int i2, zzhw zzhwVar) {
        B();
        this.zze.set(i2, zzhwVar);
    }

    public final /* synthetic */ void S(zzhw zzhwVar) {
        zzhwVar.getClass();
        B();
        this.zze.add(zzhwVar);
    }

    public final /* synthetic */ void T(Iterable iterable) {
        B();
        zzacb.k(iterable, this.zze);
    }

    public final void U() {
        this.zze = zzafm.f30452f;
    }

    public final /* synthetic */ void V(int i2) {
        B();
        this.zze.remove(i2);
    }

    public final /* synthetic */ void W(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzf = str;
    }

    public final /* synthetic */ void X(long j2) {
        this.zzb |= 2;
        this.zzg = j2;
    }

    public final /* synthetic */ void Y(long j2) {
        this.zzb |= 4;
        this.zzh = j2;
    }

    public final /* synthetic */ void Z(long j2) {
        this.zzb |= 16;
        this.zzj = j2;
    }

    public final /* synthetic */ void a0(long j2) {
        this.zzb |= 32;
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
            return new zzafn(zzm, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003\u0006ဂ\u0004\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zzb", "zze", zzhw.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i3 == 3) {
            return new zzhs();
        }
        if (i3 == 4) {
            return new zzhr(zzm);
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
        synchronized (zzhs.class) {
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
