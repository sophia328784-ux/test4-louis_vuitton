package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzl extends zzjb<zzfi$zzl, zza> implements zzkm {
    private static final zzfi$zzl zzf;
    private static volatile zzkx<zzfi$zzl> zzg;
    private int zzc;
    private long zzd;
    private long zze;

    public static final class zza extends zzjb.zzb<zzfi$zzl, zza> implements zzkm {
    }

    static {
        zzfi$zzl zzfi_zzl = new zzfi$zzl();
        zzf = zzfi_zzl;
        zzjb.l(zzfi$zzl.class, zzfi_zzl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzl>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzl();
            case 2:
                return new zza(zzf);
            case 3:
                return new zzla(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx<zzfi$zzl> zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzl.class) {
                    try {
                        zzkx<zzfi$zzl> zzkxVar2 = zzg;
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
