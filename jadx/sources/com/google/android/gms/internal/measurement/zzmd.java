package com.google.android.gms.internal.measurement;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmd extends zzadu implements zzafd {
    private static final zzmd zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        zzmd zzmdVar = new zzmd();
        zzg = zzmdVar;
        zzadu.v(zzmd.class, zzmdVar);
    }

    public static zzmc A() {
        return (zzmc) zzg.q();
    }

    public final /* synthetic */ void B(int i2) {
        this.zze = i2 - 2;
        this.zzb |= 1;
    }

    public final /* synthetic */ void C(int i2) {
        if (i2 == 1) {
            md.n("Can't get the number of an unknown enum value.");
        } else {
            this.zzf = i2 - 2;
            this.zzb |= 2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i3 == 3) {
            return new zzmd();
        }
        if (i3 == 4) {
            return new zzmc(zzg);
        }
        if (i3 == 5) {
            return zzg;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzh;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzmd.class) {
            try {
                zzadqVar = zzh;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzg);
                    zzh = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
