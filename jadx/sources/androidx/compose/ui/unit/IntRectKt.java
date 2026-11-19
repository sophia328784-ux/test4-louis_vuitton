package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IntRectKt {
    public static final IntRect a(long j2, long j3) {
        IntOffset.Companion companion = IntOffset.f11012b;
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        return new IntRect(i2, i3, ((int) (j3 >> 32)) + i2, ((int) (j3 & BodyPartID.bodyIdMax)) + i3);
    }

    public static final IntRect b(Rect rect) {
        return new IntRect(Math.round(rect.f8811a), Math.round(rect.f8812b), Math.round(rect.f8813c), Math.round(rect.d));
    }
}
