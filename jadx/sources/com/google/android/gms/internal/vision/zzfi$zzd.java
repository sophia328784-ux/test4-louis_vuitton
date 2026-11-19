package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzd extends zzjb<zzfi$zzd, zza> implements zzkm {
    private static final zzfi$zzd zzd;
    private static volatile zzkx<zzfi$zzd> zze;
    private zzjl<zzfi$zzm> zzc = zzlb.f31262e;

    public static final class zza extends zzjb.zzb<zzfi$zzd, zza> implements zzkm {
    }

    static {
        zzfi$zzd zzfi_zzd = new zzfi$zzd();
        zzd = zzfi_zzd;
        zzjb.l(zzfi$zzd.class, zzfi_zzd);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzd>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzd();
            case 2:
                return new zza(zzd);
            case 3:
                return new zzla(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfi$zzm.class});
            case 4:
                return zzd;
            case 5:
                zzkx<zzfi$zzd> zzkxVar = zze;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzd.class) {
                    try {
                        zzkx<zzfi$zzd> zzkxVar2 = zze;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzd);
                            zze = zzaVar;
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
