package com.google.android.gms.internal.vision;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zzg extends zzjb<zzfi$zzg, zza> implements zzkm {
    private static final zzfi$zzg zzj;
    private static volatile zzkx<zzfi$zzg> zzk;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private float zzi;

    public static final class zza extends zzjb.zzb<zzfi$zzg, zza> implements zzkm {
    }

    public enum zzb implements zzje {
        CLASSIFICATION_UNKNOWN(0),
        CLASSIFICATION_NONE(1),
        CLASSIFICATION_ALL(2);

        private static final zzjh<zzb> zzd = new zzfq();
        private final int zze;

        zzb(int i2) {
            this.zze = i2;
        }

        public static zzb a(int i2) {
            if (i2 == 0) {
                return CLASSIFICATION_UNKNOWN;
            }
            if (i2 == 1) {
                return CLASSIFICATION_NONE;
            }
            if (i2 != 2) {
                return null;
            }
            return CLASSIFICATION_ALL;
        }

        @Override // com.google.android.gms.internal.vision.zzje
        public final int d0() {
            return this.zze;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzb.class.getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
        }
    }

    public enum zzc implements zzje {
        LANDMARK_UNKNOWN(0),
        LANDMARK_NONE(1),
        LANDMARK_ALL(2),
        LANDMARK_CONTOUR(3);

        private static final zzjh<zzc> zze = new zzft();
        private final int zzf;

        zzc(int i2) {
            this.zzf = i2;
        }

        public static zzc a(int i2) {
            if (i2 == 0) {
                return LANDMARK_UNKNOWN;
            }
            if (i2 == 1) {
                return LANDMARK_NONE;
            }
            if (i2 == 2) {
                return LANDMARK_ALL;
            }
            if (i2 != 3) {
                return null;
            }
            return LANDMARK_CONTOUR;
        }

        @Override // com.google.android.gms.internal.vision.zzje
        public final int d0() {
            return this.zzf;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzc.class.getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
        }
    }

    public enum zzd implements zzje {
        MODE_UNKNOWN(0),
        MODE_ACCURATE(1),
        MODE_FAST(2),
        MODE_SELFIE(3);

        private static final zzjh<zzd> zze = new zzfu();
        private final int zzf;

        zzd(int i2) {
            this.zzf = i2;
        }

        public static zzd a(int i2) {
            if (i2 == 0) {
                return MODE_UNKNOWN;
            }
            if (i2 == 1) {
                return MODE_ACCURATE;
            }
            if (i2 == 2) {
                return MODE_FAST;
            }
            if (i2 != 3) {
                return null;
            }
            return MODE_SELFIE;
        }

        @Override // com.google.android.gms.internal.vision.zzje
        public final int d0() {
            return this.zzf;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzd.class.getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
        }
    }

    static {
        zzfi$zzg zzfi_zzg = new zzfi$zzg();
        zzj = zzfi_zzg;
        zzjb.l(zzfi$zzg.class, zzfi_zzg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzg>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zzg();
            case 2:
                return new zza(zzj);
            case 3:
                return new zzla(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", zzfv.f31172a, "zze", zzfs.f31171a, "zzf", zzfr.f31170a, "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                zzkx<zzfi$zzg> zzkxVar = zzk;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzg.class) {
                    try {
                        zzkx<zzfi$zzg> zzkxVar2 = zzk;
                        obj = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzj);
                            zzk = zzaVar;
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
