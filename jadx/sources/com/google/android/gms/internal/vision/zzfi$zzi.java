package com.google.android.gms.internal.vision;

import defpackage.x1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzi extends zzjb<zzfi$zzi, zza> implements zzkm {
    private static final zzfi$zzi zzg;
    private static volatile zzkx<zzfi$zzi> zzh;
    private int zzc;
    private zzfi$zzj zzd;
    private zzfi$zzl zze;
    private zzjl<zzfi$zzf> zzf = zzlb.f31262e;

    public static final class zza extends zzjb.zzb<zzfi$zzi, zza> implements zzkm {
    }

    static {
        zzfi$zzi zzfi_zzi = new zzfi$zzi();
        zzg = zzfi_zzi;
        zzjb.l(zzfi$zzi.class, zzfi_zzi);
    }

    public static void n(zzfi$zzi zzfi_zzi, zzfi$zzj zzfi_zzj) {
        zzfi_zzi.getClass();
        zzfi_zzi.zzd = zzfi_zzj;
        zzfi_zzi.zzc |= 1;
    }

    public static void o(zzfi$zzi zzfi_zzi, ArrayList arrayList) {
        zzjl<zzfi$zzf> zzjlVar = zzfi_zzi.zzf;
        if (!zzjlVar.d0()) {
            int size = zzjlVar.size();
            zzfi_zzi.zzf = zzjlVar.e(size == 0 ? 10 : size << 1);
        }
        zzhf.e(arrayList, zzfi_zzi.zzf);
    }

    public static zza p() {
        return (zza) ((zzjb.zzb) zzg.j(5));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzi>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzi();
            case 2:
                return new zza(zzg);
            case 3:
                return new zzla(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", zzfi$zzf.class});
            case 4:
                return zzg;
            case 5:
                zzkx<zzfi$zzi> zzkxVar = zzh;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzi.class) {
                    try {
                        zzkx<zzfi$zzi> zzkxVar2 = zzh;
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
