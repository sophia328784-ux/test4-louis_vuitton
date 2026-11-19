package com.google.android.gms.internal.vision;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzj extends zzjb<zzfi$zzj, zzb> implements zzkm {
    private static final zzfi$zzj zzi;
    private static volatile zzkx<zzfi$zzj> zzj;
    private int zzc;
    private int zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;

    public enum zza implements zzje {
        FORMAT_UNKNOWN(0),
        FORMAT_LUMINANCE(1),
        FORMAT_RGB8(2),
        FORMAT_MONOCHROME(3);

        private static final zzjh<zza> zze = new zzfx();
        private final int zzf;

        zza(int i2) {
            this.zzf = i2;
        }

        public static zza a(int i2) {
            if (i2 == 0) {
                return FORMAT_UNKNOWN;
            }
            if (i2 == 1) {
                return FORMAT_LUMINANCE;
            }
            if (i2 == 2) {
                return FORMAT_RGB8;
            }
            if (i2 != 3) {
                return null;
            }
            return FORMAT_MONOCHROME;
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

    public static final class zzb extends zzjb.zzb<zzfi$zzj, zzb> implements zzkm {
    }

    static {
        zzfi$zzj zzfi_zzj = new zzfi$zzj();
        zzi = zzfi_zzj;
        zzjb.l(zzfi$zzj.class, zzfi_zzj);
    }

    public static void n(zzfi$zzj zzfi_zzj, long j2) {
        zzfi_zzj.zzc |= 2;
        zzfi_zzj.zze = j2;
    }

    public static zzb o() {
        return (zzb) ((zzjb.zzb) zzi.j(5));
    }

    public static void q(zzfi$zzj zzfi_zzj, long j2) {
        zzfi_zzj.zzc |= 4;
        zzfi_zzj.zzf = j2;
    }

    public static void r(zzfi$zzj zzfi_zzj, long j2) {
        zzfi_zzj.zzc |= 8;
        zzfi_zzj.zzg = j2;
    }

    public static void s(zzfi$zzj zzfi_zzj, long j2) {
        zzfi_zzj.zzc |= 16;
        zzfi_zzj.zzh = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzj>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzj();
            case 2:
                return new zzb(zzi);
            case 3:
                return new zzla(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0004\u0005ဂ\u0003", new Object[]{"zzc", "zzd", zzfw.f31173a, "zze", "zzf", "zzh", "zzg"});
            case 4:
                return zzi;
            case 5:
                zzkx<zzfi$zzj> zzkxVar = zzj;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzj.class) {
                    try {
                        zzkx<zzfi$zzj> zzkxVar2 = zzj;
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
