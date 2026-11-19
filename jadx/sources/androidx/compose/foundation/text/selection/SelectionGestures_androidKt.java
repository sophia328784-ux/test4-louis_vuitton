package androidx.compose.foundation.text.selection;

import android.view.MotionEvent;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionGestures_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6425a = SelectionAdjustment.Companion.f6398b;

    public static final boolean a(PointerEvent pointerEvent) {
        MotionEvent motionEventA;
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = ((PointerInputChange) list.get(i2)).f9334i;
            PointerType.f9367b.getClass();
            if (i3 != PointerType.d) {
                MotionEvent motionEventA2 = pointerEvent.a();
                if ((motionEventA2 == null || !motionEventA2.isFromSource(8194)) && ((motionEventA = pointerEvent.a()) == null || !motionEventA.isFromSource(1048584))) {
                    return false;
                }
            }
        }
        return true;
    }
}
