package kotlin.time;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.mt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/time/DurationUnitKt")
class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {

    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74573a;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f74573a = iArr;
        }
    }

    public static final long b(long j2, DurationUnit durationUnit) {
        long j3;
        durationUnit.getClass();
        int i2 = WhenMappings.f74573a[durationUnit.ordinal()];
        if (i2 == 1) {
            j3 = 86400000;
        } else if (i2 == 2) {
            j3 = 3600000;
        } else if (i2 == 3) {
            j3 = 60000;
        } else if (i2 == 4) {
            j3 = 1000;
        } else {
            if (i2 != 5) {
                mt.f(durationUnit, "Wrong unit for millisMultiplier: ");
                return 0L;
            }
            j3 = 1;
        }
        if (j2 == 0) {
            return 0L;
        }
        if (j2 == 1) {
            if (j3 <= 4611686018427387903L) {
                return j3;
            }
        } else if (j3 != 1) {
            int iNumberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j2)) - Long.numberOfLeadingZeros(j3);
            if (iNumberOfLeadingZeros < 63) {
                return j2 * j3;
            }
            if (iNumberOfLeadingZeros <= 63) {
                long j4 = j2 * j3;
                if (j4 <= 4611686018427387903L) {
                    return j4;
                }
            }
        } else if (j2 <= 4611686018427387903L) {
            return j2;
        }
        return 4611686018427387903L;
    }

    public static final String c(DurationUnit durationUnit) {
        durationUnit.getClass();
        switch (WhenMappings.f74573a[durationUnit.ordinal()]) {
            case 1:
                return NBSSpanMetricUnit.Day;
            case 2:
                return NBSSpanMetricUnit.Hour;
            case 3:
                return NBSSpanMetricUnit.Minute;
            case 4:
                return NBSSpanMetricUnit.Second;
            case 5:
                return NBSSpanMetricUnit.Millisecond;
            case 6:
                return "ns";
            case 7:
                return "us";
            default:
                mt.f(durationUnit, "Unknown unit: ");
                return null;
        }
    }
}
