package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeMeasuringIntrinsics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ApproachLayoutModifierNode extends LayoutModifierNode {
    default int D0(ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        NodeCoordinator nodeCoordinator = getF8608b().f8613i;
        nodeCoordinator.getClass();
        LookaheadDelegate b1 = nodeCoordinator.getT0();
        b1.getClass();
        return b1.J0() ? NodeMeasuringIntrinsics.d(new NodeMeasuringIntrinsics.ApproachMeasureBlock() { // from class: androidx.compose.ui.layout.ApproachLayoutModifierNode$minApproachIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.ApproachMeasureBlock
            public final MeasureResult a(ApproachIntrinsicsMeasureScope approachIntrinsicsMeasureScope, Measurable measurable, long j2) {
                return this.f9429a.I0(approachIntrinsicsMeasureScope, measurable, j2);
            }
        }, approachIntrinsicMeasureScope, intrinsicMeasurable, i2) : intrinsicMeasurable.M(i2);
    }

    MeasureResult I0(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j2);

    default int Y0(ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        NodeCoordinator nodeCoordinator = getF8608b().f8613i;
        nodeCoordinator.getClass();
        LookaheadDelegate b1 = nodeCoordinator.getT0();
        b1.getClass();
        return b1.J0() ? NodeMeasuringIntrinsics.b(new NodeMeasuringIntrinsics.ApproachMeasureBlock() { // from class: androidx.compose.ui.layout.ApproachLayoutModifierNode$maxApproachIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.ApproachMeasureBlock
            public final MeasureResult a(ApproachIntrinsicsMeasureScope approachIntrinsicsMeasureScope, Measurable measurable, long j2) {
                return this.f9426a.I0(approachIntrinsicsMeasureScope, measurable, j2);
            }
        }, approachIntrinsicMeasureScope, intrinsicMeasurable, i2) : intrinsicMeasurable.S(i2);
    }

    default int Z0(ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        NodeCoordinator nodeCoordinator = getF8608b().f8613i;
        nodeCoordinator.getClass();
        LookaheadDelegate b1 = nodeCoordinator.getT0();
        b1.getClass();
        return b1.J0() ? NodeMeasuringIntrinsics.a(new NodeMeasuringIntrinsics.ApproachMeasureBlock() { // from class: androidx.compose.ui.layout.ApproachLayoutModifierNode$maxApproachIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.ApproachMeasureBlock
            public final MeasureResult a(ApproachIntrinsicsMeasureScope approachIntrinsicsMeasureScope, Measurable measurable, long j2) {
                return this.f9425a.I0(approachIntrinsicsMeasureScope, measurable, j2);
            }
        }, approachIntrinsicMeasureScope, intrinsicMeasurable, i2) : intrinsicMeasurable.l(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    default MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        final Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.ApproachLayoutModifierNode$measure$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Placeable.PlacementScope) obj).j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            }
        });
    }

    boolean e1();

    default int j1(ApproachIntrinsicMeasureScope approachIntrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        NodeCoordinator nodeCoordinator = getF8608b().f8613i;
        nodeCoordinator.getClass();
        LookaheadDelegate b1 = nodeCoordinator.getT0();
        b1.getClass();
        return b1.J0() ? NodeMeasuringIntrinsics.c(new NodeMeasuringIntrinsics.ApproachMeasureBlock() { // from class: androidx.compose.ui.layout.ApproachLayoutModifierNode$minApproachIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.ApproachMeasureBlock
            public final MeasureResult a(ApproachIntrinsicsMeasureScope approachIntrinsicsMeasureScope, Measurable measurable, long j2) {
                return this.f9428a.I0(approachIntrinsicsMeasureScope, measurable, j2);
            }
        }, approachIntrinsicMeasureScope, intrinsicMeasurable, i2) : intrinsicMeasurable.H(i2);
    }
}
