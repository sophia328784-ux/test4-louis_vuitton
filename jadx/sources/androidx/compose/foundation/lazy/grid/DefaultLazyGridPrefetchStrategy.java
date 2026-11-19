package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.runtime.collection.MutableVector;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;", "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;", "", "initialNestedPrefetchItemCount", "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultLazyGridPrefetchStrategy implements LazyGridPrefetchStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableVector f5267c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5269f;

    public DefaultLazyGridPrefetchStrategy(int i2) {
        this.f5265a = i2;
        this.f5266b = -1;
        this.f5267c = new MutableVector(new LazyLayoutPrefetchState.PrefetchHandle[16], 0);
        this.f5268e = -1;
    }

    public static int b(LazyGridLayoutInfo lazyGridLayoutInfo, boolean z) {
        return z ? ((LazyGridItemInfo) CollectionsKt.M(lazyGridLayoutInfo.getM())).getF5212a() + 1 : ((LazyGridItemInfo) CollectionsKt.B(lazyGridLayoutInfo.getM())).getF5212a() - 1;
    }

    public static int c(LazyGridLayoutInfo lazyGridLayoutInfo, boolean z) {
        if (z) {
            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.M(lazyGridLayoutInfo.getM());
            return (lazyGridLayoutInfo.getR() == Orientation.Vertical ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX()) + 1;
        }
        LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) CollectionsKt.B(lazyGridLayoutInfo.getM());
        return (lazyGridLayoutInfo.getR() == Orientation.Vertical ? lazyGridItemInfo2.getW() : lazyGridItemInfo2.getX()) - 1;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void a(NestedPrefetchScope nestedPrefetchScope, int i2) {
        int f5507a = nestedPrefetchScope.getF5507a() == -1 ? this.f5265a : nestedPrefetchScope.getF5507a();
        for (int i3 = 0; i3 < f5507a; i3++) {
            nestedPrefetchScope.a(i2 + i3);
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void d(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, float f2, LazyGridLayoutInfo lazyGridLayoutInfo) {
        if (!lazyGridLayoutInfo.getM().isEmpty()) {
            int i2 = 0;
            boolean z = f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
            int iC = c(lazyGridLayoutInfo, z);
            int iB = b(lazyGridLayoutInfo, z);
            if (iB >= 0 && iB < lazyGridLayoutInfo.getP()) {
                int i3 = this.f5266b;
                MutableVector mutableVector = this.f5267c;
                if (iC != i3 && iC >= 0) {
                    if (this.d != z) {
                        Object[] objArr = mutableVector.f8165b;
                        int i4 = mutableVector.d;
                        for (int i5 = 0; i5 < i4; i5++) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) objArr[i5]).cancel();
                        }
                    }
                    this.d = z;
                    this.f5266b = iC;
                    mutableVector.j();
                    mutableVector.g(mutableVector.d, lazyGridState$prefetchScope$1.a(iC));
                }
                if (z) {
                    LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.M(lazyGridLayoutInfo.getM());
                    if (((LazyGridSnapLayoutInfoProviderKt.a(lazyGridItemInfo, lazyGridLayoutInfo.getR()) + LazyGridSnapLayoutInfoProviderKt.b(lazyGridItemInfo, lazyGridLayoutInfo.getR())) + lazyGridLayoutInfo.getT()) - lazyGridLayoutInfo.getO() < (-f2)) {
                        Object[] objArr2 = mutableVector.f8165b;
                        int i6 = mutableVector.d;
                        while (i2 < i6) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) objArr2[i2]).c();
                            i2++;
                        }
                    }
                } else if (lazyGridLayoutInfo.getN() - LazyGridSnapLayoutInfoProviderKt.a((LazyGridItemInfo) CollectionsKt.B(lazyGridLayoutInfo.getM()), lazyGridLayoutInfo.getR()) < f2) {
                    Object[] objArr3 = mutableVector.f8165b;
                    int i7 = mutableVector.d;
                    while (i2 < i7) {
                        ((LazyLayoutPrefetchState.PrefetchHandle) objArr3[i2]).c();
                        i2++;
                    }
                }
            }
        }
        this.f5269f = f2;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void e(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, LazyGridMeasureResult lazyGridMeasureResult) {
        int i2 = lazyGridMeasureResult.p;
        List list = lazyGridMeasureResult.m;
        int i3 = this.f5266b;
        boolean z = this.d;
        MutableVector mutableVector = this.f5267c;
        if (i3 != -1 && !list.isEmpty() && i3 != c(lazyGridMeasureResult, z)) {
            this.f5266b = -1;
            Object[] objArr = mutableVector.f8165b;
            int i4 = mutableVector.d;
            for (int i5 = 0; i5 < i4; i5++) {
                ((LazyLayoutPrefetchState.PrefetchHandle) objArr[i5]).cancel();
            }
            mutableVector.j();
        }
        int i6 = this.f5268e;
        if (i6 != -1 && this.f5269f != Call.Parameters.DEFAULT_CAMERA_ZOOM && i6 != i2 && !list.isEmpty()) {
            int iC = c(lazyGridMeasureResult, this.f5269f < Call.Parameters.DEFAULT_CAMERA_ZOOM);
            int iB = b(lazyGridMeasureResult, this.f5269f < Call.Parameters.DEFAULT_CAMERA_ZOOM);
            if (iB >= 0 && iB < i2 && iC != this.f5266b && iC >= 0) {
                this.f5266b = iC;
                mutableVector.j();
                mutableVector.g(mutableVector.d, lazyGridState$prefetchScope$1.a(iC));
            }
        }
        this.f5268e = i2;
    }

    public DefaultLazyGridPrefetchStrategy() {
        this(0, 1, null);
    }

    public /* synthetic */ DefaultLazyGridPrefetchStrategy(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 2 : i2);
    }
}
