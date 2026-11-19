package kotlin.time;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0003\u0088\u0001\u0004\u0092\u0001\u00020\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/time/Duration;", "", "c", "Companion", "rawValue", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
@JvmInline
public final class Duration implements Comparable<Duration> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long d = DurationKt.b(4611686018427387903L);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f74568e = DurationKt.b(-4611686018427387903L);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f74569f = 9223372036854759646L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f74570b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "", "INVALID_RAW_VALUE", "J", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final long a(long j2, long j3) {
        long j4 = j3 / 1000000;
        long jA = DurationKt.a(j2, j4);
        if (-4611686018426L > jA || jA >= 4611686018427L) {
            return DurationKt.b(jA);
        }
        return DurationKt.d((jA * 1000000) + (j3 - (j4 * 1000000)));
    }

    public static final void b(StringBuilder sb, int i2, int i3, int i4, String str, boolean z) {
        sb.append(i2);
        if (i3 != 0) {
            sb.append(JwtParser.SEPARATOR_CHAR);
            String strB = StringsKt.B(i4, String.valueOf(i3));
            int i5 = -1;
            int length = strB.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i6 = length - 1;
                    if (strB.charAt(length) != '0') {
                        i5 = length;
                        break;
                    } else if (i6 < 0) {
                        break;
                    } else {
                        length = i6;
                    }
                }
            }
            int i7 = i5 + 1;
            if (z || i7 >= 3) {
                sb.append((CharSequence) strB, 0, ((i5 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strB, 0, i7);
            }
        }
        sb.append(str);
    }

    public static int c(long j2, long j3) {
        long j4 = j2 ^ j3;
        if (j4 < 0 || (((int) j4) & 1) == 0) {
            return Intrinsics.e(j2, j3);
        }
        int i2 = (((int) j2) & 1) - (((int) j3) & 1);
        return j2 < 0 ? -i2 : i2;
    }

    public static final boolean d(long j2, long j3) {
        return j2 == j3;
    }

    public static final long e(long j2) {
        return ((((int) j2) & 1) != 1 || i(j2)) ? k(j2, DurationUnit.MILLISECONDS) : j2 >> 1;
    }

    public static final int f(long j2) {
        if (i(j2)) {
            return 0;
        }
        return (int) (k(j2, DurationUnit.MINUTES) % 60);
    }

    public static final int g(long j2) {
        if (i(j2)) {
            return 0;
        }
        return (int) ((((int) j2) & 1) == 1 ? ((j2 >> 1) % 1000) * 1000000 : (j2 >> 1) % 1000000000);
    }

    public static final int h(long j2) {
        if (i(j2)) {
            return 0;
        }
        return (int) (k(j2, DurationUnit.SECONDS) % 60);
    }

    public static final boolean i(long j2) {
        return j2 == d || j2 == f74568e;
    }

    public static final long j(long j2, long j3) {
        int i2 = ((int) j2) & 1;
        if (i2 != (((int) j3) & 1)) {
            return i2 == 1 ? a(j2 >> 1, j3 >> 1) : a(j3 >> 1, j2 >> 1);
        }
        if (i2 == 0) {
            long j4 = (j2 >> 1) + (j3 >> 1);
            return (-4611686018426999999L > j4 || j4 >= 4611686018427000000L) ? DurationKt.b(j4 / 1000000) : DurationKt.d(j4);
        }
        long jA = DurationKt.a(j2 >> 1, j3 >> 1);
        if (jA != 9223372036854759646L) {
            return (jA == 4611686018427387903L || jA == -4611686018427387903L) ? DurationKt.b(jA) : DurationKt.c(jA);
        }
        md.n("Summing infinite durations of different signs yields an undefined result.");
        return 0L;
    }

    public static final long k(long j2, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j2 == d) {
            return Long.MAX_VALUE;
        }
        if (j2 == f74568e) {
            return Long.MIN_VALUE;
        }
        long j3 = j2 >> 1;
        DurationUnit durationUnit2 = (((int) j2) & 1) == 0 ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
        durationUnit2.getClass();
        return durationUnit.getTimeUnit().convert(j3, durationUnit2.getTimeUnit());
    }

    public static String l(long j2) {
        if (j2 == 0) {
            return "0s";
        }
        if (j2 == d) {
            return "Infinity";
        }
        if (j2 == f74568e) {
            return "-Infinity";
        }
        int i2 = 0;
        boolean z = j2 < 0;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j2 < 0) {
            j2 = v(j2);
        }
        long jK = k(j2, DurationUnit.DAYS);
        int iK = i(j2) ? 0 : (int) (k(j2, DurationUnit.HOURS) % 24);
        int iF = f(j2);
        int iH = h(j2);
        int iG = g(j2);
        boolean z2 = jK != 0;
        boolean z3 = iK != 0;
        boolean z4 = iF != 0;
        boolean z5 = (iH == 0 && iG == 0) ? false : true;
        if (z2) {
            sb.append(jK);
            sb.append('d');
            i2 = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i3 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iK);
            sb.append('h');
            i2 = i3;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i4 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iF);
            sb.append('m');
            i2 = i4;
        }
        if (z5) {
            int i5 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            if (iH != 0 || z2 || z3 || z4) {
                b(sb, iH, iG, 9, NBSSpanMetricUnit.Second, false);
            } else if (iG >= 1000000) {
                b(sb, iG / 1000000, iG % 1000000, 6, NBSSpanMetricUnit.Millisecond, false);
            } else if (iG >= 1000) {
                b(sb, iG / 1000, iG % 1000, 3, "us", false);
            } else {
                sb.append(iG);
                sb.append("ns");
            }
            i2 = i5;
        }
        if (z && i2 > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    public static final long v(long j2) {
        long j3 = ((-(j2 >> 1)) << 1) + ((long) (((int) j2) & 1));
        INSTANCE.getClass();
        int i2 = DurationJvmKt.f74571a;
        return j3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        return c(this.f74570b, duration.f74570b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Duration) {
            return this.f74570b == ((Duration) obj).f74570b;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f74570b);
    }

    public final String toString() {
        return l(this.f74570b);
    }
}
