package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzacd implements zzafj {
    static {
        zzadf zzadfVar = zzadf.f30397b;
        int i2 = zzacf.f30358a;
    }

    @Override // com.google.android.gms.internal.measurement.zzafj
    public final zzadu a(InputStream inputStream, zzadf zzadfVar) throws zzaeh {
        zzacv zzacvVarH = zzacv.h(inputStream, 4096);
        int i2 = zzadu.zzd;
        zzadu zzaduVarO = ((zzadq) this).f30407a.o();
        try {
            zzafp zzafpVarA = zzafl.f30448c.a(zzaduVarO.getClass());
            Object obj = zzacvVarH.f30381c;
            zzafpVarA.i(zzaduVarO, obj != null ? (zzacw) obj : new zzacw(zzacvVarH), zzadfVar);
            zzafpVarA.g(zzaduVarO);
            zzacvVarH.m(0);
            if (zzadu.x(zzaduVarO, true)) {
                return zzaduVarO;
            }
            throw new zzafy(zzaduVarO).a();
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
}
