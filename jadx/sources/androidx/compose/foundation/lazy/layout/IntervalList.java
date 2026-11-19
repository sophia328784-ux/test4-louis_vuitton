package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001\u0003\u0082\u0001\u0001\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/IntervalList;", "T", "", "Interval", "Landroidx/compose/foundation/lazy/layout/MutableIntervalList;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IntervalList<T> {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B!\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00028\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;", "T", "", "", "startIndex", "size", "value", "<init>", "(IILjava/lang/Object;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Interval<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f5407c;

        public Interval(int i2, int i3, T t) {
            this.f5405a = i2;
            this.f5406b = i3;
            this.f5407c = t;
            if (!(i2 >= 0)) {
                InlineClassHelperKt.a("startIndex should be >= 0");
            }
            if (i3 > 0) {
                return;
            }
            InlineClassHelperKt.a("size should be > 0");
        }
    }

    Interval get(int i2);

    int getSize();
}
