package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutModifierNodeCoordinatorKt {
    public static final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, AlignmentLine alignmentLine) {
        long j2;
        LookaheadCapablePlaceable lookaheadCapablePlaceableI0 = lookaheadCapablePlaceable.I0();
        if (lookaheadCapablePlaceableI0 == null) {
            InlineClassHelperKt.c("Child of " + lookaheadCapablePlaceable + " cannot be null when calculating alignment line");
        }
        if (lookaheadCapablePlaceable.K0().getF9728c().containsKey(alignmentLine)) {
            Integer num = (Integer) lookaheadCapablePlaceable.K0().getF9728c().get(alignmentLine);
            if (num != null) {
                return num.intValue();
            }
        } else {
            int iW = lookaheadCapablePlaceableI0.W(alignmentLine);
            if (iW != Integer.MIN_VALUE) {
                lookaheadCapablePlaceableI0.f9718k = true;
                lookaheadCapablePlaceable.l = true;
                lookaheadCapablePlaceable.X0();
                lookaheadCapablePlaceableI0.f9718k = false;
                lookaheadCapablePlaceable.l = false;
                if (alignmentLine instanceof HorizontalAlignmentLine) {
                    long r = lookaheadCapablePlaceableI0.getR();
                    IntOffset.Companion companion = IntOffset.f11012b;
                    j2 = r & BodyPartID.bodyIdMax;
                } else {
                    long r2 = lookaheadCapablePlaceableI0.getR();
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    j2 = r2 >> 32;
                }
                return iW + ((int) j2);
            }
        }
        return Integer.MIN_VALUE;
    }
}
