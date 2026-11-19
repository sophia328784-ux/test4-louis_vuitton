package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LookaheadDelegate;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LookaheadLayoutCoordinatesKt {
    public static final LookaheadDelegate a(LookaheadDelegate lookaheadDelegate) {
        LayoutNode layoutNodeO = lookaheadDelegate.q.q;
        while (true) {
            LayoutNode layoutNodeO2 = layoutNodeO.O();
            if ((layoutNodeO2 != null ? layoutNodeO2.f9694j : null) == null) {
                LookaheadDelegate t0 = layoutNodeO.H.d.getT0();
                t0.getClass();
                return t0;
            }
            LayoutNode layoutNodeO3 = layoutNodeO.O();
            LayoutNode layoutNode = layoutNodeO3 != null ? layoutNodeO3.f9694j : null;
            layoutNode.getClass();
            if (layoutNode.f9693i) {
                layoutNodeO = layoutNodeO.O();
                layoutNodeO.getClass();
            } else {
                LayoutNode layoutNodeO4 = layoutNodeO.O();
                layoutNodeO4.getClass();
                layoutNodeO = layoutNodeO4.f9694j;
                layoutNodeO.getClass();
            }
        }
    }
}
