package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/material3/ThumbNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "", "checked", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "", "animationSpec", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;ZLandroidx/compose/animation/core/FiniteAnimationSpec;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ThumbNode extends Modifier.Node implements LayoutModifierNode {
    public InteractionSource p;
    public boolean q;
    public FiniteAnimationSpec r;
    public boolean s;
    public Animatable t;
    public Animatable u;
    public float v = Float.NaN;
    public float w = Float.NaN;

    public ThumbNode(InteractionSource interactionSource, boolean z, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.p = interactionSource;
        this.q = z;
        this.r = finiteAnimationSpec;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        BuildersKt.c(V1(), null, null, new ThumbNode$onAttach$1(this, null), 3);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        float f2;
        boolean z = (measurable.l(Constraints.h(j2)) == 0 || measurable.S(Constraints.g(j2)) == 0) ? false : true;
        if (this.s) {
            f2 = SwitchTokens.n;
        } else {
            f2 = (z || this.q) ? SwitchKt.f7358a : SwitchKt.f7359b;
        }
        float fU1 = measureScope.u1(f2);
        Animatable animatable = this.u;
        int iFloatValue = (int) (animatable != null ? ((Number) animatable.d()).floatValue() : fU1);
        Constraints.f10998b.getClass();
        final Placeable placeableT = measurable.T(Constraints.Companion.c(iFloatValue, iFloatValue));
        float fL1 = SwitchKt.d - measureScope.l1(fU1);
        Dp.Companion companion = Dp.f11004c;
        final float fU2 = measureScope.u1(fL1 / 2.0f);
        float fU3 = measureScope.u1((SwitchKt.f7360c - SwitchKt.f7358a) - SwitchKt.f7361e);
        boolean z2 = this.s;
        if (z2 && this.q) {
            fU2 = fU3 - measureScope.u1(SwitchTokens.u);
        } else if (z2 && !this.q) {
            fU2 = measureScope.u1(SwitchTokens.u);
        } else if (this.q) {
            fU2 = fU3;
        }
        Animatable animatable2 = this.u;
        if (!Intrinsics.b(animatable2 != null ? (Float) ((SnapshotMutableStateImpl) animatable2.f3775e).getF10755b() : null, fU1)) {
            BuildersKt.c(V1(), null, null, new ThumbNode$measure$1(this, fU1, null), 3);
        }
        Animatable animatable3 = this.t;
        if (!Intrinsics.b(animatable3 != null ? (Float) ((SnapshotMutableStateImpl) animatable3.f3775e).getF10755b() : null, fU2)) {
            BuildersKt.c(V1(), null, null, new ThumbNode$measure$2(this, fU2, null), 3);
        }
        if (Float.isNaN(this.w) && Float.isNaN(this.v)) {
            this.w = fU1;
            this.v = fU2;
        }
        return measureScope.V0(iFloatValue, iFloatValue, MapsKt.c(), new Function1() { // from class: androidx.compose.material3.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Animatable animatable4 = this.t;
                Placeable.PlacementScope.y(placementScope, placeableT, (int) (animatable4 != null ? ((Number) animatable4.d()).floatValue() : fU2), 0);
                return Unit.f71739a;
            }
        });
    }
}
