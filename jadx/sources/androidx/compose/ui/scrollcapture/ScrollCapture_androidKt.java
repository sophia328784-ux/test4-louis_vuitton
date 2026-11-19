package androidx.compose.ui.scrollcapture;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollCapture_androidKt {
    public static final void a(SemanticsNode semanticsNode, int i2, Function1 function1) {
        MutableVector mutableVector = new MutableVector(new SemanticsNode[16], 0);
        List listI = semanticsNode.i(false, false);
        while (true) {
            mutableVector.g(mutableVector.d, listI);
            while (true) {
                int i3 = mutableVector.d;
                if (i3 == 0) {
                    return;
                }
                SemanticsNode semanticsNode2 = (SemanticsNode) mutableVector.o(i3 - 1);
                boolean zE = SemanticsOwnerKt.e(semanticsNode2);
                SemanticsConfiguration semanticsConfiguration = semanticsNode2.d;
                if (!zE) {
                    if (semanticsConfiguration.f10312b.c(SemanticsProperties.f10338j)) {
                        continue;
                    } else {
                        NodeCoordinator nodeCoordinatorD = semanticsNode2.d();
                        if (nodeCoordinatorD == null) {
                            throw a.s("Expected semantics node to have a coordinator.");
                        }
                        IntRect intRectB = IntRectKt.b(LayoutCoordinatesKt.b(nodeCoordinatorD, true));
                        if (intRectB.f11017a < intRectB.f11019c && intRectB.f11018b < intRectB.d) {
                            Function2 function2 = (Function2) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.f10305e);
                            ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.w);
                            if (function2 == null || scrollAxisRange == null || ((Number) scrollAxisRange.f10299b.mo47invoke()).floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                listI = semanticsNode2.i(false, false);
                            } else {
                                int i4 = 1 + i2;
                                ((ScrollCapture$onScrollCaptureSearch$1) function1).invoke(new ScrollCaptureCandidate(semanticsNode2, i4, intRectB, nodeCoordinatorD));
                                a(semanticsNode2, i4, function1);
                            }
                        }
                    }
                }
            }
        }
    }
}
