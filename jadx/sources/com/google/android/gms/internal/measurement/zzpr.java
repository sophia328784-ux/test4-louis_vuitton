package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpr extends zzadu implements zzafd {
    private static final zzpr zzl;
    private static volatile zzafj zzm;
    private int zzb;
    private boolean zzf;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = "";
    private zzaef zzg = zzafm.f30452f;

    static {
        zzpr zzprVar = new zzpr();
        zzl = zzprVar;
        zzadu.v(zzpr.class, zzprVar);
    }

    public static zzpr C(InputStream inputStream, zzadf zzadfVar) throws zzaeh {
        zzpr zzprVar = zzl;
        zzacv zzacvVarH = zzacv.h(inputStream, 4096);
        zzadu zzaduVarO = zzprVar.o();
        try {
            zzafp zzafpVarA = zzafl.f30448c.a(zzaduVarO.getClass());
            Object obj = zzacvVarH.f30381c;
            zzafpVarA.i(zzaduVarO, obj != null ? (zzacw) obj : new zzacw(zzacvVarH), zzadfVar);
            zzafpVarA.g(zzaduVarO);
            zzadu.y(zzaduVarO);
            return (zzpr) zzaduVarO;
        } catch (zzaeh e2) {
            if (e2.f30416b) {
                throw new zzaeh(e2);
            }
            throw e2;
        } catch (zzafy e3) {
            throw e3.a();
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzaeh) {
                throw ((zzaeh) e4.getCause());
            }
            throw new zzaeh(e4);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzaeh) {
                throw ((zzaeh) e5.getCause());
            }
            throw e5;
        }
    }

    public final String A() {
        return this.zze;
    }

    public final boolean B() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzl, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003\u001a\u0004᠌\u0002\u0005ဇ\u0003\u0006ဇ\u0005\u0007ဇ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", zzaby.f30354a, "zzi", "zzk", "zzj"});
        }
        if (i3 == 3) {
            return new zzpr();
        }
        if (i3 == 4) {
            return new zzpq(zzl);
        }
        if (i3 == 5) {
            return zzl;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzm;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzpr.class) {
            try {
                zzadqVar = zzm;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzl);
                    zzm = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
