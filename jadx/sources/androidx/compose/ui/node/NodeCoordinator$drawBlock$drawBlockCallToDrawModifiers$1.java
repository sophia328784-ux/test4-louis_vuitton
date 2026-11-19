package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Canvas;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1 extends Lambda implements Function0<Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NodeCoordinator f9787c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1(NodeCoordinator nodeCoordinator) {
        super(0);
        this.f9787c = nodeCoordinator;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        NodeCoordinator nodeCoordinator = this.f9787c;
        Canvas canvas = nodeCoordinator.L;
        canvas.getClass();
        nodeCoordinator.e1(canvas, nodeCoordinator.K);
        return Unit.f71739a;
    }
}
