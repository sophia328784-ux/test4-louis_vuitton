package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PointerInteropUtils_androidKt {
    public static final void a(PointerEvent pointerEvent, long j2, Function1 function1, boolean z) {
        MotionEvent motionEventA = pointerEvent.a();
        if (motionEventA == null) {
            md.n("The PointerEvent receiver cannot have a null MotionEvent.");
            return;
        }
        int action = motionEventA.getAction();
        if (z) {
            motionEventA.setAction(3);
        }
        int i2 = (int) (j2 >> 32);
        float f2 = -Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        motionEventA.offsetLocation(f2, -Float.intBitsToFloat(i3));
        function1.invoke(motionEventA);
        motionEventA.offsetLocation(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3));
        motionEventA.setAction(action);
    }
}
