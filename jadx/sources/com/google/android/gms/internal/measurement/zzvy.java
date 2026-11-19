package com.google.android.gms.internal.measurement;

import android.os.Trace;
import com.google.common.collect.ImmutableSet;
import java.util.ArrayDeque;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzvy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReference f31026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f31027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzvx f31028c;

    static {
        ImmutableSet.r(5, "androidx.fragment.app.FragmentViewLifecycleOwner.handleLifecycleEvent", "com.google.android.libraries.logging.logger.transmitters.clearcut", "com.google.android.libraries.performance.primes.transmitter.clearcut", "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl", "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl");
        f31026a = new AtomicReference(ImmutableSet.v());
        new zzrg("tiktok_systrace");
        f31027b = new WeakHashMap();
        f31028c = new zzvx();
        new ArrayDeque();
        new ArrayDeque();
    }

    public static zzws a() {
        zzwq zzwqVarC = c();
        zzws zzwsVar = zzwqVarC.f31057b;
        if (zzwsVar != null && zzwsVar != zzwg.f31036h) {
            return zzwsVar;
        }
        zzvr zzvrVar = zzwd.f31033h;
        UUID uuidB = zzvz.f31029c.b();
        String strC = zzvn.c(uuidB);
        ImmutableSet immutableSet = (ImmutableSet) f31026a.get();
        if (!immutableSet.isEmpty()) {
            immutableSet.forEach(new zzwc());
        }
        return new zzwd(uuidB, strC, zzwd.f31033h, zzwqVarC);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0047  */
    public static zzws b(zzwq zzwqVar, zzws zzwsVar) {
        zzwqVar.getClass();
        zzws zzwsVar2 = zzwqVar.f31057b;
        if (zzwsVar2 != zzwsVar) {
            if (zzwsVar2 == null) {
                zzwqVar.f31056a = Trace.isEnabled();
            }
            if (zzwqVar.f31056a) {
                if (zzwsVar2 != null) {
                    if (zzwsVar != null) {
                        if (zzwsVar2.e0() == zzwsVar && zzwsVar2.d0() == Thread.currentThread()) {
                            Trace.endSection();
                        } else if (zzwsVar2 == zzwsVar.e0() && zzwsVar.d0() == Thread.currentThread()) {
                            zzwr.c(zzwsVar);
                        }
                    }
                    zzwr.b(zzwsVar2);
                    if (zzwsVar != null) {
                        zzwr.a(zzwsVar);
                    }
                } else if (zzwsVar != null) {
                    zzwr.a(zzwsVar);
                }
            }
            if (zzwsVar2 != zzwsVar) {
                zzwqVar.f31057b = zzwsVar;
                return zzwsVar2;
            }
        }
        return zzwsVar;
    }

    public static zzwq c() {
        return (zzwq) f31028c.get();
    }
}
