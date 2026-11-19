package com.google.android.gms.internal.clearcut;

import defpackage.x1;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgw$zza extends zzcg<zzgw$zza, zza> implements zzdq {
    private static volatile zzdz<zzgw$zza> zzbg;
    private static final zzgw$zza zzbir;
    private zzcn<zzb> zzbiq = zzeb.d;

    public static final class zza extends zzcg.zza<zzgw$zza, zza> implements zzdq {
    }

    public static final class zzb extends zzcg<zzb, zza> implements zzdq {
        private static volatile zzdz<zzb> zzbg;
        private static final zzb zzbiv;
        private int zzbb;
        private String zzbis = "";
        private long zzbit;
        private long zzbiu;
        private int zzya;

        public static final class zza extends zzcg.zza<zzb, zza> implements zzdq {
        }

        static {
            zzb zzbVar = new zzb();
            zzbiv = zzbVar;
            zzcg.g(zzb.class, zzbVar);
        }

        public static void j(zzb zzbVar, long j2) {
            zzbVar.zzbb |= 4;
            zzbVar.zzbit = j2;
        }

        public static void k(zzb zzbVar, String str) {
            zzbVar.getClass();
            zzbVar.zzbb |= 2;
            zzbVar.zzbis = str;
        }

        public static void l(zzb zzbVar, long j2) {
            zzbVar.zzbb |= 8;
            zzbVar.zzbiu = j2;
        }

        public static zza r() {
            return (zza) ((zzcg.zza) zzbiv.e(5));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v12, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb>] */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        public final Object e(int i2) {
            Object obj;
            switch (zzgx.f29759a[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbiv);
                case 3:
                    return new zzec(zzbiv, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003", new Object[]{"zzbb", "zzya", "zzbis", "zzbit", "zzbiu"});
                case 4:
                    return zzbiv;
                case 5:
                    zzdz<zzb> zzdzVar = zzbg;
                    if (zzdzVar != null) {
                        return zzdzVar;
                    }
                    synchronized (zzb.class) {
                        try {
                            zzdz<zzb> zzdzVar2 = zzbg;
                            obj = zzdzVar2;
                            if (zzdzVar2 == null) {
                                ?? zzbVar = new zzcg.zzb(zzbiv);
                                zzbg = zzbVar;
                                obj = zzbVar;
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

        public final int i() {
            return this.zzya;
        }

        public final boolean n() {
            return (this.zzbb & 1) == 1;
        }

        public final String o() {
            return this.zzbis;
        }

        public final long p() {
            return this.zzbit;
        }

        public final long q() {
            return this.zzbiu;
        }
    }

    static {
        zzgw$zza zzgw_zza = new zzgw$zza();
        zzbir = zzgw_zza;
        zzcg.g(zzgw$zza.class, zzgw_zza);
    }

    public static zzgw$zza j() {
        return zzbir;
    }

    public static zzgw$zza l(byte[] bArr) throws zzco {
        zzcg zzcgVar = (zzcg) zzbir.e(4);
        try {
            zzea zzeaVar = zzea.f29704c;
            zzeaVar.getClass();
            zzeaVar.a(zzcgVar.getClass()).g(zzcgVar, bArr, 0, bArr.length, new zzay());
            zzeaVar.a(zzcgVar.getClass()).a(zzcgVar);
            if (zzcgVar.zzex != 0) {
                throw new RuntimeException();
            }
            boolean zE = true;
            byte bByteValue = ((Byte) zzcgVar.e(1)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zE = false;
                } else {
                    zE = zzeaVar.a(zzcgVar.getClass()).e(zzcgVar);
                    zzcgVar.e(2);
                }
            }
            if (zE) {
                return (zzgw$zza) zzcgVar;
            }
            throw new zzco(new zzew(zzcgVar).getMessage());
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzco) {
                throw ((zzco) e2.getCause());
            }
            throw new zzco(e2.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw zzco.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza>] */
    @Override // com.google.android.gms.internal.clearcut.zzcg
    public final Object e(int i2) {
        Object obj;
        switch (zzgx.f29759a[i2 - 1]) {
            case 1:
                return new zzgw$zza();
            case 2:
                return new zza(zzbir);
            case 3:
                return new zzec(zzbir, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzbiq", zzb.class});
            case 4:
                return zzbir;
            case 5:
                zzdz<zzgw$zza> zzdzVar = zzbg;
                if (zzdzVar != null) {
                    return zzdzVar;
                }
                synchronized (zzgw$zza.class) {
                    try {
                        zzdz<zzgw$zza> zzdzVar2 = zzbg;
                        obj = zzdzVar2;
                        if (zzdzVar2 == null) {
                            ?? zzbVar = new zzcg.zzb(zzbir);
                            zzbg = zzbVar;
                            obj = zzbVar;
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

    public final zzcn i() {
        return this.zzbiq;
    }
}
