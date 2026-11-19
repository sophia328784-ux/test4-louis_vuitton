package androidx.compose.ui.layout;

import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/node/LayoutNode;", "scope", "Landroidx/compose/ui/layout/LookaheadScopeImpl;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class LookaheadScopeKt$LookaheadScope$2$2 extends Lambda implements Function2<LayoutNode, LookaheadScopeImpl, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LookaheadScopeKt$LookaheadScope$2$2 f9526c = new LookaheadScopeKt$LookaheadScope$2$2(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        final LayoutNode layoutNode = (LayoutNode) obj;
        new Function0<LayoutCoordinates>() { // from class: androidx.compose.ui.layout.LookaheadScopeKt$LookaheadScope$2$2.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LayoutNode layoutNodeO = layoutNode.O();
                layoutNodeO.getClass();
                InnerNodeCoordinator innerNodeCoordinator = layoutNodeO.H.f9772c;
                innerNodeCoordinator.getClass();
                return innerNodeCoordinator;
            }
        };
        ((LookaheadScopeImpl) obj2).getClass();
        return Unit.f71739a;
    }
}
