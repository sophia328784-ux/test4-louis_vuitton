package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zza extends zzjb<zzfi$zza, zza> implements zzkm {
    private static final zzfi$zza zzf;
    private static volatile zzkx<zzfi$zza> zzg;
    private int zzc;
    private String zzd = "";
    private String zze = "";

    public static final class zza extends zzjb.zzb<zzfi$zza, zza> implements zzkm {
    }

    static {
        zzfi$zza zzfi_zza = new zzfi$zza();
        zzf = zzfi_zza;
        zzjb.l(zzfi$zza.class, zzfi_zza);
    }

    public static void n(zzfi$zza zzfi_zza, String str) {
        zzfi_zza.getClass();
        str.getClass();
        zzfi_zza.zzc |= 1;
        zzfi_zza.zzd = str;
    }

    public static zza o() {
        return (zza) ((zzjb.zzb) zzf.j(5));
    }

    public static void q(zzfi$zza zzfi_zza, String str) {
        zzfi_zza.getClass();
        zzfi_zza.zzc |= 2;
        zzfi_zza.zze = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zza>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zza();
            case 2:
                return new zza(zzf);
            case 3:
                return new zzla(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx<zzfi$zza> zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zza.class) {
                    try {
                        zzkx<zzfi$zza> zzkxVar2 = zzg;
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
