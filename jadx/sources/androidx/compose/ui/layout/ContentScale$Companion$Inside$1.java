package androidx.compose.ui.layout;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/layout/ContentScale$Companion$Inside$1", "Landroidx/compose/ui/layout/ContentScale;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContentScale$Companion$Inside$1 implements ContentScale {
    @Override // androidx.compose.ui.layout.ContentScale
    public final long a(long j2, long j3) {
        if (Float.intBitsToFloat((int) (j2 >> 32)) <= Float.intBitsToFloat((int) (j3 >> 32)) && Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) <= Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax))) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & BodyPartID.bodyIdMax);
            int i2 = ScaleFactor.f9565a;
            return jFloatToRawIntBits;
        }
        float fA = ContentScaleKt.a(j2, j3);
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA)) & BodyPartID.bodyIdMax);
        int i3 = ScaleFactor.f9565a;
        return jFloatToRawIntBits2;
    }
}
