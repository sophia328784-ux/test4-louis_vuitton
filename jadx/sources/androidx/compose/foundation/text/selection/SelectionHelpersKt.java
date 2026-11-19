package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionHelpersKt {
    public static final ResolvedTextDirection a(TextLayoutResult textLayoutResult, int i2) {
        TextLayoutInput textLayoutInput = textLayoutResult.f10552a;
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        if (textLayoutInput.f10543a.length() != 0) {
            int iD = multiParagraph.d(i2);
            if ((i2 != 0 && iD == multiParagraph.d(i2 - 1)) || (i2 != textLayoutResult.f10552a.f10543a.f10420c.length() && iD == multiParagraph.d(i2 + 1))) {
                return textLayoutResult.a(i2);
            }
        }
        return textLayoutResult.i(i2);
    }
}
