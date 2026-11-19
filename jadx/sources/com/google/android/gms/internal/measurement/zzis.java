package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzis extends zzadu implements zzafd {
    private static final zzis zzh;
    private static volatile zzafj zzi;
    private int zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzis zzisVar = new zzis();
        zzh = zzisVar;
        zzadu.v(zzis.class, zzisVar);
    }

    public static zzil B() {
        return (zzil) zzh.q();
    }

    public static zzis C() {
        return zzh;
    }

    public final zzin A() {
        zzin zzinVarA = zzin.a(this.zzf);
        return zzinVarA == null ? zzin.CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN : zzinVarA;
    }

    public final /* synthetic */ void D(zzin zzinVar) {
        this.zzf = zzinVar.d0();
        this.zzb |= 2;
    }

    public final int E() {
        int i2;
        int i3 = this.zze;
        if (i3 != 0) {
            i2 = 2;
            if (i3 != 1) {
                if (i3 != 2) {
                    i2 = 4;
                    if (i3 != 3) {
                        i2 = i3 != 4 ? 0 : 5;
                    }
                } else {
                    i2 = 3;
                }
            }
        } else {
            i2 = 1;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0017 A[PHI: r2
      0x0017: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:7:0x0009, B:11:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    public final int F() {
        int i2;
        int i3 = this.zzg;
        if (i3 != 0) {
            i2 = 2;
            if (i3 != 1) {
                int i4 = 3;
                if (i3 != 2) {
                    i2 = 4;
                    if (i3 != 3) {
                        i4 = 5;
                        if (i3 != 4) {
                            i2 = i3 != 5 ? 0 : 6;
                        } else {
                            i2 = i4;
                        }
                    }
                } else {
                    i2 = i4;
                }
            }
        } else {
            i2 = 1;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final /* synthetic */ void G(int i2) {
        this.zze = i2 - 1;
        this.zzb |= 1;
    }

    public final /* synthetic */ void H(int i2) {
        this.zzg = i2 - 1;
        this.zzb |= 4;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zze", zziq.f30641a, "zzf", zzim.f30639a, "zzg", zzio.f30640a});
        }
        if (i3 == 3) {
            return new zzis();
        }
        if (i3 == 4) {
            return new zzil(zzh);
        }
        if (i3 == 5) {
            return zzh;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzi;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzis.class) {
            try {
                zzadqVar = zzi;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzh);
                    zzi = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
