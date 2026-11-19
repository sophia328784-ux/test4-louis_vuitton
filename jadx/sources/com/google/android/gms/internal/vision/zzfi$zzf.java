package com.google.android.gms.internal.vision;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.x1;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzf extends zzjb<zzfi$zzf, zzb> implements zzkm {
    private static final zzfi$zzf zzl;
    private static volatile zzkx<zzfi$zzf> zzm;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private zzjl<String> zzf;
    private int zzg;
    private String zzh;
    private long zzi;
    private long zzj;
    private zzjl<zzfi$zzn> zzk;

    public enum zza implements zzje {
        RESULT_UNKNOWN(0),
        RESULT_SUCCESS(1),
        RESULT_FAIL(2),
        RESULT_SKIPPED(3);

        private static final zzjh<zza> zze = new zzfp();
        private final int zzf;

        zza(int i2) {
            this.zzf = i2;
        }

        public static zza a(int i2) {
            if (i2 == 0) {
                return RESULT_UNKNOWN;
            }
            if (i2 == 1) {
                return RESULT_SUCCESS;
            }
            if (i2 == 2) {
                return RESULT_FAIL;
            }
            if (i2 != 3) {
                return null;
            }
            return RESULT_SKIPPED;
        }

        @Override // com.google.android.gms.internal.vision.zzje
        public final int d0() {
            return this.zzf;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zza.class.getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
        }
    }

    public static final class zzb extends zzjb.zzb<zzfi$zzf, zzb> implements zzkm {
    }

    static {
        zzfi$zzf zzfi_zzf = new zzfi$zzf();
        zzl = zzfi_zzf;
        zzjb.l(zzfi$zzf.class, zzfi_zzf);
    }

    public zzfi$zzf() {
        zzlb zzlbVar = zzlb.f31262e;
        this.zzf = zzlbVar;
        this.zzh = "";
        this.zzk = zzlbVar;
    }

    public static void n(zzfi$zzf zzfi_zzf, long j2) {
        zzfi_zzf.zzc |= 16;
        zzfi_zzf.zzi = j2;
    }

    public static void o(zzfi$zzf zzfi_zzf, String str) {
        zzfi_zzf.getClass();
        str.getClass();
        zzfi_zzf.zzc |= 1;
        zzfi_zzf.zzd = str;
    }

    public static void p(zzfi$zzf zzfi_zzf, List list) {
        zzjl<zzfi$zzn> zzjlVar = zzfi_zzf.zzk;
        if (!zzjlVar.d0()) {
            int size = zzjlVar.size();
            zzfi_zzf.zzk = zzjlVar.e(size == 0 ? 10 : size << 1);
        }
        zzhf.e(list, zzfi_zzf.zzk);
    }

    public static zzb q() {
        return (zzb) ((zzjb.zzb) zzl.j(5));
    }

    public static void s(zzfi$zzf zzfi_zzf, long j2) {
        zzfi_zzf.zzc |= 32;
        zzfi_zzf.zzj = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzf>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzf();
            case 2:
                return new zzb(zzl);
            case 3:
                return new zzla(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0002\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003\u001a\u0004ဌ\u0002\u0005ဈ\u0003\u0006ဂ\u0004\u0007ဂ\u0005\b\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzfo.f31169a, "zzh", "zzi", "zzj", "zzk", zzfi$zzn.class});
            case 4:
                return zzl;
            case 5:
                zzkx<zzfi$zzf> zzkxVar = zzm;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzf.class) {
                    try {
                        zzkx<zzfi$zzf> zzkxVar2 = zzm;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzl);
                            zzm = zzaVar;
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
