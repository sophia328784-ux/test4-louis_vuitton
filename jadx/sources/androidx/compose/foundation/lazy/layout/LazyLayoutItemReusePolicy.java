package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "factory", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyLayoutItemReusePolicy implements SubcomposeSlotReusePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyLayoutItemContentFactory f5483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableObjectIntMap f5484b = ObjectIntMapKt.a();

    public LazyLayoutItemReusePolicy(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
        this.f5483a = lazyLayoutItemContentFactory;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final void a(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
        MutableObjectIntMap mutableObjectIntMap = this.f5484b;
        mutableObjectIntMap.c();
        MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.f9585b;
        Object[] objArr = mutableOrderedScatterSet.f3351b;
        long[] jArr = mutableOrderedScatterSet.f3352c;
        int i2 = mutableOrderedScatterSet.f3353e;
        while (i2 != Integer.MAX_VALUE) {
            int i3 = (int) ((jArr[i2] >> 31) & 2147483647L);
            Object obj = objArr[i2];
            Object objB = this.f5483a.b(obj);
            int iA = mutableObjectIntMap.a(objB);
            int i4 = iA >= 0 ? mutableObjectIntMap.f3342c[iA] : 0;
            if (i4 == 7) {
                slotIdsSet.remove(obj);
            } else {
                mutableObjectIntMap.h(i4 + 1, objB);
            }
            i2 = i3;
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final boolean b(Object obj, Object obj2) {
        LazyLayoutItemContentFactory lazyLayoutItemContentFactory = this.f5483a;
        return Intrinsics.c(lazyLayoutItemContentFactory.b(obj), lazyLayoutItemContentFactory.b(obj2));
    }
}
