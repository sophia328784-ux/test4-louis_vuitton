package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzib extends zzadu implements zzafd {
    private static final zzib zzi;
    private static volatile zzafj zzj;
    private int zzb;
    private zzaef zze = zzafm.f30452f;
    private String zzf = "";
    private String zzg = "";
    private int zzh;

    static {
        zzib zzibVar = new zzib();
        zzi = zzibVar;
        zzadu.v(zzib.class, zzibVar);
    }

    public static zzhz H() {
        return (zzhz) zzi.q();
    }

    public static zzhz I(zzib zzibVar) {
        zzadp zzadpVarQ = zzi.q();
        zzadpVarQ.w(zzibVar);
        return (zzhz) zzadpVarQ;
    }

    public final List A() {
        return this.zze;
    }

    public final int B() {
        return this.zze.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzid C(int i2) {
        return (zzid) this.zze.get(i2);
    }

    public final boolean D() {
        return (this.zzb & 1) != 0;
    }

    public final String E() {
        return this.zzf;
    }

    public final boolean F() {
        return (this.zzb & 2) != 0;
    }

    public final String G() {
        return this.zzg;
    }

    public final /* synthetic */ void J(int i2, zzid zzidVar) {
        P();
        this.zze.set(i2, zzidVar);
    }

    public final /* synthetic */ void K(zzid zzidVar) {
        P();
        this.zze.add(zzidVar);
    }

    public final /* synthetic */ void L(ArrayList arrayList) {
        P();
        zzacb.k(arrayList, this.zze);
    }

    public final void M() {
        this.zze = zzafm.f30452f;
    }

    public final /* synthetic */ void N(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzf = str;
    }

    public final /* synthetic */ void O(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzg = str;
    }

    public final void P() {
        zzaef zzaefVar = this.zze;
        if (zzaefVar.d0()) {
            return;
        }
        this.zze = z81.d(zzaefVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzi, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zze", zzid.class, "zzf", "zzg", "zzh", zzia.f30637a});
        }
        if (i3 == 3) {
            return new zzib();
        }
        if (i3 == 4) {
            return new zzhz(zzi);
        }
        if (i3 == 5) {
            return zzi;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzj;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzib.class) {
            try {
                zzadqVar = zzj;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzi);
                    zzj = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
