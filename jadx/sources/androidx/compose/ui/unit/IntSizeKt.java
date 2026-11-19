package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IntSizeKt {
    public static final long a(int i2, int i3) {
        long j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        return j2;
    }

    public static final long b(long j2) {
        int iRound = Math.round(Float.intBitsToFloat((int) (j2 >> 32)));
        long jRound = (((long) Math.round(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iRound) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        return jRound;
    }

    public static final long c(long j2) {
        int iIntBitsToFloat = (int) Float.intBitsToFloat((int) (j2 >> 32));
        long jIntBitsToFloat = (((long) ((int) Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iIntBitsToFloat) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        return jIntBitsToFloat;
    }

    public static final long d(long j2) {
        float f2 = (int) (j2 >> 32);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }
}
