package androidx.compose.animation;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/animation/SharedTransitionScopeImpl;", "sharedScope", "<init>", "(Landroidx/compose/animation/SharedTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SharedTransitionScopeRootModifierNode extends Modifier.Node implements LayoutModifierNode, ObserverModifierNode, DrawModifierNode, CompositionLocalConsumerModifierNode {
    public SharedTransitionScopeImpl p;

    public SharedTransitionScopeRootModifierNode(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.p = sharedTransitionScopeImpl;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        ObserverModifierNodeKt.a(this, this.p.f3685e);
        SharedTransitionScopeImpl sharedTransitionScopeImpl = this.p;
        new Function0<Unit>() { // from class: androidx.compose.animation.SharedTransitionScopeRootModifierNode$onAttach$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DrawModifierNodeKt.a(this.f3714c);
                return Unit.f71739a;
            }
        };
        sharedTransitionScopeImpl.getClass();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.p.getClass();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(final MeasureScope measureScope, Measurable measurable, long j2) {
        final Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedTransitionScopeRootModifierNode$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                LayoutCoordinates layoutCoordinatesW = placementScope.w();
                if (layoutCoordinatesW != null) {
                    boolean zU0 = measureScope.u0();
                    SharedTransitionScopeImpl sharedTransitionScopeImpl = this.p;
                    if (zU0) {
                        sharedTransitionScopeImpl.g = layoutCoordinatesW;
                    } else {
                        sharedTransitionScopeImpl.f3686f = layoutCoordinatesW;
                    }
                }
                placementScope.j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        layoutNodeDrawScope.R1();
        SnapshotStateList snapshotStateList = this.p.f3687h;
        if (snapshotStateList.size() > 1) {
            CollectionsKt.m0(new Comparator() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    LayerRenderer layerRenderer = (LayerRenderer) obj;
                    LayerRenderer layerRenderer2 = (LayerRenderer) obj2;
                    return Float.valueOf((layerRenderer.a() == Call.Parameters.DEFAULT_CAMERA_ZOOM && (layerRenderer instanceof SharedElementEntry) && ((SharedElementEntry) layerRenderer).l == null) ? -1.0f : layerRenderer.a()).compareTo(Float.valueOf((layerRenderer2.a() == Call.Parameters.DEFAULT_CAMERA_ZOOM && (layerRenderer2 instanceof SharedElementEntry) && ((SharedElementEntry) layerRenderer2).l == null) ? -1.0f : layerRenderer2.a()));
                }
            }, snapshotStateList);
        }
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((LayerRenderer) snapshotStateList.get(i2)).b(layoutNodeDrawScope);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        this.p.a();
        ObserverModifierNodeKt.a(this, this.p.f3685e);
    }
}
