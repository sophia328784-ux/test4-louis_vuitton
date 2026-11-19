package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "typeface", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class HeightInLinesModifierKt {
    public static final void a(int i2, int i3) {
        if (!(i2 > 0 && i3 > 0)) {
            InlineClassHelperKt.a("both minLines " + i2 + " and maxLines " + i3 + " must be greater than zero");
        }
        if (i2 <= i3) {
            return;
        }
        InlineClassHelperKt.a("minLines " + i2 + " must be less than or equal to maxLines " + i3);
    }
}
