package com.google.android.gms.internal.vision;

import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzb extends zzjb<zzfi$zzb, zza> implements zzkm {
    private static final zzji<Integer, zzgz> zzd = new zzfl();
    private static final zzfi$zzb zze;
    private static volatile zzkx<zzfi$zzb> zzf;
    private zzjj zzc = zzjb.m();

    public static final class zza extends zzjb.zzb<zzfi$zzb, zza> implements zzkm {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.zzji<java.lang.Integer, com.google.android.gms.internal.vision.zzgz>, java.lang.Object] */
    static {
        zzfi$zzb zzfi_zzb = new zzfi$zzb();
        zze = zzfi_zzb;
        zzjb.l(zzfi$zzb.class, zzfi_zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzb>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzb();
            case 2:
                return new zza(zze);
            case 3:
                return new zzla(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzc", zzhb.f31178a});
            case 4:
                return zze;
            case 5:
                zzkx<zzfi$zzb> zzkxVar = zzf;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzb.class) {
                    try {
                        zzkx<zzfi$zzb> zzkxVar2 = zzf;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zze);
                            zzf = zzaVar;
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
