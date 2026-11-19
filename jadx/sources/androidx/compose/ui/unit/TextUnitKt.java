package androidx.compose.ui.unit;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextUnitKt {
    public static final void a(long j2) {
        TextUnit.Companion companion = TextUnit.f11023b;
        if ((j2 & 1095216660480L) == 0) {
            InlineClassHelperKt.a("Cannot perform operation for Unspecified type.");
        }
    }

    public static final long b(double d) {
        return d((float) d, 4294967296L);
    }

    public static final long c(int i2) {
        return d(i2, 4294967296L);
    }

    public static final long d(float f2, long j2) {
        long jFloatToRawIntBits = j2 | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
        TextUnit.Companion companion = TextUnit.f11023b;
        return jFloatToRawIntBits;
    }
}
