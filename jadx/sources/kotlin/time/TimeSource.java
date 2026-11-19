package kotlin.time;

import defpackage.bm;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource;", "", "WithComparableMarks", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface TimeSource {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/TimeSource;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public interface WithComparableMarks extends TimeSource {
        @Override // kotlin.time.TimeSource
        ComparableTimeMark a();
    }

    TimeMark a();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource$WithComparableMarks;", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Monotonic implements WithComparableMarks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Monotonic f74589a = new Monotonic();

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", "reading", "", "Lkotlin/time/ValueTimeMarkReading;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        @JvmInline
        public static final class ValueTimeMark implements ComparableTimeMark {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f74590b;

            public /* synthetic */ ValueTimeMark(long j2) {
                this.f74590b = j2;
            }

            public static String b(long j2) {
                return "ValueTimeMark(reading=" + j2 + ')';
            }

            @Override // kotlin.time.ComparableTimeMark
            /* JADX INFO: renamed from: F1 */
            public final /* bridge */ int compareTo(ComparableTimeMark comparableTimeMark) {
                return ComparableTimeMark.DefaultImpls.a(this, comparableTimeMark);
            }

            @Override // kotlin.time.TimeMark
            public final long a() {
                MonotonicTimeSource.f74587a.getClass();
                long jB = MonotonicTimeSource.b();
                DurationUnit durationUnit = DurationUnit.NANOSECONDS;
                durationUnit.getClass();
                long j2 = this.f74590b;
                return (1 | (j2 - 1)) == Long.MAX_VALUE ? Duration.v(LongSaturatedMathKt.a(j2)) : LongSaturatedMathKt.b(jB, j2, durationUnit);
            }

            @Override // kotlin.time.ComparableTimeMark, java.lang.Comparable
            public final /* bridge */ int compareTo(Object obj) {
                return ComparableTimeMark.DefaultImpls.a(this, (ComparableTimeMark) obj);
            }

            public final boolean equals(Object obj) {
                if (obj instanceof ValueTimeMark) {
                    return this.f74590b == ((ValueTimeMark) obj).f74590b;
                }
                return false;
            }

            public final int hashCode() {
                return Long.hashCode(this.f74590b);
            }

            public final String toString() {
                return b(this.f74590b);
            }

            @Override // kotlin.time.ComparableTimeMark
            public final long z(ComparableTimeMark comparableTimeMark) {
                comparableTimeMark.getClass();
                boolean z = comparableTimeMark instanceof ValueTimeMark;
                long j2 = this.f74590b;
                if (!z) {
                    bm.g("Subtracting or comparing time marks from different time sources is not possible: ", b(j2), " and ", comparableTimeMark);
                    return 0L;
                }
                long j3 = ((ValueTimeMark) comparableTimeMark).f74590b;
                MonotonicTimeSource.f74587a.getClass();
                return LongSaturatedMathKt.c(j2, j3, DurationUnit.NANOSECONDS);
            }
        }

        @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
        public final ComparableTimeMark a() {
            MonotonicTimeSource.f74587a.getClass();
            return new ValueTimeMark(MonotonicTimeSource.b());
        }

        public final String toString() {
            MonotonicTimeSource.f74587a.getClass();
            return "TimeSource(System.nanoTime())";
        }

        @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
        public final TimeMark a() {
            MonotonicTimeSource.f74587a.getClass();
            return new ValueTimeMark(MonotonicTimeSource.b());
        }
    }
}
