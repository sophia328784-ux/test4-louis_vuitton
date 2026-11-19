package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TransformGestureDetectorKt {
    public static final long a(PointerEvent pointerEvent, boolean z) {
        Offset.f8806b.getClass();
        List list = pointerEvent.f9305a;
        int size = list.size();
        long jF = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i3);
            if (pointerInputChange.d && pointerInputChange.f9333h) {
                jF = Offset.f(jF, z ? pointerInputChange.f9330c : pointerInputChange.g);
                i2++;
            }
        }
        if (i2 != 0) {
            return Offset.b(i2, jF);
        }
        Offset.f8806b.getClass();
        return Offset.d;
    }

    public static final float b(PointerEvent pointerEvent, boolean z) {
        long jA = a(pointerEvent, z);
        Offset.f8806b.getClass();
        boolean zC = Offset.c(jA, Offset.d);
        float fD = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (zC) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        List list = pointerEvent.f9305a;
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i3);
            if (pointerInputChange.d && pointerInputChange.f9333h) {
                i2++;
                fD = Offset.d(Offset.e(z ? pointerInputChange.f9330c : pointerInputChange.g, jA)) + fD;
            }
        }
        return fD / i2;
    }

    public static final long c(PointerEvent pointerEvent) {
        long jA = a(pointerEvent, true);
        Offset.f8806b.getClass();
        if (Offset.c(jA, Offset.d)) {
            return 0L;
        }
        return Offset.e(jA, a(pointerEvent, false));
    }

    public static final float d(PointerEvent pointerEvent) {
        float fB = b(pointerEvent, true);
        float fB2 = b(pointerEvent, false);
        if (fB == Call.Parameters.DEFAULT_CAMERA_ZOOM || fB2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 1.0f;
        }
        return fB / fB2;
    }
}
