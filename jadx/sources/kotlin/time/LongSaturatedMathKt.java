package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class LongSaturatedMathKt {
    public static final long a(long j2) {
        if (j2 < 0) {
            Duration.INSTANCE.getClass();
            return Duration.f74568e;
        }
        Duration.INSTANCE.getClass();
        return Duration.d;
    }

    public static final long b(long j2, long j3, DurationUnit durationUnit) {
        long j4 = j2 - j3;
        if (((j4 ^ j2) & (~(j4 ^ j3))) >= 0) {
            return DurationKt.h(j4, durationUnit);
        }
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit2) >= 0) {
            return Duration.v(a(j4));
        }
        durationUnit2.getClass();
        long jConvert = durationUnit.getTimeUnit().convert(1L, durationUnit2.getTimeUnit());
        long j5 = (j2 / jConvert) - (j3 / jConvert);
        long j6 = (j2 % jConvert) - (j3 % jConvert);
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.j(DurationKt.h(j5, durationUnit2), DurationKt.h(j6, durationUnit));
    }

    public static final long c(long j2, long j3, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (((j3 - 1) | 1) != Long.MAX_VALUE) {
            return (1 | (j2 - 1)) == Long.MAX_VALUE ? a(j2) : b(j2, j3, durationUnit);
        }
        if (j2 != j3) {
            return Duration.v(a(j3));
        }
        Duration.INSTANCE.getClass();
        return 0L;
    }
}
