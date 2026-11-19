package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "Interval", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutIntervalContent<Interval extends Interval> {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Interval {
        /* JADX INFO: renamed from: getKey */
        default Function1 getF5599a() {
            return null;
        }

        /* JADX INFO: renamed from: getType */
        default Function1 getF5600b() {
            return LazyLayoutIntervalContent$Interval$type$1.f5422b;
        }
    }

    public final Object l(int i2) {
        IntervalList.Interval interval = m().get(i2);
        return ((Interval) interval.f5407c).getF5600b().invoke(Integer.valueOf(i2 - interval.f5405a));
    }

    public abstract MutableIntervalList m();

    public final Object n(int i2) {
        Object objInvoke;
        IntervalList.Interval interval = m().get(i2);
        int i3 = i2 - interval.f5405a;
        Function1 f5599a = ((Interval) interval.f5407c).getF5599a();
        return (f5599a == null || (objInvoke = f5599a.invoke(Integer.valueOf(i3))) == null) ? new DefaultLazyKey(i2) : objInvoke;
    }
}
