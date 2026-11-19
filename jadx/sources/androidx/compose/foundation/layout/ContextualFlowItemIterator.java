package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012<\u0010\f\u001a8\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000b0\u0005¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/layout/ContextualFlowItemIterator;", "", "Landroidx/compose/ui/layout/Measurable;", "", "itemCount", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "index", "Landroidx/compose/foundation/layout/FlowLineInfo;", "info", "", "getMeasurables", "<init>", "(ILkotlin/jvm/functions/Function2;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContextualFlowItemIterator implements Iterator<Measurable>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f4948c;
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4950f;

    public ContextualFlowItemIterator(int i2, Function2<? super Integer, ? super FlowLineInfo, ? extends List<? extends Measurable>> function2) {
        this.f4947b = i2;
        this.f4948c = function2;
    }

    public final Measurable a(FlowLineInfo flowLineInfo) {
        int i2 = this.f4950f;
        ArrayList arrayList = this.d;
        if (i2 < arrayList.size()) {
            Measurable measurable = (Measurable) arrayList.get(this.f4950f);
            this.f4950f++;
            return measurable;
        }
        int i3 = this.f4949e;
        if (i3 >= this.f4947b) {
            throw new IndexOutOfBoundsException("No item returned at index call. Index: " + this.f4949e);
        }
        List list = (List) this.f4948c.invoke(Integer.valueOf(i3), flowLineInfo);
        this.f4949e++;
        if (list.isEmpty()) {
            return a(new FlowLineInfo(0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 15, null));
        }
        Measurable measurable2 = (Measurable) CollectionsKt.B(list);
        arrayList.addAll(list);
        this.f4950f++;
        return measurable2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4950f < this.d.size() || this.f4949e < this.f4947b;
    }

    @Override // java.util.Iterator
    public final Measurable next() {
        return a(new FlowLineInfo(0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 15, null));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
