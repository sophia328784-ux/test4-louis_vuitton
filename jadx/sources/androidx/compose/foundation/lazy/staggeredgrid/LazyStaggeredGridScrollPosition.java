package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00126\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;", "", "", "initialIndices", "initialOffsets", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "targetIndex", "laneCount", "fillIndices", "<init>", "([I[ILkotlin/jvm/functions/Function2;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridScrollPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f5652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f5653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableIntState f5654c;
    public int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableIntState f5655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5656f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LazyLayoutNearestRangeState f5657h;

    public LazyStaggeredGridScrollPosition(int[] iArr, int[] iArr2, Function2<? super Integer, ? super Integer, int[]> function2) {
        this.f5652a = function2;
        this.f5653b = iArr;
        this.f5654c = SnapshotIntStateKt.a(a(iArr));
        this.d = iArr2;
        this.f5655e = SnapshotIntStateKt.a(b(iArr, iArr2));
        Integer numM = ArraysKt.M(iArr);
        this.f5657h = new LazyLayoutNearestRangeState(numM != null ? numM.intValue() : 0, 90, 200);
    }

    public static int a(int[] iArr) {
        int i2 = Integer.MAX_VALUE;
        for (int i3 : iArr) {
            if (i3 <= 0) {
                return 0;
            }
            if (i2 > i3) {
                i2 = i3;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            return 0;
        }
        return i2;
    }

    public static int b(int[] iArr, int[] iArr2) {
        int iA = a(iArr);
        int length = iArr2.length;
        int iMin = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < length; i2++) {
            if (iArr[i2] == iA) {
                iMin = Math.min(iMin, iArr2[i2]);
            }
        }
        if (iMin == Integer.MAX_VALUE) {
            return 0;
        }
        return iMin;
    }
}
