package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PointerEventKt {
    public static final boolean a(PointerInputChange pointerInputChange) {
        return (pointerInputChange.b() || pointerInputChange.f9333h || !pointerInputChange.d) ? false : true;
    }

    public static final boolean b(PointerInputChange pointerInputChange) {
        return !pointerInputChange.f9333h && pointerInputChange.d;
    }

    public static final boolean c(PointerInputChange pointerInputChange) {
        return (pointerInputChange.b() || !pointerInputChange.f9333h || pointerInputChange.d) ? false : true;
    }

    public static final boolean d(PointerInputChange pointerInputChange) {
        return pointerInputChange.f9333h && !pointerInputChange.d;
    }

    public static final boolean e(PointerInputChange pointerInputChange, long j2, long j3) {
        int i2 = pointerInputChange.f9334i;
        PointerType.f9367b.getClass();
        int i3 = i2 == PointerType.f9368c ? 1 : 0;
        long j4 = pointerInputChange.f9330c;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j4 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax));
        float f2 = i3;
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j3 >> 32)) * f2;
        float f3 = ((int) (j2 >> 32)) + fIntBitsToFloat3;
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)) * f2;
        return (fIntBitsToFloat > f3) | (fIntBitsToFloat < (-fIntBitsToFloat3)) | (fIntBitsToFloat2 < (-fIntBitsToFloat4)) | (fIntBitsToFloat2 > ((int) (j2 & BodyPartID.bodyIdMax)) + fIntBitsToFloat4);
    }

    public static final long f(PointerInputChange pointerInputChange, boolean z) {
        long jE = Offset.e(pointerInputChange.f9330c, pointerInputChange.g);
        if (z || !pointerInputChange.b()) {
            return jE;
        }
        Offset.f8806b.getClass();
        return 0L;
    }
}
