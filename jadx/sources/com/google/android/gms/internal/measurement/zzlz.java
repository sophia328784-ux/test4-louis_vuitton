package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzlz {
    public static final void a(final Level level, Executor executor, final Exception exc, final String str, final Object... objArr) {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.measurement.zzly
            @Override // java.lang.Runnable
            public final void run() {
                zzxs zzxsVar = zzlx.f30739a;
                Level level2 = level;
                zzzf zzzfVar = zzxsVar.f31064a;
                boolean zB = zzzfVar.b(level2);
                zzaab.f30298a.c().a(zzzfVar.a(), level2, zB);
                ((zzxp) ((zzxp) (!zB ? zzxs.f31068b : new zzxq(zzxsVar, level2)).a(exc)).P()).b(str, objArr);
            }
        };
        int i2 = zzxa.f31062a;
        executor.execute(new zzwz(new Ref$ObjectRef(), zzvy.a(), runnable));
    }
}
