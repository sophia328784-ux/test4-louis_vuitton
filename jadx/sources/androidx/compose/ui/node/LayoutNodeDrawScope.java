package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/LayoutNodeDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "canvasDrawScope", "<init>", "(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CanvasDrawScope f9701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DrawModifierNode f9702c;

    public /* synthetic */ LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int B0(float f2) {
        return this.f9701b.B0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float E0(long j2) {
        return this.f9701b.E0(j2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void G(long j2, float f2, float f3, long j3, long j4, DrawStyle drawStyle, int i2) {
        this.f9701b.G(j2, f2, f3, j3, j4, drawStyle, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final long G1() {
        return this.f9701b.G1();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void J1(ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3) {
        this.f9701b.J1(imageBitmap, j2, j3, j4, j5, f2, drawStyle, colorFilter, i2, i3);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long K1(long j2) {
        return this.f9701b.K1(j2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void M0(long j2, long j3, long j4, float f2, DrawStyle drawStyle, int i2) {
        this.f9701b.M0(j2, j3, j4, f2, drawStyle, i2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return this.f9701b.Q(f2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void Q0(ImageBitmap imageBitmap, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f9701b.Q0(imageBitmap, j2, f2, drawStyle, colorFilter, i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long R(long j2) {
        return this.f9701b.R(j2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.ContentDrawScope
    public final void R1() {
        CanvasDrawScope canvasDrawScope = this.f9701b;
        Canvas canvasA = canvasDrawScope.f8996c.a();
        DrawModifierNode drawModifierNode = this.f9702c;
        if (drawModifierNode == null) {
            throw a.s("Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer.");
        }
        Modifier.Node nodeB = drawModifierNode.getF8608b().g;
        if (nodeB != null && (nodeB.f8610e & 4) != 0) {
            while (true) {
                if (nodeB != null) {
                    int i2 = nodeB.d;
                    if ((i2 & 2) == 0) {
                        if ((i2 & 4) != 0) {
                            break;
                        } else {
                            nodeB = nodeB.g;
                        }
                    }
                }
                nodeB = null;
                break;
            }
        } else {
            nodeB = null;
            break;
        }
        if (nodeB == null) {
            NodeCoordinator nodeCoordinatorD = DelegatableNodeKt.d(drawModifierNode, 4);
            if (nodeCoordinatorD.p1() == drawModifierNode.getF8608b()) {
                nodeCoordinatorD = nodeCoordinatorD.t;
                nodeCoordinatorD.getClass();
            }
            nodeCoordinatorD.U1(canvasA, canvasDrawScope.f8996c.f9002b);
            return;
        }
        MutableVector mutableVector = null;
        while (nodeB != null) {
            if (nodeB instanceof DrawModifierNode) {
                DrawModifierNode drawModifierNode2 = (DrawModifierNode) nodeB;
                GraphicsLayer graphicsLayer = canvasDrawScope.f8996c.f9002b;
                NodeCoordinator nodeCoordinatorD2 = DelegatableNodeKt.d(drawModifierNode2, 4);
                long jD = IntSizeKt.d(nodeCoordinatorD2.d);
                LayoutNode layoutNode = nodeCoordinatorD2.q;
                layoutNode.getClass();
                LayoutNodeKt.a(layoutNode).getSharedDrawScope().c(canvasA, jD, nodeCoordinatorD2, drawModifierNode2, graphicsLayer);
            } else if ((nodeB.d & 4) != 0 && (nodeB instanceof DelegatingNode)) {
                int i3 = 0;
                for (Modifier.Node node = ((DelegatingNode) nodeB).q; node != null; node = node.g) {
                    if ((node.d & 4) != 0) {
                        i3++;
                        if (i3 == 1) {
                            nodeB = node;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (nodeB != null) {
                                mutableVector.b(nodeB);
                                nodeB = null;
                            }
                            mutableVector.b(node);
                        }
                    }
                }
                if (i3 == 1) {
                }
            }
            nodeB = DelegatableNodeKt.b(mutableVector);
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void U0(Brush brush, long j2, long j3, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f9701b.U0(brush, j2, j3, f2, drawStyle, colorFilter, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void V(long j2, float f2, long j3, DrawStyle drawStyle, int i2) {
        this.f9701b.V(j2, f2, j3, drawStyle, i2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        return this.f9701b.Z(j2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void a0(Path path, long j2, DrawStyle drawStyle, int i2) {
        this.f9701b.a0(path, j2, drawStyle, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final long b() {
        return this.f9701b.b();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void b0(long j2, long j3, long j4, float f2, int i2, PathEffect pathEffect, int i3) {
        this.f9701b.b0(j2, j3, j4, f2, i2, pathEffect, i3);
    }

    public final void c(Canvas canvas, long j2, NodeCoordinator nodeCoordinator, DrawModifierNode drawModifierNode, GraphicsLayer graphicsLayer) {
        DrawModifierNode drawModifierNode2 = this.f9702c;
        this.f9702c = drawModifierNode;
        LayoutDirection layoutDirection = nodeCoordinator.q.B;
        CanvasDrawScope canvasDrawScope = this.f9701b;
        Density densityB = canvasDrawScope.f8996c.b();
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        LayoutDirection layoutDirectionC = canvasDrawScope$drawContext$1.c();
        Canvas canvasA = canvasDrawScope$drawContext$1.a();
        long jD = canvasDrawScope$drawContext$1.d();
        GraphicsLayer graphicsLayer2 = canvasDrawScope$drawContext$1.f9002b;
        canvasDrawScope$drawContext$1.f(nodeCoordinator);
        canvasDrawScope$drawContext$1.g(layoutDirection);
        canvasDrawScope$drawContext$1.e(canvas);
        canvasDrawScope$drawContext$1.h(j2);
        canvasDrawScope$drawContext$1.f9002b = graphicsLayer;
        canvas.p();
        try {
            drawModifierNode.j(this);
            canvas.restore();
            canvasDrawScope$drawContext$1.f(densityB);
            canvasDrawScope$drawContext$1.g(layoutDirectionC);
            canvasDrawScope$drawContext$1.e(canvasA);
            canvasDrawScope$drawContext$1.h(jD);
            canvasDrawScope$drawContext$1.f9002b = graphicsLayer2;
            this.f9702c = drawModifierNode2;
        } catch (Throwable th) {
            canvas.restore();
            canvasDrawScope$drawContext$1.f(densityB);
            canvasDrawScope$drawContext$1.g(layoutDirectionC);
            canvasDrawScope$drawContext$1.e(canvasA);
            canvasDrawScope$drawContext$1.h(jD);
            canvasDrawScope$drawContext$1.f9002b = graphicsLayer2;
            throw th;
        }
    }

    public final void e(long j2, GraphicsLayer graphicsLayer, final Function1 function1) {
        final DrawModifierNode drawModifierNode = this.f9702c;
        graphicsLayer.e(this, getLayoutDirection(), j2, new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeDrawScope$record$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                DrawModifierNode drawModifierNode2;
                DrawScope drawScope = (DrawScope) obj;
                LayoutNodeDrawScope layoutNodeDrawScope = this.f9703c;
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
                DrawModifierNode drawModifierNode3 = layoutNodeDrawScope.f9702c;
                layoutNodeDrawScope.f9702c = drawModifierNode;
                try {
                    Density densityB = drawScope.getF8996c().b();
                    LayoutDirection layoutDirectionC = drawScope.getF8996c().c();
                    Canvas canvasA = drawScope.getF8996c().a();
                    long jD = drawScope.getF8996c().d();
                    GraphicsLayer graphicsLayer2 = drawScope.getF8996c().f9002b;
                    Function1 function2 = function1;
                    Density densityB2 = canvasDrawScope.f8996c.b();
                    LayoutDirection layoutDirectionC2 = canvasDrawScope.f8996c.c();
                    Canvas canvasA2 = canvasDrawScope.f8996c.a();
                    long jD2 = canvasDrawScope.f8996c.d();
                    CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
                    try {
                        GraphicsLayer graphicsLayer3 = canvasDrawScope$drawContext$1.f9002b;
                        canvasDrawScope$drawContext$1.f(densityB);
                        canvasDrawScope$drawContext$1.g(layoutDirectionC);
                        canvasDrawScope$drawContext$1.e(canvasA);
                        canvasDrawScope$drawContext$1.h(jD);
                        canvasDrawScope$drawContext$1.f9002b = graphicsLayer2;
                        canvasA.p();
                        try {
                            function2.invoke(layoutNodeDrawScope);
                            canvasA.restore();
                            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$2 = canvasDrawScope.f8996c;
                            canvasDrawScope$drawContext$2.f(densityB2);
                            canvasDrawScope$drawContext$2.g(layoutDirectionC2);
                            canvasDrawScope$drawContext$2.e(canvasA2);
                            canvasDrawScope$drawContext$2.h(jD2);
                            canvasDrawScope$drawContext$2.f9002b = graphicsLayer3;
                            layoutNodeDrawScope.f9702c = drawModifierNode3;
                            return Unit.f71739a;
                        } catch (Throwable th) {
                            drawModifierNode2 = drawModifierNode3;
                            try {
                                canvasA.restore();
                                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$3 = canvasDrawScope.f8996c;
                                canvasDrawScope$drawContext$3.f(densityB2);
                                canvasDrawScope$drawContext$3.g(layoutDirectionC2);
                                canvasDrawScope$drawContext$3.e(canvasA2);
                                canvasDrawScope$drawContext$3.h(jD2);
                                canvasDrawScope$drawContext$3.f9002b = graphicsLayer3;
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                                layoutNodeDrawScope.f9702c = drawModifierNode2;
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        drawModifierNode2 = drawModifierNode3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    drawModifierNode2 = drawModifierNode3;
                }
            }
        });
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f9701b.getF11002b();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.f9701b.f8995b.f8999b;
    }

    @Override // androidx.compose.ui.unit.Density
    public final long j0(float f2) {
        return this.f9701b.j0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float k1(int i2) {
        return this.f9701b.k1(i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float l1(float f2) {
        return this.f9701b.l1(f2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void m1(Brush brush, long j2, long j3, float f2, float f3, int i2) {
        this.f9701b.m1(brush, j2, j3, f2, f3, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void o1(Brush brush, long j2, long j3, long j4, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f9701b.o1(brush, j2, j3, j4, f2, drawStyle, colorFilter, i2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f9701b.getF11003c();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float u1(float f2) {
        return this.f9701b.getF11002b() * f2;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void v0(Path path, Brush brush, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f9701b.v0(path, brush, f2, drawStyle, colorFilter, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* JADX INFO: renamed from: x1 */
    public final CanvasDrawScope$drawContext$1 getF8996c() {
        return this.f9701b.f8996c;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void z1(long j2, long j3, long j4, long j5, DrawStyle drawStyle, int i2) {
        this.f9701b.z1(j2, j3, j4, j5, drawStyle, i2);
    }

    public LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope) {
        this.f9701b = canvasDrawScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNodeDrawScope() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
