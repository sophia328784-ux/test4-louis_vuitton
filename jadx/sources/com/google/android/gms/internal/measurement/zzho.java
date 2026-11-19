package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzho extends zzadu implements zzafd {
    private static final zzho zze;
    private static volatile zzafj zzf;
    private zzaef zzb = zzafm.f30452f;

    static {
        zzho zzhoVar = new zzho();
        zze = zzhoVar;
        zzadu.v(zzho.class, zzhoVar);
    }

    public static zzhh B() {
        return (zzhh) zze.q();
    }

    public static zzho C() {
        return zze;
    }

    public final List A() {
        return this.zzb;
    }

    public final void D(ArrayList arrayList) {
        zzaef zzaefVar = this.zzb;
        if (!zzaefVar.d0()) {
            this.zzb = z81.d(zzaefVar);
        }
        zzacb.k(arrayList, this.zzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzhl.class});
        }
        if (i3 == 3) {
            return new zzho();
        }
        if (i3 == 4) {
            return new zzhh(zze);
        }
        if (i3 == 5) {
            return zze;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzf;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzho.class) {
            try {
                zzadqVar = zzf;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zze);
                    zzf = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
