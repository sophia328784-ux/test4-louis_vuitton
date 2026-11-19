package com.google.android.gms.internal.gtm;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile zzas f30048a;

    public static ExecutorService a(Context context) {
        if (f30048a == null) {
            synchronized (zzdb.class) {
                try {
                    if (f30048a == null) {
                        f30048a = new zzas(context, 1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new zzda());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f30048a;
    }
}
