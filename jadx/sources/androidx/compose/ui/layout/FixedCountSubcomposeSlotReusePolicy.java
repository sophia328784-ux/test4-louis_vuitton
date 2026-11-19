package androidx.compose.ui.layout;

import androidx.collection.MutableOrderedScatterSet;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "", "maxSlotsToRetainForReuse", "<init>", "(I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FixedCountSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9456a;

    public FixedCountSubcomposeSlotReusePolicy(int i2) {
        this.f9456a = i2;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final void a(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
        int i2;
        MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.f9585b;
        int i3 = mutableOrderedScatterSet.g;
        int i4 = this.f9456a;
        if (i3 > i4) {
            long[] jArr = mutableOrderedScatterSet.f3352c;
            int i5 = mutableOrderedScatterSet.d;
            while (i5 != Integer.MAX_VALUE && (i2 = mutableOrderedScatterSet.g) > i4 && i2 != 0) {
                int i6 = (int) (jArr[i5] & 2147483647L);
                mutableOrderedScatterSet.j(i5);
                i5 = i6;
            }
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final boolean b(Object obj, Object obj2) {
        return true;
    }
}
