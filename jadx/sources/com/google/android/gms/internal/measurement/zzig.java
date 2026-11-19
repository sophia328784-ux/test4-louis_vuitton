package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzig extends zzadu implements zzafd {
    private static final zzig zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private int zze = 1;
    private zzaef zzf = zzafm.f30452f;

    static {
        zzig zzigVar = new zzig();
        zzg = zzigVar;
        zzadu.v(zzig.class, zzigVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzb", "zze", zzif.f30638a, "zzf", zzhu.class});
        }
        if (i3 == 3) {
            return new zzig();
        }
        if (i3 == 4) {
            return new zzie(zzg);
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
        synchronized (zzig.class) {
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
