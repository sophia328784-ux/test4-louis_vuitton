package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;", "", "Landroidx/compose/runtime/tooling/CompositionGroup;", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "", "start", "end", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GroupIterator implements Iterator<CompositionGroup>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotTable f8191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8192c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8193e;

    public GroupIterator(SlotTable slotTable, int i2, int i3) {
        this.f8191b = slotTable;
        this.f8192c = i3;
        this.d = i2;
        this.f8193e = slotTable.f8213i;
        if (slotTable.f8212h) {
            SlotTableKt.g();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d < this.f8192c;
    }

    @Override // java.util.Iterator
    public final CompositionGroup next() {
        SlotTable slotTable = this.f8191b;
        int i2 = slotTable.f8213i;
        int i3 = this.f8193e;
        if (i2 != i3) {
            SlotTableKt.g();
        }
        int i4 = this.d;
        this.d = SlotTableKt.a(i4, slotTable.f8208b) + i4;
        return new SlotTableGroup(slotTable, i4, i3);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
