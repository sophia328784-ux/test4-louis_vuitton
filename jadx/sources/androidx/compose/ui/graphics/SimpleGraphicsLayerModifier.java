package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B©\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "", "scaleX", "scaleY", "alpha", "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "Landroidx/compose/ui/graphics/TransformOrigin;", "transformOrigin", "Landroidx/compose/ui/graphics/Shape;", "shape", "", "clip", "Landroidx/compose/ui/graphics/RenderEffect;", "renderEffect", "Landroidx/compose/ui/graphics/Color;", "ambientShadowColor", "spotShadowColor", "Landroidx/compose/ui/graphics/CompositingStrategy;", "compositingStrategy", "Landroidx/compose/ui/graphics/BlendMode;", "blendMode", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "<init>", "(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SimpleGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public Shape A;
    public boolean B;
    public RenderEffect C;
    public long D;
    public long E;
    public int F;
    public int G;
    public ColorFilter H;
    public final Function1 I;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public float x;
    public float y;
    public long z;

    /* JADX WARN: Illegal instructions before constructor call */
    public SimpleGraphicsLayerModifier(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, long j2, Shape shape, boolean z, RenderEffect renderEffect, long j3, long j4, int i2, int i3, ColorFilter colorFilter, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        int i5;
        int i6;
        if ((i4 & 65536) != 0) {
            CompositingStrategy.f8875a.getClass();
            i5 = 0;
        } else {
            i5 = i2;
        }
        if ((i4 & 131072) != 0) {
            BlendMode.f8847a.getClass();
            i6 = BlendMode.d;
        } else {
            i6 = i3;
        }
        this(f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, j2, shape, z, renderEffect, j3, j4, i5, i6, (i4 & 262144) != 0 ? null : colorFilter, null);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.B) {
            SemanticsPropertiesKt.q(semanticsPropertyReceiver, this.A);
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
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope.F((Placeable.PlacementScope) obj, placeableT, 0, 0, this.I, 4);
                return Unit.f71739a;
            }
        });
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SimpleGraphicsLayerModifier(scaleX=");
        sb.append(this.p);
        sb.append(", scaleY=");
        sb.append(this.q);
        sb.append(", alpha = ");
        sb.append(this.r);
        sb.append(", translationX=");
        sb.append(this.s);
        sb.append(", translationY=");
        sb.append(this.t);
        sb.append(", shadowElevation=");
        sb.append(this.u);
        sb.append(", rotationX=");
        sb.append(this.v);
        sb.append(", rotationY=");
        sb.append(this.w);
        sb.append(", rotationZ=");
        sb.append(this.x);
        sb.append(", cameraDistance=");
        sb.append(this.y);
        sb.append(", transformOrigin=");
        sb.append((Object) TransformOrigin.d(this.z));
        sb.append(", shape=");
        sb.append(this.A);
        sb.append(", clip=");
        sb.append(this.B);
        sb.append(", renderEffect=");
        sb.append(this.C);
        sb.append(", ambientShadowColor=");
        o60.y(this.D, ", spotShadowColor=", sb);
        o60.y(this.E, ", compositingStrategy=", sb);
        int i2 = this.F;
        CompositingStrategy.Companion companion = CompositingStrategy.f8875a;
        sb.append((Object) ("CompositingStrategy(value=" + i2 + ')'));
        sb.append(", blendMode=");
        sb.append((Object) BlendMode.a(this.G));
        sb.append(", colorFilter=");
        sb.append(this.H);
        sb.append(')');
        return sb.toString();
    }

    public SimpleGraphicsLayerModifier(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, long j2, Shape shape, boolean z, RenderEffect renderEffect, long j3, long j4, int i2, int i3, ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = f2;
        this.q = f3;
        this.r = f4;
        this.s = f5;
        this.t = f6;
        this.u = f7;
        this.v = f8;
        this.w = f9;
        this.x = f10;
        this.y = f11;
        this.z = j2;
        this.A = shape;
        this.B = z;
        this.C = renderEffect;
        this.D = j3;
        this.E = j4;
        this.F = i2;
        this.G = i3;
        this.H = colorFilter;
        this.I = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = this.f8929c;
                graphicsLayerScope.m(simpleGraphicsLayerModifier.p);
                graphicsLayerScope.x(simpleGraphicsLayerModifier.q);
                graphicsLayerScope.d(simpleGraphicsLayerModifier.r);
                graphicsLayerScope.D(simpleGraphicsLayerModifier.s);
                graphicsLayerScope.g(simpleGraphicsLayerModifier.t);
                graphicsLayerScope.t(simpleGraphicsLayerModifier.u);
                graphicsLayerScope.r(simpleGraphicsLayerModifier.v);
                graphicsLayerScope.s(simpleGraphicsLayerModifier.w);
                graphicsLayerScope.v(simpleGraphicsLayerModifier.x);
                graphicsLayerScope.q(simpleGraphicsLayerModifier.y);
                graphicsLayerScope.C0(simpleGraphicsLayerModifier.z);
                graphicsLayerScope.r1(simpleGraphicsLayerModifier.A);
                graphicsLayerScope.o(simpleGraphicsLayerModifier.B);
                graphicsLayerScope.n(simpleGraphicsLayerModifier.C);
                graphicsLayerScope.k(simpleGraphicsLayerModifier.D);
                graphicsLayerScope.p(simpleGraphicsLayerModifier.E);
                graphicsLayerScope.g0(simpleGraphicsLayerModifier.F);
                graphicsLayerScope.i(simpleGraphicsLayerModifier.G);
                graphicsLayerScope.A(simpleGraphicsLayerModifier.H);
                return Unit.f71739a;
            }
        };
    }
}
