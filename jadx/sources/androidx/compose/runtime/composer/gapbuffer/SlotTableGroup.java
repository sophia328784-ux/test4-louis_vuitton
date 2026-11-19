package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SlotTableGroup;", "Landroidx/compose/runtime/tooling/CompositionGroup;", "", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "", "group", "version", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotTable f8216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8217c;
    public final int d;

    public SlotTableGroup(SlotTable slotTable, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(slotTable, i2, (i4 & 4) != 0 ? slotTable.f8213i : i3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SlotTableGroup)) {
            return false;
        }
        SlotTableGroup slotTableGroup = (SlotTableGroup) obj;
        return slotTableGroup.f8217c == this.f8217c && slotTableGroup.d == this.d && Intrinsics.c(slotTableGroup.f8216b, this.f8216b);
    }

    public final int hashCode() {
        return (this.f8216b.hashCode() * 31) + this.f8217c;
    }

    @Override // java.lang.Iterable
    public final Iterator<CompositionGroup> iterator() {
        SlotTable slotTable = this.f8216b;
        if (slotTable.f8213i != this.d) {
            SlotTableKt.g();
        }
        int i2 = this.f8217c;
        GapGroupSourceInformation gapGroupSourceInformationQ = slotTable.q(i2);
        return gapGroupSourceInformationQ != null ? new SourceInformationGroupIterator(slotTable, i2, gapGroupSourceInformationQ, new AnchoredGroupPath(i2)) : new GroupIterator(slotTable, i2 + 1, SlotTableKt.a(i2, slotTable.f8208b) + i2);
    }

    public SlotTableGroup(SlotTable slotTable, int i2, int i3) {
        this.f8216b = slotTable;
        this.f8217c = i2;
        this.d = i3;
    }
}
