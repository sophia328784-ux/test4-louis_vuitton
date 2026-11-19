package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.os;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;", "", "Landroidx/compose/runtime/tooling/CompositionGroup;", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "", "parent", "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;", "group", "Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;", "path", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SourceInformationGroupIterator implements Iterator<CompositionGroup>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SlotTable f8227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8228c;
    public final GapGroupSourceInformation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SourceInformationGroupPath f8229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8230f;
    public int g;

    public SourceInformationGroupIterator(SlotTable slotTable, int i2, GapGroupSourceInformation gapGroupSourceInformation, SourceInformationGroupPath sourceInformationGroupPath) {
        this.f8227b = slotTable;
        this.f8228c = i2;
        this.d = gapGroupSourceInformation;
        this.f8229e = sourceInformationGroupPath;
        this.f8230f = slotTable.f8213i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        ArrayList arrayList = this.d.d;
        return arrayList != null && this.g < arrayList.size();
    }

    @Override // java.util.Iterator
    public final CompositionGroup next() {
        Object obj;
        ArrayList arrayList = this.d.d;
        if (arrayList != null) {
            int i2 = this.g;
            this.g = i2 + 1;
            obj = arrayList.get(i2);
        } else {
            obj = null;
        }
        boolean z = obj instanceof GapAnchor;
        SlotTable slotTable = this.f8227b;
        if (z) {
            return new SlotTableGroup(slotTable, ((GapAnchor) obj).f8187a, this.f8230f);
        }
        if (!(obj instanceof GapGroupSourceInformation)) {
            ComposerKt.b("Unexpected group information structure");
            os.d();
            return null;
        }
        return new SourceInformationSlotTableGroup(slotTable, this.f8228c, (GapGroupSourceInformation) obj, new RelativeGroupPath(this.f8229e, this.g - 1));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
