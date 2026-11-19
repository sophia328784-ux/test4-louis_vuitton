package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;", "Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;", "", "initialNestedPrefetchItemCount", "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultLazyListPrefetchStrategy implements LazyListPrefetchStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LazyLayoutPrefetchState.PrefetchHandle f5168c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5169e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5170f;

    public DefaultLazyListPrefetchStrategy(int i2) {
        this.f5166a = i2;
        this.f5167b = -1;
        this.f5169e = -1;
    }

    public static int d(LazyListLayoutInfo lazyListLayoutInfo, boolean z) {
        return z ? ((LazyListItemInfo) CollectionsKt.M(lazyListLayoutInfo.getF5211k())).getF5212a() + 1 : ((LazyListItemInfo) CollectionsKt.B(lazyListLayoutInfo.getF5211k())).getF5212a() - 1;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public final void a(NestedPrefetchScope nestedPrefetchScope, int i2) {
        int f5507a = nestedPrefetchScope.getF5507a() == -1 ? this.f5166a : nestedPrefetchScope.getF5507a();
        for (int i3 = 0; i3 < f5507a; i3++) {
            nestedPrefetchScope.a(i2 + i3);
        }
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public final void b(LazyListState$prefetchScope$1 lazyListState$prefetchScope$1, LazyListMeasureResult lazyListMeasureResult) {
        List list = lazyListMeasureResult.f5211k;
        int i2 = this.f5167b;
        boolean z = this.d;
        if (i2 != -1 && !list.isEmpty() && i2 != d(lazyListMeasureResult, z)) {
            this.f5167b = -1;
            LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = this.f5168c;
            if (prefetchHandle != null) {
                prefetchHandle.cancel();
            }
            this.f5168c = null;
        }
        int i3 = lazyListMeasureResult.n;
        int i4 = this.f5169e;
        if (i4 != -1 && this.f5170f != Call.Parameters.DEFAULT_CAMERA_ZOOM && i4 != i3 && !list.isEmpty()) {
            int iD = d(lazyListMeasureResult, this.f5170f < Call.Parameters.DEFAULT_CAMERA_ZOOM);
            if (iD >= 0 && iD < i3) {
                this.f5167b = iD;
                this.f5168c = lazyListState$prefetchScope$1.a(iD, null);
            }
        }
        this.f5169e = i3;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public final void c(LazyListState$prefetchScope$1 lazyListState$prefetchScope$1, float f2, LazyListLayoutInfo lazyListLayoutInfo) {
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle2;
        if (!lazyListLayoutInfo.getF5211k().isEmpty()) {
            boolean z = f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
            int iD = d(lazyListLayoutInfo, z);
            if (iD >= 0 && iD < lazyListLayoutInfo.getN()) {
                if (iD != this.f5167b) {
                    if (this.d != z) {
                        this.f5167b = -1;
                        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle3 = this.f5168c;
                        if (prefetchHandle3 != null) {
                            prefetchHandle3.cancel();
                        }
                        this.f5168c = null;
                    }
                    this.d = z;
                    this.f5167b = iD;
                    this.f5168c = lazyListState$prefetchScope$1.a(iD, null);
                }
                if (z) {
                    LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.M(lazyListLayoutInfo.getF5211k());
                    if (((lazyListItemInfo.getQ() + lazyListItemInfo.getP()) + lazyListLayoutInfo.getR()) - lazyListLayoutInfo.getM() < (-f2) && (prefetchHandle2 = this.f5168c) != null) {
                        prefetchHandle2.c();
                    }
                } else if (lazyListLayoutInfo.getL() - ((LazyListItemInfo) CollectionsKt.B(lazyListLayoutInfo.getF5211k())).getP() < f2 && (prefetchHandle = this.f5168c) != null) {
                    prefetchHandle.c();
                }
            }
        }
        this.f5170f = f2;
    }

    public DefaultLazyListPrefetchStrategy() {
        this(0, 1, null);
    }

    public /* synthetic */ DefaultLazyListPrefetchStrategy(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 2 : i2);
    }
}
