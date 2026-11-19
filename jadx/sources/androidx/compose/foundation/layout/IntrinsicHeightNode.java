package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/IntrinsicHeightNode;", "Landroidx/compose/foundation/layout/IntrinsicSizeModifier;", "Landroidx/compose/foundation/layout/IntrinsicSize;", "height", "", "enforceIncoming", "<init>", "(Landroidx/compose/foundation/layout/IntrinsicSize;Z)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class IntrinsicHeightNode extends IntrinsicSizeModifier {
    public IntrinsicSize p;
    public boolean q;

    public IntrinsicHeightNode(IntrinsicSize intrinsicSize, boolean z) {
        this.p = intrinsicSize;
        this.q = z;
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    public final long h2(Measurable measurable, long j2) {
        int iH = this.p == IntrinsicSize.Min ? measurable.H(Constraints.h(j2)) : measurable.l(Constraints.h(j2));
        if (iH < 0) {
            iH = 0;
        }
        Constraints.f10998b.getClass();
        return Constraints.Companion.d(iH);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    /* JADX INFO: renamed from: i2, reason: from getter */
    public final boolean getQ() {
        return this.q;
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return this.p == IntrinsicSize.Min ? intrinsicMeasurable.H(i2) : intrinsicMeasurable.l(i2);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return this.p == IntrinsicSize.Min ? intrinsicMeasurable.H(i2) : intrinsicMeasurable.l(i2);
    }
}
