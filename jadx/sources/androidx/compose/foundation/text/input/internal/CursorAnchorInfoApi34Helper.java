package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi34Helper;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CursorAnchorInfoApi34Helper {
    public static final void a(CursorAnchorInfo.Builder builder, TextLayoutResult textLayoutResult, Rect rect) {
        if (rect.f()) {
            return;
        }
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        int i2 = multiParagraph.f10465f - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        int iD = RangesKt.d(multiParagraph.e(rect.f8812b), 0, i2);
        int iD2 = RangesKt.d(multiParagraph.e(rect.d), 0, i2);
        if (iD > iD2) {
            return;
        }
        while (true) {
            builder.addVisibleLineBounds(textLayoutResult.f(iD), multiParagraph.f(iD), textLayoutResult.g(iD), multiParagraph.b(iD));
            if (iD == iD2) {
                return;
            } else {
                iD++;
            }
        }
    }
}
