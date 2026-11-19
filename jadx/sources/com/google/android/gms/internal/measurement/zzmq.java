package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmq extends zzadu implements zzafd {
    private static final zzmq zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private long zzh;
    private zzaew zzi = zzaew.f30430c;
    private String zze = "";
    private zzacr zzf = zzacr.f30367c;
    private String zzg = "";

    static {
        zzmq zzmqVar = new zzmq();
        zzj = zzmqVar;
        zzadu.v(zzmq.class, zzmqVar);
    }

    public static zzmq G(zzacv zzacvVar, zzadf zzadfVar) throws zzaeh {
        zzadu zzaduVarO = zzj.o();
        try {
            zzafp zzafpVarA = zzafl.f30448c.a(zzaduVarO.getClass());
            Object obj = zzacvVar.f30381c;
            zzafpVarA.i(zzaduVarO, obj != null ? (zzacw) obj : new zzacw(zzacvVar), zzadfVar);
            zzafpVarA.g(zzaduVarO);
            zzadu.y(zzaduVarO);
            return (zzmq) zzaduVarO;
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

    public static zzmq H() {
        return zzj;
    }

    public final String A() {
        return this.zze;
    }

    public final zzacr B() {
        return this.zzf;
    }

    public final String C() {
        return this.zzg;
    }

    public final long D() {
        return this.zzh;
    }

    public final int E() {
        return this.zzi.size();
    }

    public final Map F() {
        return Collections.unmodifiableMap(this.zzi);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u00052", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", zzmp.f30744a});
        }
        if (i3 == 3) {
            return new zzmq();
        }
        if (i3 == 4) {
            return new zzmo(zzj);
        }
        if (i3 == 5) {
            return zzj;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzk;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzmq.class) {
            try {
                zzadqVar = zzk;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzj);
                    zzk = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
