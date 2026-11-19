package androidx.compose.ui.unit;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DpKt {
    public static final long a(float f2, float f3) {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        DpSize.Companion companion = DpSize.f11009b;
        return jFloatToRawIntBits;
    }
}
