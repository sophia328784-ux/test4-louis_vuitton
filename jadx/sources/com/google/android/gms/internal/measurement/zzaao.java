package com.google.android.gms.internal.measurement;

import android.os.Build;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
final class zzaao extends zzaag {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f30309c;
    public static final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f30310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicReference f30311f;
    public static final AtomicLong g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f30312h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile zzzf f30313b;

    static {
        String str = Build.FINGERPRINT;
        f30309c = str == null || "robolectric".equals(str);
        String str2 = Build.HARDWARE;
        d = "goldfish".equals(str2) || "ranchu".equals(str2);
        String str3 = Build.TYPE;
        f30310e = "eng".equals(str3) || "userdebug".equals(str3);
        f30311f = new AtomicReference();
        g = new AtomicLong();
        f30312h = new ConcurrentLinkedQueue();
    }

    public static void e() {
        while (true) {
            zzaan zzaanVar = (zzaan) f30312h.poll();
            if (zzaanVar == null) {
                return;
            }
            g.getAndDecrement();
            zzzf zzzfVar = zzaanVar.f30307a;
            zzxz zzxzVar = zzaanVar.f30308b;
            zzxy zzxyVar = zzxzVar.f31081c;
            if ((zzxyVar != null && Boolean.TRUE.equals(zzxyVar.d(zzxx.g))) || zzzfVar.b(zzxzVar.f31079a)) {
                zzzfVar.c(zzxzVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean b(Level level) {
        return this.f30313b == null || this.f30313b.b(level);
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void c(zzxz zzxzVar) {
        if (this.f30313b != null) {
            this.f30313b.c(zzxzVar);
            return;
        }
        if (g.incrementAndGet() > 20) {
            f30312h.poll();
        }
        f30312h.offer(new zzaan(this, zzxzVar));
        if (this.f30313b != null) {
            e();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaag, com.google.android.gms.internal.measurement.zzzf
    public final void d(RuntimeException runtimeException, zzxz zzxzVar) {
        if (this.f30313b != null) {
            this.f30313b.d(runtimeException, zzxzVar);
        }
    }
}
