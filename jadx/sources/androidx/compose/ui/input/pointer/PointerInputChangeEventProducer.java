package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.compose.ui.platform.AndroidComposeView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;", "", "<init>", "()V", "PointerInputData", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PointerInputChangeEventProducer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LongSparseArray f9337a = new LongSparseArray(0, 1, null);

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;", "", "", "uptime", "Landroidx/compose/ui/geometry/Offset;", "positionOnScreen", "", "down", "<init>", "(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PointerInputData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f9338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f9339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f9340c;

        public PointerInputData(long j2, long j3, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this.f9338a = j2;
            this.f9339b = j3;
            this.f9340c = z;
        }
    }

    public final InternalPointerEvent a(PointerInputEvent pointerInputEvent, AndroidComposeView androidComposeView) {
        long jF;
        long j2;
        boolean z;
        LongSparseArray longSparseArray = new LongSparseArray(pointerInputEvent.f9341a.size());
        List list = pointerInputEvent.f9341a;
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) list.get(i2);
            long j3 = pointerInputEventData.f9343a;
            LongSparseArray longSparseArray2 = this.f9337a;
            PointerInputData pointerInputData = (PointerInputData) longSparseArray2.b(j3);
            if (pointerInputData == null) {
                j2 = pointerInputEventData.f9344b;
                jF = pointerInputEventData.d;
                z = false;
            } else {
                long j4 = pointerInputData.f9338a;
                boolean z2 = pointerInputData.f9340c;
                jF = androidComposeView.f(pointerInputData.f9339b);
                j2 = j4;
                z = z2;
            }
            long j5 = pointerInputEventData.f9343a;
            List list2 = list;
            int i3 = size;
            longSparseArray.e(j5, new PointerInputChange(j5, pointerInputEventData.f9344b, pointerInputEventData.d, pointerInputEventData.f9346e, pointerInputEventData.f9347f, j2, jF, z, false, pointerInputEventData.g, pointerInputEventData.f9349i, pointerInputEventData.f9350j, pointerInputEventData.f9351k, pointerInputEventData.l, pointerInputEventData.m, null));
            boolean z3 = pointerInputEventData.f9346e;
            if (z3) {
                longSparseArray2.e(j3, new PointerInputData(pointerInputEventData.f9344b, pointerInputEventData.f9345c, z3, null));
            } else {
                longSparseArray2.f(j3);
            }
            i2++;
            list = list2;
            size = i3;
        }
        return new InternalPointerEvent(longSparseArray, pointerInputEvent);
    }
}
