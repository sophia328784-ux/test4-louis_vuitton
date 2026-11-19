package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.Alignment;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 extends LazyListMeasuredItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f5197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LazyLayoutMeasureScopeImpl f5198f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f5199h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Alignment.Horizontal f5200i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Alignment.Vertical f5201j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f5202k;
    public final /* synthetic */ int l;
    public final /* synthetic */ long m;
    public final /* synthetic */ LazyListState n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(long j2, boolean z, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i2, int i3, Alignment.Horizontal horizontal, Alignment.Vertical vertical, int i4, int i5, long j3, LazyListState lazyListState) {
        super(j2, z, lazyListItemProvider, lazyLayoutMeasureScopeImpl, null);
        this.f5197e = z;
        this.f5198f = lazyLayoutMeasureScopeImpl;
        this.g = i2;
        this.f5199h = i3;
        this.f5200i = horizontal;
        this.f5201j = vertical;
        this.f5202k = i4;
        this.l = i5;
        this.m = j3;
        this.n = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.LazyListMeasuredItemProvider
    public final LazyListMeasuredItem c(int i2, Object obj, Object obj2, List list, long j2) {
        return new LazyListMeasuredItem(i2, list, this.f5197e, this.f5200i, this.f5201j, this.f5198f.f5487c.getF9469c(), false, this.f5202k, this.l, i2 == this.g + (-1) ? 0 : this.f5199h, this.m, obj, obj2, this.n.o, j2, null);
    }
}
