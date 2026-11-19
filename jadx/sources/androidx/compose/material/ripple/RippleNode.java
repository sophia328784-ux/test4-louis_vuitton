package androidx.compose.material.ripple;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B5\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/material/ripple/RippleNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "", "bounded", "Landroidx/compose/ui/unit/Dp;", "radius", "Landroidx/compose/ui/graphics/ColorProducer;", "color", "Lkotlin/Function0;", "Landroidx/compose/material/ripple/RippleAlpha;", "rippleAlpha", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RippleNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, DrawModifierNode, LayoutAwareModifierNode {
    public final InteractionSource p;
    public final boolean q;
    public final float r;
    public final ColorProducer s;
    public final Function0 t;
    public StateLayer u;
    public float v;
    public long w;
    public boolean x;
    public final MutableObjectList y;

    public RippleNode(InteractionSource interactionSource, boolean z, float f2, ColorProducer colorProducer, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = interactionSource;
        this.q = z;
        this.r = f2;
        this.s = colorProducer;
        this.t = function0;
        Size.f8820b.getClass();
        this.w = 0L;
        this.y = new MutableObjectList(0, 1, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        BuildersKt.c(V1(), null, null, new RippleNode$onAttach$1(this, null), 3);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void c(long j2) {
        float fU1;
        this.x = true;
        Density density = DelegatableNodeKt.f(this).A;
        this.w = IntSizeKt.d(j2);
        float f2 = this.r;
        if (Float.isNaN(f2)) {
            long j3 = this.w;
            float f3 = RippleAnimationKt.f6521a;
            float fD = Size.d(j3);
            fU1 = Offset.d((((long) Float.floatToRawIntBits(Size.b(j3))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fD) << 32)) / 2.0f;
            if (this.q) {
                fU1 += density.u1(RippleAnimationKt.f6521a);
            }
        } else {
            fU1 = density.u1(f2);
        }
        this.v = fU1;
        MutableObjectList mutableObjectList = this.y;
        Object[] objArr = mutableObjectList.f3345a;
        int i2 = mutableObjectList.f3346b;
        for (int i3 = 0; i3 < i2; i3++) {
            j2((PressInteraction) objArr[i3]);
        }
        mutableObjectList.k();
    }

    public abstract void h2(PressInteraction.Press press, long j2, float f2);

    public abstract void i2(LayoutNodeDrawScope layoutNodeDrawScope);

    /* JADX WARN: Code duplicated, block: B:15:0x0072  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        LayoutNodeDrawScope layoutNodeDrawScope2;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        layoutNodeDrawScope.R1();
        StateLayer stateLayer = this.u;
        if (stateLayer != null) {
            float f2 = this.v;
            long jA = this.s.a();
            float fFloatValue = ((Number) stateLayer.f6540c.d()).floatValue();
            if (fFloatValue > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                long jB = Color.b(fFloatValue, jA);
                if (stateLayer.f6538a) {
                    float fD = Size.d(canvasDrawScope.b());
                    float fB = Size.b(canvasDrawScope.b());
                    ClipOp.f8864a.getClass();
                    int i2 = ClipOp.f8865b;
                    CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
                    long jD = canvasDrawScope$drawContext$1.d();
                    canvasDrawScope$drawContext$1.a().p();
                    try {
                        canvasDrawScope$drawContext$1.f9001a.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fD, fB, i2);
                        layoutNodeDrawScope2 = layoutNodeDrawScope;
                        DrawScope.r0(layoutNodeDrawScope2, jB, f2, 0L, null, 124);
                        pq0.y(canvasDrawScope$drawContext$1, jD);
                    } catch (Throwable th) {
                        pq0.y(canvasDrawScope$drawContext$1, jD);
                        throw th;
                    }
                } else {
                    layoutNodeDrawScope2 = layoutNodeDrawScope;
                    DrawScope.r0(layoutNodeDrawScope2, jB, f2, 0L, null, 124);
                }
            } else {
                layoutNodeDrawScope2 = layoutNodeDrawScope;
            }
        } else {
            layoutNodeDrawScope2 = layoutNodeDrawScope;
        }
        i2(layoutNodeDrawScope2);
    }

    public final void j2(PressInteraction pressInteraction) {
        if (pressInteraction instanceof PressInteraction.Press) {
            h2((PressInteraction.Press) pressInteraction, this.w, this.v);
        } else if (pressInteraction instanceof PressInteraction.Release) {
            k2();
        } else if (pressInteraction instanceof PressInteraction.Cancel) {
            k2();
        }
    }

    public abstract void k2();
}
