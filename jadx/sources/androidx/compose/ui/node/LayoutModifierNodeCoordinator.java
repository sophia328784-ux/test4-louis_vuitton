package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScopeImpl;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;", "Landroidx/compose/ui/node/NodeCoordinator;", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/ui/node/LayoutModifierNode;", "measureNode", "<init>", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V", "LookaheadDelegateForLayoutModifierNode", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutModifierNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint d1;
    public LookaheadDelegate b1;
    public ApproachMeasureScopeImpl c1;
    public LayoutModifierNode h0;
    public Constraints t0;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;", "Landroidx/compose/ui/node/LookaheadDelegate;", "<init>", "(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class LookaheadDelegateForLayoutModifierNode extends LookaheadDelegate {
        public LookaheadDelegateForLayoutModifierNode() {
            super(LayoutModifierNodeCoordinator.this);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int H(int i2) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.t;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.getT0();
            b1.getClass();
            return layoutModifierNode.u(this, b1, i2);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int M(int i2) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.t;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.getT0();
            b1.getClass();
            return layoutModifierNode.f(this, b1, i2);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int S(int i2) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.t;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.getT0();
            b1.getClass();
            return layoutModifierNode.y(this, b1, i2);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final Placeable T(long j2) {
            s0(j2);
            Constraints constraints = new Constraints(j2);
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            layoutModifierNodeCoordinator.t0 = constraints;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.t;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.getT0();
            b1.getClass();
            LookaheadDelegate.Y0(this, layoutModifierNode.e(this, b1, j2));
            return this;
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int l(int i2) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.t;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.getT0();
            b1.getClass();
            return layoutModifierNode.z(this, b1, i2);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int y0(AlignmentLine alignmentLine) {
            int iA = LayoutModifierNodeCoordinatorKt.a(this, alignmentLine);
            this.v.h(iA, alignmentLine);
            return iA;
        }
    }

    static {
        new Companion(null);
        AndroidPaint androidPaint = new AndroidPaint();
        Color.f8866b.getClass();
        androidPaint.c(Color.g);
        androidPaint.r(1.0f);
        PaintingStyle.f8906a.getClass();
        androidPaint.s(PaintingStyle.f8907b);
        d1 = androidPaint;
    }

    public LayoutModifierNodeCoordinator(LayoutNode layoutNode, LayoutModifierNode layoutModifierNode) {
        super(layoutNode);
        this.h0 = layoutModifierNode;
        this.b1 = layoutNode.f9694j != null ? new LookaheadDelegateForLayoutModifierNode() : null;
        this.c1 = (layoutModifierNode.getF8608b().d & 512) != 0 ? new ApproachMeasureScopeImpl(this, (ApproachLayoutModifierNode) layoutModifierNode) : null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            NodeCoordinator nodeCoordinator = this.t;
            nodeCoordinator.getClass();
            return approachLayoutModifierNode.j1(approachMeasureScopeImpl, nodeCoordinator, i2);
        }
        LayoutModifierNode layoutModifierNode = this.h0;
        NodeCoordinator nodeCoordinator2 = this.t;
        nodeCoordinator2.getClass();
        return layoutModifierNode.u(this, nodeCoordinator2, i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            NodeCoordinator nodeCoordinator = this.t;
            nodeCoordinator.getClass();
            return approachLayoutModifierNode.D0(approachMeasureScopeImpl, nodeCoordinator, i2);
        }
        LayoutModifierNode layoutModifierNode = this.h0;
        NodeCoordinator nodeCoordinator2 = this.t;
        nodeCoordinator2.getClass();
        return layoutModifierNode.f(this, nodeCoordinator2, i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            NodeCoordinator nodeCoordinator = this.t;
            nodeCoordinator.getClass();
            return approachLayoutModifierNode.Y0(approachMeasureScopeImpl, nodeCoordinator, i2);
        }
        LayoutModifierNode layoutModifierNode = this.h0;
        NodeCoordinator nodeCoordinator2 = this.t;
        nodeCoordinator2.getClass();
        return layoutModifierNode.y(this, nodeCoordinator2, i2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) {
        final MeasureResult measureResultE;
        boolean z;
        Constraints constraints;
        if (this.s) {
            Constraints constraints2 = this.t0;
            if (constraints2 == null) {
                md.n("Lookahead constraints cannot be null in approach pass.");
                return null;
            }
            j2 = constraints2.f10999a;
        }
        s0(j2);
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            LookaheadDelegate lookaheadDelegate = approachMeasureScopeImpl.f9430b.b1;
            lookaheadDelegate.getClass();
            MeasureResult measureResultK0 = lookaheadDelegate.K0();
            measureResultK0.getF9686b();
            measureResultK0.getF9687c();
            IntSize.Companion companion = IntSize.f11020b;
            boolean z2 = approachLayoutModifierNode.e1() || (constraints = this.t0) == null || j2 != constraints.f10999a;
            approachMeasureScopeImpl.d = z2;
            if (!z2) {
                NodeCoordinator nodeCoordinator = this.t;
                nodeCoordinator.getClass();
                nodeCoordinator.s = true;
            }
            NodeCoordinator nodeCoordinator2 = this.t;
            nodeCoordinator2.getClass();
            measureResultE = approachLayoutModifierNode.I0(approachMeasureScopeImpl, nodeCoordinator2, j2);
            NodeCoordinator nodeCoordinator3 = this.t;
            nodeCoordinator3.getClass();
            nodeCoordinator3.s = false;
            int f9726a = measureResultE.getF9686b();
            LookaheadDelegate lookaheadDelegate2 = this.b1;
            lookaheadDelegate2.getClass();
            if (f9726a == lookaheadDelegate2.f9548b) {
                int f9727b = measureResultE.getF9687c();
                LookaheadDelegate lookaheadDelegate3 = this.b1;
                lookaheadDelegate3.getClass();
                z = f9727b == lookaheadDelegate3.f9549c;
            }
            if (!approachMeasureScopeImpl.d) {
                NodeCoordinator nodeCoordinator4 = this.t;
                nodeCoordinator4.getClass();
                long j3 = nodeCoordinator4.d;
                NodeCoordinator nodeCoordinator5 = this.t;
                nodeCoordinator5.getClass();
                LookaheadDelegate b1 = nodeCoordinator5.getT0();
                if (IntSize.a(j3, b1 != null ? new IntSize(b1.Z0()) : null) && !z) {
                    measureResultE = new MeasureResult(this) { // from class: androidx.compose.ui.node.LayoutModifierNodeCoordinator$measure$1$1$1$1

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final int f9686b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final int f9687c;

                        {
                            LookaheadDelegate lookaheadDelegate4 = this.b1;
                            lookaheadDelegate4.getClass();
                            this.f9686b = lookaheadDelegate4.f9548b;
                            LookaheadDelegate lookaheadDelegate5 = this.b1;
                            lookaheadDelegate5.getClass();
                            this.f9687c = lookaheadDelegate5.f9549c;
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        /* JADX INFO: renamed from: getHeight, reason: from getter */
                        public final int getF9687c() {
                            return this.f9687c;
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        /* JADX INFO: renamed from: getWidth, reason: from getter */
                        public final int getF9686b() {
                            return this.f9686b;
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        /* JADX INFO: renamed from: j */
                        public final Map getF9500c() {
                            return this.f9685a.getF9500c();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final void k() {
                            this.f9685a.k();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        /* JADX INFO: renamed from: l */
                        public final Function1 getD() {
                            return this.f9685a.getD();
                        }
                    };
                }
            }
        } else {
            LayoutModifierNode layoutModifierNode = this.h0;
            NodeCoordinator nodeCoordinator6 = this.t;
            nodeCoordinator6.getClass();
            measureResultE = layoutModifierNode.e(this, nodeCoordinator6, j2);
        }
        Y1(measureResultE);
        N1();
        return this;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void U1(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        NodeCoordinator nodeCoordinator2 = this.t;
        nodeCoordinator2.getClass();
        nodeCoordinator2.d1(canvas, graphicsLayer);
        if (!LayoutNodeKt.a(this.q).getShowLayoutBounds() || (nodeCoordinator = this.t) == null) {
            return;
        }
        if (IntSize.b(this.d, nodeCoordinator.d)) {
            long j2 = nodeCoordinator.D;
            IntOffset.f11012b.getClass();
            if (IntOffset.b(j2, 0L)) {
                return;
            }
        }
        long j3 = this.d;
        canvas.c(0.5f, 0.5f, ((int) (j3 >> 32)) - 0.5f, ((int) (j3 & BodyPartID.bodyIdMax)) - 0.5f, d1);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void f1() {
        if (this.b1 == null) {
            this.b1 = new LookaheadDelegateForLayoutModifierNode();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    public final void h2() {
        boolean z;
        if (this.f9718k) {
            return;
        }
        O1();
        NodeCoordinator nodeCoordinator = this.t;
        nodeCoordinator.getClass();
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            this.b1.getClass();
            approachLayoutModifierNode.getClass();
            if (approachMeasureScopeImpl.d) {
                z = false;
            } else {
                long j2 = this.d;
                LookaheadDelegate lookaheadDelegate = this.b1;
                if (IntSize.a(j2, lookaheadDelegate != null ? new IntSize(lookaheadDelegate.Z0()) : null)) {
                    long j3 = nodeCoordinator.d;
                    LookaheadDelegate b1 = nodeCoordinator.getT0();
                    if (IntSize.a(j3, b1 != null ? new IntSize(b1.Z0()) : null)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            nodeCoordinator.r = z;
        }
        nodeCoordinator.l = this.l;
        K0().k();
        nodeCoordinator.l = false;
        nodeCoordinator.r = false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    /* JADX INFO: renamed from: i1, reason: from getter */
    public final LookaheadDelegate getT0() {
        return this.b1;
    }

    public final void i2(LayoutModifierNode layoutModifierNode) {
        if (!layoutModifierNode.equals(this.h0)) {
            if ((layoutModifierNode.getF8608b().d & 512) != 0) {
                ApproachLayoutModifierNode approachLayoutModifierNode = (ApproachLayoutModifierNode) layoutModifierNode;
                ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
                if (approachMeasureScopeImpl != null) {
                    approachMeasureScopeImpl.f9431c = approachLayoutModifierNode;
                } else {
                    approachMeasureScopeImpl = new ApproachMeasureScopeImpl(this, approachLayoutModifierNode);
                }
                this.c1 = approachMeasureScopeImpl;
            } else {
                this.c1 = null;
            }
        }
        this.h0 = layoutModifierNode;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        ApproachMeasureScopeImpl approachMeasureScopeImpl = this.c1;
        if (approachMeasureScopeImpl != null) {
            ApproachLayoutModifierNode approachLayoutModifierNode = approachMeasureScopeImpl.f9431c;
            NodeCoordinator nodeCoordinator = this.t;
            nodeCoordinator.getClass();
            return approachLayoutModifierNode.Z0(approachMeasureScopeImpl, nodeCoordinator, i2);
        }
        LayoutModifierNode layoutModifierNode = this.h0;
        NodeCoordinator nodeCoordinator2 = this.t;
        nodeCoordinator2.getClass();
        return layoutModifierNode.z(this, nodeCoordinator2, i2);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void o0(long j2, float f2, GraphicsLayer graphicsLayer) {
        super.o0(j2, f2, graphicsLayer);
        h2();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void p0(long j2, float f2, Function1 function1) {
        super.p0(j2, f2, function1);
        h2();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node p1() {
        return this.h0.getF8608b();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int y0(AlignmentLine alignmentLine) {
        LookaheadDelegate lookaheadDelegate = this.b1;
        if (lookaheadDelegate == null) {
            return LayoutModifierNodeCoordinatorKt.a(this, alignmentLine);
        }
        MutableObjectIntMap mutableObjectIntMap = lookaheadDelegate.v;
        int iA = mutableObjectIntMap.a(alignmentLine);
        if (iA >= 0) {
            return mutableObjectIntMap.f3342c[iA];
        }
        return Integer.MIN_VALUE;
    }
}
