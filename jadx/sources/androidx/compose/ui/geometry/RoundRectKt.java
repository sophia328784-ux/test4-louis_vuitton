package androidx.compose.ui.geometry;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-geometry"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RoundRectKt {
    public static final RoundRect a(Rect rect, long j2, long j3, long j4, long j5) {
        return new RoundRect(rect.f8811a, rect.f8812b, rect.f8813c, rect.d, j2, j3, j4, j5, null);
    }

    public static RoundRect b(Rect rect, long j2, long j3) {
        CornerRadius.Companion companion = CornerRadius.f8802a;
        companion.getClass();
        companion.getClass();
        return a(rect, 0L, 0L, j2, j3);
    }

    public static final RoundRect c(float f2, float f3, float f4, float f5, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(fIntBitsToFloat2)));
        CornerRadius.Companion companion = CornerRadius.f8802a;
        return new RoundRect(f2, f3, f4, f5, jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits, null);
    }

    public static final boolean d(RoundRect roundRect) {
        long j2 = roundRect.f8817e;
        return (j2 >>> 32) == (BodyPartID.bodyIdMax & j2) && j2 == roundRect.f8818f && j2 == roundRect.g && j2 == roundRect.f8819h;
    }
}
