package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionManagerKt {
    static {
        new Rect(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    }

    public static final Rect a(LayoutCoordinates layoutCoordinates) {
        Rect rectB = LayoutCoordinatesKt.b(layoutCoordinates, true);
        long jB = layoutCoordinates.B(rectB.d());
        float f2 = rectB.f8813c;
        float f3 = rectB.d;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        long jB2 = layoutCoordinates.B(jFloatToRawIntBits);
        return new Rect(Float.intBitsToFloat((int) (jB >> 32)), Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (jB2 >> 32)), Float.intBitsToFloat((int) (jB2 & BodyPartID.bodyIdMax)));
    }
}
