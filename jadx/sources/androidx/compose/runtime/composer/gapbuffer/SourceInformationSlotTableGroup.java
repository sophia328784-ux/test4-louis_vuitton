package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;", "Landroidx/compose/runtime/tooling/CompositionGroup;", "", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "", "parent", "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;", "sourceInformation", "Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;", "identityPath", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SourceInformationSlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotTable f8231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8232c;
    public final GapGroupSourceInformation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SourceInformationGroupPath f8233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Iterable f8234f;

    public SourceInformationSlotTableGroup(SlotTable slotTable, int i2, GapGroupSourceInformation gapGroupSourceInformation, SourceInformationGroupPath sourceInformationGroupPath) {
        this.f8231b = slotTable;
        this.f8232c = i2;
        this.d = gapGroupSourceInformation;
        this.f8233e = sourceInformationGroupPath;
        int i3 = gapGroupSourceInformation.f8188a;
        this.f8234f = this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SourceInformationSlotTableGroup)) {
            return false;
        }
        SourceInformationSlotTableGroup sourceInformationSlotTableGroup = (SourceInformationSlotTableGroup) obj;
        return sourceInformationSlotTableGroup.f8232c == this.f8232c && Intrinsics.c(sourceInformationSlotTableGroup.f8231b, this.f8231b) && Intrinsics.c(sourceInformationSlotTableGroup.f8233e, this.f8233e);
    }

    public final int hashCode() {
        return this.f8233e.hashCode() + ((this.f8231b.hashCode() + (this.f8232c * 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator<CompositionGroup> iterator() {
        return new SourceInformationGroupIterator(this.f8231b, this.f8232c, this.d, this.f8233e);
    }
}
