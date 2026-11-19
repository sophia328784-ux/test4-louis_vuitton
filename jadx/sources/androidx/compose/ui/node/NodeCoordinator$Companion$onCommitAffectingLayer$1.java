package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "coordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class NodeCoordinator$Companion$onCommitAffectingLayer$1 extends Lambda implements Function1<NodeCoordinator, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final NodeCoordinator$Companion$onCommitAffectingLayer$1 f9784c = new NodeCoordinator$Companion$onCommitAffectingLayer$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OwnedLayer ownedLayer = ((NodeCoordinator) obj).P;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
        return Unit.f71739a;
    }
}
