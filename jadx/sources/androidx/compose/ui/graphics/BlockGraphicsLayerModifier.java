package androidx.compose.ui.graphics;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B \u0012\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "", "Lkotlin/ExtensionFunctionType;", "layerBlock", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BlockGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public Function1 p;

    public BlockGraphicsLayerModifier(Function1<? super GraphicsLayerScope, Unit> function1) {
        this.p = function1;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Shape shape;
        boolean z;
        NodeCoordinator nodeCoordinatorD = DelegatableNodeKt.d(this, 2);
        if (nodeCoordinatorD.J) {
            shape = nodeCoordinatorD.H;
            z = nodeCoordinatorD.I;
        } else {
            ReusableGraphicsLayerScope reusableGraphicsLayerScope = GraphicsLayerModifierKt.f8890a;
            if (reusableGraphicsLayerScope == null) {
                GraphicsLayerModifierKt.f8890a = new ReusableGraphicsLayerScope();
            } else {
                reusableGraphicsLayerScope.c();
            }
            ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = GraphicsLayerModifierKt.f8890a;
            reusableGraphicsLayerScope2.getClass();
            reusableGraphicsLayerScope2.t = nodeCoordinatorD.q.A;
            reusableGraphicsLayerScope2.s = IntSizeKt.d(nodeCoordinatorD.d);
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                this.p.invoke(reusableGraphicsLayerScope2);
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                shape = reusableGraphicsLayerScope2.p;
                z = reusableGraphicsLayerScope2.q;
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                throw th;
            }
        }
        if (z) {
            SemanticsPropertiesKt.q(semanticsPropertyReceiver, shape);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        final Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.graphics.BlockGraphicsLayerModifier$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope.F((Placeable.PlacementScope) obj, placeableT, 0, 0, this.p, 4);
                return Unit.f71739a;
            }
        });
    }

    public final String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.p + ')';
    }
}
