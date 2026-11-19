package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "parentLayer", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class NodeCoordinator$drawBlock$1 extends Lambda implements Function2<Canvas, GraphicsLayer, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NodeCoordinator f9786c;
    public final /* synthetic */ Function0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NodeCoordinator$drawBlock$1(NodeCoordinator nodeCoordinator, Function0 function0) {
        super(2);
        this.f9786c = nodeCoordinator;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Canvas canvas = (Canvas) obj;
        GraphicsLayer graphicsLayer = (GraphicsLayer) obj2;
        NodeCoordinator nodeCoordinator = this.f9786c;
        LayoutNode layoutNode = nodeCoordinator.q;
        if (layoutNode.A()) {
            nodeCoordinator.L = canvas;
            nodeCoordinator.K = graphicsLayer;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode).getSnapshotObserver();
            snapshotObserver.f9812a.e(nodeCoordinator, NodeCoordinator.T, this.d);
            nodeCoordinator.O = false;
        } else {
            nodeCoordinator.O = true;
        }
        return Unit.f71739a;
    }
}
