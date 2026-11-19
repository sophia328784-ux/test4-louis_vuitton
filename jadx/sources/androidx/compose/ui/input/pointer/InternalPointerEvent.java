package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "", "Landroidx/collection/LongSparseArray;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "changes", "Landroidx/compose/ui/input/pointer/PointerInputEvent;", "pointerInputEvent", "<init>", "(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InternalPointerEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LongSparseArray f9284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointerInputEvent f9285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9286c;

    public InternalPointerEvent(LongSparseArray<PointerInputChange> longSparseArray, PointerInputEvent pointerInputEvent) {
        this.f9284a = longSparseArray;
        this.f9285b = pointerInputEvent;
    }

    public final boolean a(long j2) {
        Object obj;
        List list = this.f9285b.f9341a;
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i2);
            if (PointerId.a(((PointerInputEventData) obj).f9343a, j2)) {
                break;
            }
            i2++;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData != null) {
            return pointerInputEventData.f9348h;
        }
        return false;
    }
}
