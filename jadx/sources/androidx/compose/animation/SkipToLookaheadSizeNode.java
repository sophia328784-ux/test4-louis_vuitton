package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactor;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/SkipToLookaheadSizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/animation/ScaleToBoundsImpl;", "scaleToBounds", "Lkotlin/Function0;", "", "isEnabled", "<init>", "(Landroidx/compose/animation/ScaleToBoundsImpl;Lkotlin/jvm/functions/Function0;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SkipToLookaheadSizeNode extends Modifier.Node implements LayoutModifierNode {
    public final MutableState p;
    public final MutableState q;
    public Constraints r;
    public long s = AnimationModifierKt.f3534a;

    public SkipToLookaheadSizeNode(ScaleToBoundsImpl scaleToBoundsImpl, Function0<Boolean> function0) {
        this.p = SnapshotStateKt.g(scaleToBoundsImpl);
        this.q = SnapshotStateKt.g(function0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(final MeasureScope measureScope, Measurable measurable, long j2) {
        Placeable placeableT;
        if (measureScope.u0()) {
            this.r = new Constraints(j2);
        }
        if (!((Boolean) ((Function0) ((SnapshotMutableStateImpl) this.q).getF10755b()).mo47invoke()).booleanValue()) {
            final Placeable placeableT2 = measurable.T(j2);
            return measureScope.V0(placeableT2.f9548b, placeableT2.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).j(placeableT2, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    return Unit.f71739a;
                }
            });
        }
        if (measureScope.u0()) {
            placeableT = measurable.T(j2);
            long j3 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
            IntSize.Companion companion = IntSize.f11020b;
            this.s = j3;
        } else {
            Constraints constraints = this.r;
            constraints.getClass();
            placeableT = measurable.T(constraints.f10999a);
        }
        final Placeable placeable = placeableT;
        final long jD = ConstraintsKt.d(j2, this.s);
        return measureScope.V0((int) (jD >> 32), (int) (jD & BodyPartID.bodyIdMax), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final long jFloatToRawIntBits;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                SkipToLookaheadSizeNode skipToLookaheadSizeNode = this.f3739c;
                ScaleToBoundsImpl scaleToBoundsImpl = (ScaleToBoundsImpl) ((SnapshotMutableStateImpl) skipToLookaheadSizeNode.p).getF10755b();
                if (scaleToBoundsImpl == null) {
                    placementScope.j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    ContentScale contentScale = scaleToBoundsImpl.f3645a;
                    long j4 = skipToLookaheadSizeNode.s;
                    if (((int) (j4 >> 32)) == 0 || ((int) (j4 & BodyPartID.bodyIdMax)) == 0) {
                        jFloatToRawIntBits = (((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & BodyPartID.bodyIdMax);
                        int i2 = ScaleFactor.f9565a;
                    } else {
                        jFloatToRawIntBits = contentScale.a(IntSizeKt.d(j4), IntSizeKt.d(jD));
                    }
                    Alignment alignment = scaleToBoundsImpl.f3646b;
                    long jC = (((long) MathKt.c(Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) * ((int) (skipToLookaheadSizeNode.s >> 32)))) << 32) | (((long) MathKt.c(Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)) * ((int) (skipToLookaheadSizeNode.s & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                    IntSize.Companion companion2 = IntSize.f11020b;
                    long jA = alignment.a(jC, jD, measureScope.getF9421c());
                    IntOffset.Companion companion3 = IntOffset.f11012b;
                    Placeable.PlacementScope.F(placementScope, placeable, (int) (jA >> 32), (int) (jA & BodyPartID.bodyIdMax), new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj2;
                            long j5 = jFloatToRawIntBits;
                            graphicsLayerScope.m(Float.intBitsToFloat((int) (j5 >> 32)));
                            graphicsLayerScope.x(Float.intBitsToFloat((int) (j5 & BodyPartID.bodyIdMax)));
                            graphicsLayerScope.C0(TransformOriginKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                            return Unit.f71739a;
                        }
                    }, 4);
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return (lookaheadCapablePlaceable.u0() || !AnimationModifierKt.c(this.s)) ? intrinsicMeasurable.M(i2) : (int) (this.s >> 32);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return (lookaheadCapablePlaceable.u0() || !AnimationModifierKt.c(this.s)) ? intrinsicMeasurable.H(i2) : (int) (this.s & BodyPartID.bodyIdMax);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return (lookaheadCapablePlaceable.u0() || !AnimationModifierKt.c(this.s)) ? intrinsicMeasurable.S(i2) : (int) (this.s >> 32);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return (lookaheadCapablePlaceable.u0() || !AnimationModifierKt.c(this.s)) ? intrinsicMeasurable.l(i2) : (int) (this.s & BodyPartID.bodyIdMax);
    }
}
