package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zznr extends zzadu implements zzafd {
    private static final zznr zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private zzaef zze = zzafm.f30452f;
    private String zzf = "";

    static {
        zznr zznrVar = new zznr();
        zzg = zznrVar;
        zzadu.v(zznr.class, zznrVar);
    }

    public static zznr B() {
        return zzg;
    }

    public final List A() {
        return this.zze;
    }

    public final void C(String str) {
        zzaef zzaefVar = this.zze;
        if (!zzaefVar.d0()) {
            this.zze = z81.d(zzaefVar);
        }
        this.zze.add("");
    }

    public final /* synthetic */ void D(String str) {
        this.zzb |= 1;
        this.zzf = "";
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဈ\u0000", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i3 == 3) {
            return new zznr();
        }
        if (i3 == 4) {
            return new zznq(zzg);
        }
        if (i3 == 5) {
            return zzg;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzh;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zznr.class) {
            try {
                zzadqVar = zzh;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzg);
                    zzh = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
