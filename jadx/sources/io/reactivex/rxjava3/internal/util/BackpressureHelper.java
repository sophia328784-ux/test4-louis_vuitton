package io.reactivex.rxjava3.internal.util;

import defpackage.d21;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BackpressureHelper {
    public static void a(AtomicLong atomicLong, long j2) {
        long j3;
        long j4;
        do {
            j3 = atomicLong.get();
            if (j3 == Long.MAX_VALUE) {
                return;
            } else {
                j4 = j3 + j2;
            }
        } while (!atomicLong.compareAndSet(j3, j4 >= 0 ? j4 : Long.MAX_VALUE));
    }

    public static void b(AtomicLong atomicLong, long j2) {
        long j3;
        long j4;
        do {
            j3 = atomicLong.get();
            if (j3 == Long.MAX_VALUE) {
                return;
            }
            j4 = j3 - j2;
            if (j4 < 0) {
                RxJavaPlugins.b(new IllegalStateException(d21.g(j4, "More produced than requested: ")));
                j4 = 0;
            }
        } while (!atomicLong.compareAndSet(j3, j4));
    }
}
