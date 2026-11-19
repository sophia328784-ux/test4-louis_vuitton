package androidx.media3.common.util;

import com.google.common.base.Preconditions;
import java.math.RoundingMode;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class TimestampAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f14240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14241c;
    public final ThreadLocal d = new ThreadLocal();

    public TimestampAdjuster(long j2) {
        f(j2);
    }

    public final synchronized long a(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!e()) {
                long jLongValue = this.f14239a;
                if (jLongValue == 9223372036854775806L) {
                    Long l = (Long) this.d.get();
                    l.getClass();
                    jLongValue = l.longValue();
                }
                this.f14240b = jLongValue - j2;
                notifyAll();
            }
            this.f14241c = j2;
            return j2 + this.f14240b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long b(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j3 = this.f14241c;
            if (j3 != -9223372036854775807L) {
                String str = Util.f14242a;
                long jZ = Util.Z(j3, 90000L, 1000000L, RoundingMode.DOWN);
                long j4 = (4294967296L + jZ) / 8589934592L;
                long j5 = ((j4 - 1) * 8589934592L) + j2;
                long j6 = (j4 * 8589934592L) + j2;
                j2 = Math.abs(j5 - jZ) < Math.abs(j6 - jZ) ? j5 : j6;
            }
            long j7 = j2;
            String str2 = Util.f14242a;
            return a(Util.Z(j7, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j3 = this.f14241c;
            if (j3 != -9223372036854775807L) {
                String str = Util.f14242a;
                long jZ = Util.Z(j3, 90000L, 1000000L, RoundingMode.DOWN);
                long j4 = jZ / 8589934592L;
                long j5 = (j4 * 8589934592L) + j2;
                j2 = j5 >= jZ ? j5 : ((j4 + 1) * 8589934592L) + j2;
            }
            long j6 = j2;
            String str2 = Util.f14242a;
            return a(Util.Z(j6, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long d() {
        long j2;
        j2 = this.f14239a;
        if (j2 == Long.MAX_VALUE || j2 == 9223372036854775806L) {
            j2 = -9223372036854775807L;
        }
        return j2;
    }

    public final synchronized boolean e() {
        return this.f14240b != -9223372036854775807L;
    }

    public final synchronized void f(long j2) {
        this.f14239a = j2;
        this.f14240b = j2 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f14241c = -9223372036854775807L;
    }

    public final synchronized void g(long j2, long j3, boolean z) {
        try {
            Preconditions.q(this.f14239a == 9223372036854775806L);
            if (e()) {
                return;
            }
            if (z) {
                this.d.set(Long.valueOf(j2));
            } else {
                long jElapsedRealtime = 0;
                long j4 = j3;
                while (!e()) {
                    if (j3 == 0) {
                        wait();
                    } else {
                        Preconditions.q(j4 > 0);
                        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
                        wait(j4);
                        jElapsedRealtime += android.os.SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime >= j3 && !e()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j3 + " milliseconds");
                        }
                        j4 = j3 - jElapsedRealtime;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
