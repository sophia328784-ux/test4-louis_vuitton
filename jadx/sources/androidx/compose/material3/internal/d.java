package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MeasureScope f7690c;
    public final /* synthetic */ Placeable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Modifier.Node f7691e;

    public /* synthetic */ d(MeasureScope measureScope, Modifier.Node node, Placeable placeable, int i2) {
        this.f7689b = i2;
        this.f7690c = measureScope;
        this.f7691e = node;
        this.d = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f7689b;
        Placeable placeable = this.d;
        Modifier.Node node = this.f7691e;
        MeasureScope measureScope = this.f7690c;
        switch (i2) {
            case 0:
                DraggableAnchorsNode draggableAnchorsNode = (DraggableAnchorsNode) node;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean zU0 = measureScope.u0();
                AnchoredDraggableState anchoredDraggableState = draggableAnchorsNode.p;
                float fC = zU0 ? anchoredDraggableState.e().c(draggableAnchorsNode.p.f7521h.getF10755b()) : anchoredDraggableState.g();
                Orientation orientation = draggableAnchorsNode.r;
                float f2 = orientation == Orientation.Horizontal ? fC : 0.0f;
                if (orientation != Orientation.Vertical) {
                    fC = 0.0f;
                }
                placementScope.f9552b = true;
                placementScope.j(placeable, MathKt.c(f2), MathKt.c(fC), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                placementScope.f9552b = false;
                break;
            default:
                DraggableAnchorsNodeV2 draggableAnchorsNodeV2 = (DraggableAnchorsNodeV2) node;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                boolean zU1 = measureScope.u0();
                androidx.compose.foundation.gestures.AnchoredDraggableState anchoredDraggableState2 = draggableAnchorsNodeV2.p;
                float fC2 = zU1 ? anchoredDraggableState2.b().c(draggableAnchorsNodeV2.p.f4403i.getF10755b()) : anchoredDraggableState2.e();
                float f3 = (DelegatableNodeKt.f(draggableAnchorsNodeV2).B == LayoutDirection.Rtl && draggableAnchorsNodeV2.r == Orientation.Horizontal) ? -1.0f : 1.0f;
                Orientation orientation2 = draggableAnchorsNodeV2.r;
                float f4 = orientation2 == Orientation.Horizontal ? f3 * fC2 : 0.0f;
                if (orientation2 != Orientation.Vertical) {
                    fC2 = 0.0f;
                }
                placementScope2.f9552b = true;
                placementScope2.j(placeable, MathKt.c(f4), MathKt.c(fC2), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                placementScope2.f9552b = false;
                break;
        }
        return Unit.f71739a;
    }
}
