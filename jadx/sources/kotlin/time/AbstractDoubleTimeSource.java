package kotlin.time;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/DurationUnit;", "unit", "<init>", "(Lkotlin/time/DurationUnit;)V", "DoubleTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractDoubleTimeSource implements TimeSource.WithComparableMarks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DurationUnit f74560a;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;", "Lkotlin/time/ComparableTimeMark;", "", "startedAt", "Lkotlin/time/AbstractDoubleTimeSource;", "timeSource", "Lkotlin/time/Duration;", "offset", "<init>", "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DoubleTimeMark implements ComparableTimeMark {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f74561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AbstractDoubleTimeSource f74562c;
        public final long d;

        public DoubleTimeMark(double d, AbstractDoubleTimeSource abstractDoubleTimeSource, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            abstractDoubleTimeSource.getClass();
            this.f74561b = d;
            this.f74562c = abstractDoubleTimeSource;
            this.d = j2;
        }

        @Override // kotlin.time.ComparableTimeMark
        /* JADX INFO: renamed from: F1 */
        public final /* bridge */ int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.a(this, comparableTimeMark);
        }

        @Override // kotlin.time.TimeMark
        public final long a() {
            AbstractDoubleTimeSource abstractDoubleTimeSource = this.f74562c;
            return Duration.j(DurationKt.f(abstractDoubleTimeSource.b() - this.f74561b, abstractDoubleTimeSource.f74560a), Duration.v(this.d));
        }

        @Override // kotlin.time.ComparableTimeMark, java.lang.Comparable
        public final /* bridge */ int compareTo(Object obj) {
            return ComparableTimeMark.DefaultImpls.a(this, (ComparableTimeMark) obj);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof DoubleTimeMark)) {
                return false;
            }
            if (!this.f74562c.equals(((DoubleTimeMark) obj).f74562c)) {
                return false;
            }
            long jZ = z((ComparableTimeMark) obj);
            Duration.INSTANCE.getClass();
            return Duration.d(jZ, 0L);
        }

        public final int hashCode() {
            return Long.hashCode(Duration.j(DurationKt.f(this.f74561b, this.f74562c.f74560a), this.d));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DoubleTimeMark(");
            sb.append(this.f74561b);
            AbstractDoubleTimeSource abstractDoubleTimeSource = this.f74562c;
            sb.append(DurationUnitKt__DurationUnitKt.c(abstractDoubleTimeSource.f74560a));
            sb.append(" + ");
            sb.append((Object) Duration.l(this.d));
            sb.append(", ");
            sb.append(abstractDoubleTimeSource);
            sb.append(')');
            return sb.toString();
        }

        @Override // kotlin.time.ComparableTimeMark
        public final long z(ComparableTimeMark comparableTimeMark) {
            comparableTimeMark.getClass();
            if (comparableTimeMark instanceof DoubleTimeMark) {
                DoubleTimeMark doubleTimeMark = (DoubleTimeMark) comparableTimeMark;
                long j2 = doubleTimeMark.d;
                AbstractDoubleTimeSource abstractDoubleTimeSource = doubleTimeMark.f74562c;
                AbstractDoubleTimeSource abstractDoubleTimeSource2 = this.f74562c;
                if (abstractDoubleTimeSource2.equals(abstractDoubleTimeSource)) {
                    long j3 = this.d;
                    if (Duration.d(j3, j2) && Duration.i(j3)) {
                        Duration.INSTANCE.getClass();
                        return 0L;
                    }
                    long j4 = Duration.j(j3, Duration.v(j2));
                    long jF = DurationKt.f(this.f74561b - doubleTimeMark.f74561b, abstractDoubleTimeSource2.f74560a);
                    if (!Duration.d(jF, Duration.v(j4))) {
                        return Duration.j(jF, j4);
                    }
                    Duration.INSTANCE.getClass();
                    return 0L;
                }
            }
            b21.s("Subtracting or comparing time marks from different time sources is not possible: ", this, " and ", comparableTimeMark);
            return 0L;
        }
    }

    public AbstractDoubleTimeSource(DurationUnit durationUnit) {
        durationUnit.getClass();
        this.f74560a = durationUnit;
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public final ComparableTimeMark a() {
        double dB = b();
        Duration.INSTANCE.getClass();
        return new DoubleTimeMark(dB, this, 0L, null);
    }

    public abstract double b();
}
