package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzo extends zzjb<zzfi$zzo, zza> implements zzkm {
    private static final zzfi$zzo zzi;
    private static volatile zzkx<zzfi$zzo> zzj;
    private int zzc;
    private zzfi$zze zzd;
    private zzfi$zzk zze;
    private zzfi$zzi zzf;
    private int zzg;
    private boolean zzh;

    public static final class zza extends zzjb.zzb<zzfi$zzo, zza> implements zzkm {
    }

    static {
        zzfi$zzo zzfi_zzo = new zzfi$zzo();
        zzi = zzfi_zzo;
        zzjb.l(zzfi$zzo.class, zzfi_zzo);
    }

    public static void n(zzfi$zzo zzfi_zzo, zzfi$zzi zzfi_zzi) {
        zzfi_zzo.getClass();
        zzfi_zzo.zzf = zzfi_zzi;
        zzfi_zzo.zzc |= 4;
    }

    public static zza o() {
        return (zza) ((zzjb.zzb) zzi.j(5));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzo>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzo();
            case 2:
                return new zza(zzi);
            case 3:
                return new zzla(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004င\u0003\u0005ဇ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzi;
            case 5:
                zzkx<zzfi$zzo> zzkxVar = zzj;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzo.class) {
                    try {
                        zzkx<zzfi$zzo> zzkxVar2 = zzj;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzi);
                            zzj = zzaVar;
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
