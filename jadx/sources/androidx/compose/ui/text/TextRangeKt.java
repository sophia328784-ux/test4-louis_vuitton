package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextRangeKt {
    public static final long a(int i2, int i3) {
        if (i2 < 0 || i3 < 0) {
            InlineClassHelperKt.a("start and end cannot be negative. [start: " + i2 + ", end: " + i3 + ']');
        }
        long j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
        TextRange.Companion companion = TextRange.f10564b;
        return j2;
    }

    public static final long b(int i2, long j2) {
        TextRange.Companion companion = TextRange.f10564b;
        int i3 = (int) (j2 >> 32);
        int i4 = i3 < 0 ? 0 : i3;
        if (i4 > i2) {
            i4 = i2;
        }
        int i5 = (int) (BodyPartID.bodyIdMax & j2);
        int i6 = i5 >= 0 ? i5 : 0;
        if (i6 <= i2) {
            i2 = i6;
        }
        return (i4 == i3 && i2 == i5) ? j2 : a(i4, i2);
    }
}
