package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SelectionAdjustment$Companion$Paragraph$1$1 implements BoundaryFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SelectionAdjustment$Companion$Paragraph$1$1 f6400a = new SelectionAdjustment$Companion$Paragraph$1$1();

    @Override // androidx.compose.foundation.text.selection.BoundaryFunction
    public final long a(SelectableInfo selectableInfo, int i2) {
        String str = selectableInfo.f6390f.f10552a.f10543a.f10420c;
        return TextRangeKt.a(StringHelpersKt.b(str, i2), StringHelpersKt.a(str, i2));
    }
}
