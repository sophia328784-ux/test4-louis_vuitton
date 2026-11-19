package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/MonotonicTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class MonotonicTimeSource implements TimeSource.WithComparableMarks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MonotonicTimeSource f74587a = new MonotonicTimeSource();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f74588b = System.nanoTime();

    public static long b() {
        return System.nanoTime() - f74588b;
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public final ComparableTimeMark a() {
        return new TimeSource.Monotonic.ValueTimeMark(b());
    }

    public final String toString() {
        return "TimeSource(System.nanoTime())";
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public final TimeMark a() {
        return new TimeSource.Monotonic.ValueTimeMark(b());
    }
}
