package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/layout/FlowLineInfo;", "", "", "lineIndex", "positionInLine", "Landroidx/compose/ui/unit/Dp;", "maxMainAxisSize", "maxCrossAxisSize", "<init>", "(IIFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FlowLineInfo {
    /* JADX WARN: Illegal instructions before constructor call */
    public FlowLineInfo(int i2, int i3, float f2, float f3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        i2 = (i4 & 1) != 0 ? 0 : i2;
        i3 = (i4 & 2) != 0 ? 0 : i3;
        if ((i4 & 4) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i4 & 8) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        this(i2, i3, f2, f3, null);
    }

    public FlowLineInfo(int i2, int i3, float f2, float f3, DefaultConstructorMarker defaultConstructorMarker) {
    }
}
