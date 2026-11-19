package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IntOffsetKt {
    public static final long a(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        IntOffset.Companion companion = IntOffset.f11012b;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat + ((int) (j3 >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) + ((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
        Offset.Companion companion2 = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public static final long b(long j2) {
        int iRound = Math.round(Float.intBitsToFloat((int) (j2 >> 32)));
        long jRound = (((long) Math.round(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iRound) << 32);
        IntOffset.Companion companion = IntOffset.f11012b;
        return jRound;
    }
}
