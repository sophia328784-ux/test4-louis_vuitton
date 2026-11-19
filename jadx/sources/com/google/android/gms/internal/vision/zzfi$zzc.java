package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzc extends zzjb<zzfi$zzc, zza> implements zzkm {
    private static final zzfi$zzc zzg;
    private static volatile zzkx<zzfi$zzc> zzh;
    private int zzc;
    private int zzd;
    private int zze;
    private String zzf = "";

    public static final class zza extends zzjb.zzb<zzfi$zzc, zza> implements zzkm {
    }

    static {
        zzfi$zzc zzfi_zzc = new zzfi$zzc();
        zzg = zzfi_zzc;
        zzjb.l(zzfi$zzc.class, zzfi_zzc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzc>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzc();
            case 2:
                return new zza(zzg);
            case 3:
                return new zzla(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002", new Object[]{"zzc", "zzd", zzhb.f31178a, "zze", zzhc.f31179a, "zzf"});
            case 4:
                return zzg;
            case 5:
                zzkx<zzfi$zzc> zzkxVar = zzh;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzc.class) {
                    try {
                        zzkx<zzfi$zzc> zzkxVar2 = zzh;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzg);
                            zzh = zzaVar;
                            obj = zzaVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return obj;
            case 6:
                return (byte) 1;
            default:
                x1.i();
            case 7:
                return null;
        }
    }
}
