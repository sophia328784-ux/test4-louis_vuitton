package com.google.android.gms.internal.measurement;

import android.os.StrictMode;
import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
final class zzvz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzvz f31029c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f31030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f31031b;

    static {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            f31029c = new zzvz(UUID.randomUUID(), new SecureRandom().nextLong());
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    public zzvz(UUID uuid, long j2) {
        this.f31030a = uuid;
        this.f31031b = new AtomicLong((j2 ^ 25214903917L) & 281474976710655L);
    }

    public final long a() {
        AtomicLong atomicLong;
        long j2;
        long j3;
        long j4;
        do {
            atomicLong = this.f31031b;
            j2 = atomicLong.get();
            j3 = ((j2 * 25214903917L) + 11) & 281474976710655L;
            j4 = ((25214903917L * j3) + 11) & 281474976710655L;
        } while (!atomicLong.compareAndSet(j2, j4));
        return (((long) ((int) (j3 >>> 16))) << 32) + ((long) ((int) (j4 >>> 16)));
    }

    public final UUID b() {
        long jA = a() & (-61441);
        long jA2 = a() >>> 2;
        UUID uuid = this.f31030a;
        return new UUID(jA ^ uuid.getMostSignificantBits(), jA2 ^ uuid.getLeastSignificantBits());
    }
}
