package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ShadowKt {
    public static final Shadow a(Shadow shadow, Shadow shadow2, float f2) {
        long jG = ColorKt.g(shadow.f8926a, shadow2.f8926a, f2);
        long j2 = shadow.f8927b;
        long j3 = shadow2.f8927b;
        float fB = MathHelpersKt.b(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j3 >> 32)), f2);
        float fB2 = MathHelpersKt.b(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)), f2);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fB)) << 32) | (((long) Float.floatToRawIntBits(fB2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return new Shadow(jG, jFloatToRawIntBits, MathHelpersKt.b(shadow.f8928c, shadow2.f8928c, f2), null);
    }
}
