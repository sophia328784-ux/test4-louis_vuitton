package com.google.android.gms.internal.vision;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi$zze extends zzjb<zzfi$zze, zza> implements zzkm {
    private static final zzfi$zze zzl;
    private static volatile zzkx<zzfi$zze> zzm;
    private int zzc;
    private boolean zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private boolean zzk;
    private String zzd = "";
    private String zzj = "";

    public static final class zza extends zzjb.zzb<zzfi$zze, zza> implements zzkm {
    }

    public enum zzb implements zzje {
        REASON_UNKNOWN(0),
        REASON_MISSING(1),
        REASON_UPGRADE(2),
        REASON_INVALID(3);

        private static final zzjh<zzb> zze = new zzfm();
        private final int zzf;

        zzb(int i2) {
            this.zzf = i2;
        }

        public static zzb a(int i2) {
            if (i2 == 0) {
                return REASON_UNKNOWN;
            }
            if (i2 == 1) {
                return REASON_MISSING;
            }
            if (i2 == 2) {
                return REASON_UPGRADE;
            }
            if (i2 != 3) {
                return null;
            }
            return REASON_INVALID;
        }

        @Override // com.google.android.gms.internal.vision.zzje
        public final int d0() {
            return this.zzf;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzb.class.getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
        }
    }

    static {
        zzfi$zze zzfi_zze = new zzfi$zze();
        zzl = zzfi_zze;
        zzjb.l(zzfi$zze.class, zzfi_zze);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zze>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object j(int i2) {
        Object obj;
        switch (zzfk.f31167a[i2 - 1]) {
            case 1:
                return new zzfi$zze();
            case 2:
                return new zza(zzl);
            case 3:
                return new zzla(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဌ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဈ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", zzfn.f31168a, "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzl;
            case 5:
                zzkx<zzfi$zze> zzkxVar = zzm;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zze.class) {
                    try {
                        zzkx<zzfi$zze> zzkxVar2 = zzm;
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
