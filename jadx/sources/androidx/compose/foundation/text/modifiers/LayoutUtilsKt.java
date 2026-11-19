package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutUtilsKt {
    public static final long a(long j2, boolean z, int i2, float f2) {
        Constraints.Companion companion = Constraints.f10998b;
        int iH = ((z || b(i2)) && Constraints.d(j2)) ? Constraints.h(j2) : Integer.MAX_VALUE;
        if (Constraints.j(j2) != iH) {
            iH = RangesKt.d(TextDelegateKt.a(f2), Constraints.j(j2), iH);
        }
        int iG = Constraints.g(j2);
        companion.getClass();
        return Constraints.Companion.b(0, iH, 0, iG);
    }

    public static final boolean b(int i2) {
        TextOverflow.Companion companion = TextOverflow.f10989a;
        companion.getClass();
        if (i2 == TextOverflow.f10991c) {
            return true;
        }
        companion.getClass();
        if (i2 == TextOverflow.f10992e) {
            return true;
        }
        companion.getClass();
        return i2 == TextOverflow.f10993f;
    }
}
