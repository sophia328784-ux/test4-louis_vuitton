package androidx.compose.ui.draganddrop;

import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DragAndDropNodeKt {
    public static final boolean a(DragAndDropNode dragAndDropNode, long j2) {
        if (!dragAndDropNode.f8608b.o) {
            return false;
        }
        InnerNodeCoordinator innerNodeCoordinator = DelegatableNodeKt.f(dragAndDropNode).H.f9772c;
        if (!innerNodeCoordinator.h0.o) {
            return false;
        }
        long jE = LayoutCoordinatesKt.e(innerNodeCoordinator);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jE >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jE & BodyPartID.bodyIdMax));
        long j3 = dragAndDropNode.u;
        float f2 = ((int) (j3 >> 32)) + fIntBitsToFloat;
        float f3 = ((int) (j3 & BodyPartID.bodyIdMax)) + fIntBitsToFloat2;
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32));
        if (fIntBitsToFloat > fIntBitsToFloat3 || fIntBitsToFloat3 > f2) {
            return false;
        }
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return fIntBitsToFloat2 <= fIntBitsToFloat4 && fIntBitsToFloat4 <= f3;
    }
}
