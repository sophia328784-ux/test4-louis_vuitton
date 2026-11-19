package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "Lkotlin/ranges/IntRange;", "nearestRange", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "intervalContent", "<init>", "(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NearestRangeKeyIndexMap implements LazyLayoutKeyIndexMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableObjectIntMap f5541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f5542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5543c;

    /* JADX WARN: Code duplicated, block: B:31:0x00cb  */
    public NearestRangeKeyIndexMap(IntRange intRange, LazyLayoutIntervalContent<?> lazyLayoutIntervalContent) {
        Object defaultLazyKey;
        MutableIntervalList f5602a = lazyLayoutIntervalContent.getF5602a();
        int i2 = intRange.f71951b;
        if (i2 < 0) {
            InlineClassHelperKt.c("negative nearestRange.first");
        }
        int iMin = Math.min(intRange.f71952c, f5602a.f5539b - 1);
        if (iMin < i2) {
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.f3344a;
            mutableObjectIntMap.getClass();
            this.f5541a = mutableObjectIntMap;
            this.f5542b = new Object[0];
            this.f5543c = 0;
            return;
        }
        int i3 = (iMin - i2) + 1;
        this.f5542b = new Object[i3];
        this.f5543c = i2;
        MutableObjectIntMap mutableObjectIntMap2 = new MutableObjectIntMap(i3);
        MutableVector mutableVector = f5602a.f5538a;
        if (i2 < 0 || i2 >= f5602a.f5539b) {
            StringBuilder sbQ = fc.q(i2, "Index ", ", size ");
            sbQ.append(f5602a.f5539b);
            InlineClassHelperKt.e(sbQ.toString());
        }
        if (iMin < 0 || iMin >= f5602a.f5539b) {
            StringBuilder sbQ2 = fc.q(iMin, "Index ", ", size ");
            sbQ2.append(f5602a.f5539b);
            InlineClassHelperKt.e(sbQ2.toString());
        }
        if (iMin < i2) {
            InlineClassHelperKt.a("toIndex (" + iMin + ") should be not smaller than fromIndex (" + i2 + ')');
        }
        int iA = IntervalListKt.a(i2, mutableVector);
        int i4 = ((IntervalList.Interval) mutableVector.f8165b[iA]).f5405a;
        while (i4 <= iMin) {
            IntervalList.Interval interval = (IntervalList.Interval) mutableVector.f8165b[iA];
            Function1 f5718a = ((LazyLayoutIntervalContent.Interval) interval.f5407c).getF5718a();
            int i5 = interval.f5405a;
            int iMax = Math.max(i2, i5);
            int iMin2 = Math.min(iMin, (interval.f5406b + i5) - 1);
            if (iMax <= iMin2) {
                while (true) {
                    if (f5718a != null) {
                        defaultLazyKey = f5718a.invoke(Integer.valueOf(iMax - i5));
                        defaultLazyKey = defaultLazyKey == null ? new DefaultLazyKey(iMax) : defaultLazyKey;
                    }
                    mutableObjectIntMap2.h(iMax, defaultLazyKey);
                    this.f5542b[iMax - this.f5543c] = defaultLazyKey;
                    iMax = iMax != iMin2 ? iMax + 1 : iMax;
                }
            }
            i4 += interval.f5406b;
            iA++;
        }
        this.f5541a = mutableObjectIntMap2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public final int c(Object obj) {
        MutableObjectIntMap mutableObjectIntMap = this.f5541a;
        int iA = mutableObjectIntMap.a(obj);
        if (iA >= 0) {
            return mutableObjectIntMap.f3342c[iA];
        }
        return -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public final Object d(int i2) {
        int i3 = i2 - this.f5543c;
        if (i3 < 0) {
            return null;
        }
        Object[] objArr = this.f5542b;
        if (i3 < objArr.length) {
            return objArr[i3];
        }
        return null;
    }
}
