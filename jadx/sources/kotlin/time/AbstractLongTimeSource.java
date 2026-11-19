package kotlin.time;

import defpackage.b21;
import defpackage.w1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/DurationUnit;", "unit", "<init>", "(Lkotlin/time/DurationUnit;)V", "LongTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractLongTimeSource implements TimeSource.WithComparableMarks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DurationUnit f74563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f74564b;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$LongTimeMark;", "Lkotlin/time/ComparableTimeMark;", "", "startedAt", "Lkotlin/time/AbstractLongTimeSource;", "timeSource", "Lkotlin/time/Duration;", "offset", "<init>", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class LongTimeMark implements ComparableTimeMark {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f74565b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AbstractLongTimeSource f74566c;
        public final long d;

        public LongTimeMark(long j2, AbstractLongTimeSource abstractLongTimeSource, long j3, DefaultConstructorMarker defaultConstructorMarker) {
            abstractLongTimeSource.getClass();
            this.f74565b = j2;
            this.f74566c = abstractLongTimeSource;
            this.d = j3;
        }

        @Override // kotlin.time.ComparableTimeMark
        /* JADX INFO: renamed from: F1 */
        public final /* bridge */ int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.a(this, comparableTimeMark);
        }

        @Override // kotlin.time.TimeMark
        public final long a() {
            AbstractLongTimeSource abstractLongTimeSource = this.f74566c;
            return Duration.j(LongSaturatedMathKt.c(abstractLongTimeSource.b() - ((Number) abstractLongTimeSource.f74564b.getF71699b()).longValue(), this.f74565b, abstractLongTimeSource.f74563a), Duration.v(this.d));
        }

        @Override // kotlin.time.ComparableTimeMark, java.lang.Comparable
        public final /* bridge */ int compareTo(Object obj) {
            return ComparableTimeMark.DefaultImpls.a(this, (ComparableTimeMark) obj);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof LongTimeMark)) {
                return false;
            }
            if (!this.f74566c.equals(((LongTimeMark) obj).f74566c)) {
                return false;
            }
            long jZ = z((ComparableTimeMark) obj);
            Duration.INSTANCE.getClass();
            return Duration.d(jZ, 0L);
        }

        public final int hashCode() {
            Duration.Companion companion = Duration.INSTANCE;
            return Long.hashCode(this.f74565b) + (Long.hashCode(this.d) * 37);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("LongTimeMark(");
            sb.append(this.f74565b);
            AbstractLongTimeSource abstractLongTimeSource = this.f74566c;
            sb.append(DurationUnitKt__DurationUnitKt.c(abstractLongTimeSource.f74563a));
            sb.append(" + ");
            sb.append((Object) Duration.l(this.d));
            sb.append(", ");
            sb.append(abstractLongTimeSource);
            sb.append(')');
            return sb.toString();
        }

        @Override // kotlin.time.ComparableTimeMark
        public final long z(ComparableTimeMark comparableTimeMark) {
            comparableTimeMark.getClass();
            if (comparableTimeMark instanceof LongTimeMark) {
                LongTimeMark longTimeMark = (LongTimeMark) comparableTimeMark;
                AbstractLongTimeSource abstractLongTimeSource = longTimeMark.f74566c;
                AbstractLongTimeSource abstractLongTimeSource2 = this.f74566c;
                if (abstractLongTimeSource2.equals(abstractLongTimeSource)) {
                    return Duration.j(LongSaturatedMathKt.c(this.f74565b, longTimeMark.f74565b, abstractLongTimeSource2.f74563a), Duration.j(this.d, Duration.v(longTimeMark.d)));
                }
            }
            b21.s("Subtracting or comparing time marks from different time sources is not possible: ", this, " and ", comparableTimeMark);
            return 0L;
        }
    }

    public AbstractLongTimeSource(DurationUnit durationUnit) {
        durationUnit.getClass();
        this.f74563a = durationUnit;
        this.f74564b = LazyKt.b(new w1(this, 1));
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public final ComparableTimeMark a() {
        long jB = b() - ((Number) this.f74564b.getF71699b()).longValue();
        Duration.INSTANCE.getClass();
        return new LongTimeMark(jB, this, 0L, null);
    }

    public abstract long b();
}
