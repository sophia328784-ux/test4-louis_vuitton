package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/lazy/layout/MutableIntervalList;", "T", "Landroidx/compose/foundation/lazy/layout/IntervalList;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableIntervalList<T> implements IntervalList<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f5538a = new MutableVector(new IntervalList.Interval[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IntervalList.Interval f5540c;

    public final void a(int i2, LazyLayoutIntervalContent.Interval interval) {
        if (i2 < 0) {
            InlineClassHelperKt.a("size should be >=0");
        }
        if (i2 == 0) {
            return;
        }
        IntervalList.Interval interval2 = new IntervalList.Interval(this.f5539b, i2, interval);
        this.f5539b += i2;
        this.f5538a.b(interval2);
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public final IntervalList.Interval get(int i2) {
        if (i2 < 0 || i2 >= this.f5539b) {
            StringBuilder sbQ = fc.q(i2, "Index ", ", size ");
            sbQ.append(this.f5539b);
            InlineClassHelperKt.e(sbQ.toString());
        }
        IntervalList.Interval interval = this.f5540c;
        if (interval != null) {
            int i3 = interval.f5405a;
            if (i2 < interval.f5406b + i3 && i3 <= i2) {
                return interval;
            }
        }
        MutableVector mutableVector = this.f5538a;
        IntervalList.Interval interval2 = (IntervalList.Interval) mutableVector.f8165b[IntervalListKt.a(i2, mutableVector)];
        this.f5540c = interval2;
        return interval2;
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    /* JADX INFO: renamed from: getSize, reason: from getter */
    public final int getF5539b() {
        return this.f5539b;
    }
}
