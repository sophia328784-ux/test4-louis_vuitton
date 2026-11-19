package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Constraints;
import defpackage.sy;
import defpackage.ze;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1", "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridState$prefetchScope$1 implements LazyGridPrefetchScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LazyGridState f5363a;

    public LazyGridState$prefetchScope$1(LazyGridState lazyGridState) {
        this.f5363a = lazyGridState;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchScope
    public final ArrayList a(int i2) {
        return (ArrayList) b(i2, null);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchScope
    public final List b(int i2, ze zeVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = zeVar == null ? null : new ArrayList();
        Snapshot.Companion companion = Snapshot.f8462e;
        LazyGridState lazyGridState = this.f5363a;
        companion.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            LazyGridMeasureResult lazyGridMeasureResult = lazyGridState.f5355b ? lazyGridState.f5356c : (LazyGridMeasureResult) ((SnapshotMutableStateImpl) lazyGridState.f5357e).getF10755b();
            if (lazyGridMeasureResult != null) {
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                ref$IntRef.f71919b = 1;
                List list = (List) lazyGridMeasureResult.f5310k.invoke(Integer.valueOf(i2));
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Pair pair = (Pair) list.get(i3);
                    LazyLayoutPrefetchState lazyLayoutPrefetchState = lazyGridState.o;
                    int iIntValue = ((Number) pair.f71705b).intValue();
                    long j2 = ((Constraints) pair.f71706c).f10999a;
                    LazyGridState.Companion companion2 = LazyGridState.w;
                    arrayList.add(lazyLayoutPrefetchState.a(iIntValue, j2, false, new sy(arrayList2, ref$IntRef, list, zeVar, i2, lazyGridMeasureResult)));
                }
            }
            return arrayList;
        } finally {
            Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
        }
    }
}
