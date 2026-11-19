package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzm extends zzjb<zzfi$zzm, zza> implements zzkm {
    private static final zzfi$zzm zzf;
    private static volatile zzkx<zzfi$zzm> zzg;
    private int zzc;
    private int zzd;
    private int zze;

    public static final class zza extends zzjb.zzb<zzfi$zzm, zza> implements zzkm {
    }

    static {
        zzfi$zzm zzfi_zzm = new zzfi$zzm();
        zzf = zzfi_zzm;
        zzjb.l(zzfi$zzm.class, zzfi_zzm);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzm>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzm();
            case 2:
                return new zza(zzf);
            case 3:
                return new zzla(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx<zzfi$zzm> zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzm.class) {
                    try {
                        zzkx<zzfi$zzm> zzkxVar2 = zzg;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzf);
                            zzg = zzaVar;
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
