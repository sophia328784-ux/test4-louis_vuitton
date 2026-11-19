package kotlin.time;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\bg\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/ComparableTimeMark;", "Lkotlin/time/TimeMark;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface ComparableTimeMark extends TimeMark, Comparable<ComparableTimeMark> {

    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class DefaultImpls {
        public static int a(ComparableTimeMark comparableTimeMark, ComparableTimeMark comparableTimeMark2) {
            comparableTimeMark2.getClass();
            long jZ = comparableTimeMark.z(comparableTimeMark2);
            Duration.INSTANCE.getClass();
            return Duration.c(jZ, 0L);
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    int compareTo(ComparableTimeMark comparableTimeMark);

    long z(ComparableTimeMark comparableTimeMark);
}
