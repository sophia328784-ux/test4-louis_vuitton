package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.l3;
import defpackage.zd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/lazy/LazyListState$prefetchScope$1", "Landroidx/compose/foundation/lazy/LazyListPrefetchScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListState$prefetchScope$1 implements LazyListPrefetchScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LazyListState f5247a;

    public LazyListState$prefetchScope$1(LazyListState lazyListState) {
        this.f5247a = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchScope
    public final LazyLayoutPrefetchState.PrefetchHandle a(int i2, l3 l3Var) {
        Snapshot.Companion companion = Snapshot.f8462e;
        LazyListState lazyListState = this.f5247a;
        companion.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f5236f).getF10755b();
            return lazyListState.q.a(i2, lazyListMeasureResult.f5210j, lazyListState.d, new zd(l3Var, i2, lazyListMeasureResult));
        } finally {
            Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
        }
    }
}
