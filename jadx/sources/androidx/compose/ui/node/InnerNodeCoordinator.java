package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/InnerNodeCoordinator;", "Landroidx/compose/ui/node/NodeCoordinator;", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "LookaheadDelegateImpl", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InnerNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint b1;
    public final TailModifierNode h0;
    public LookaheadDelegate t0;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;", "Landroidx/compose/ui/node/LookaheadDelegate;", "<init>", "(Landroidx/compose/ui/node/InnerNodeCoordinator;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class LookaheadDelegateImpl extends LookaheadDelegate {
        public LookaheadDelegateImpl(InnerNodeCoordinator innerNodeCoordinator) {
            super(innerNodeCoordinator);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int H(int i2) {
            IntrinsicsPolicy intrinsicsPolicyN = this.q.q.N();
            MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
            LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
            return measurePolicyA.minIntrinsicHeight(layoutNode.H.d, layoutNode.F(), i2);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int M(int i2) {
            IntrinsicsPolicy intrinsicsPolicyN = this.q.q.N();
            MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
            LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
            return measurePolicyA.minIntrinsicWidth(layoutNode.H.d, layoutNode.F(), i2);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int S(int i2) {
            IntrinsicsPolicy intrinsicsPolicyN = this.q.q.N();
            MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
            LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
            return measurePolicyA.maxIntrinsicWidth(layoutNode.H.d, layoutNode.F(), i2);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final Placeable T(long j2) {
            s0(j2);
            NodeCoordinator nodeCoordinator = this.q;
            MutableVector mutableVectorR = nodeCoordinator.q.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i3]).I.q;
                lookaheadPassDelegate.getClass();
                lookaheadPassDelegate.f9734k = LayoutNode.UsageByParent.NotUsed;
            }
            LayoutNode layoutNode = nodeCoordinator.q;
            LookaheadDelegate.Y0(this, layoutNode.y.mo1measure3p2s80s(this, layoutNode.F(), j2));
            return this;
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate
        public final void a1() {
            LookaheadPassDelegate lookaheadPassDelegate = this.q.q.I.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.I0();
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public final int l(int i2) {
            IntrinsicsPolicy intrinsicsPolicyN = this.q.q.N();
            MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
            LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
            return measurePolicyA.maxIntrinsicHeight(layoutNode.H.d, layoutNode.F(), i2);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int y0(AlignmentLine alignmentLine) {
            LookaheadPassDelegate lookaheadPassDelegate = this.q.q.I.q;
            lookaheadPassDelegate.getClass();
            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate.t;
            if (!lookaheadPassDelegate.l) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.g;
                if (layoutNodeLayoutDelegate.d == LayoutNode.LayoutState.LookaheadMeasuring) {
                    lookaheadAlignmentLines.f9626f = true;
                    if (lookaheadAlignmentLines.f9623b) {
                        layoutNodeLayoutDelegate.f9710f = true;
                        layoutNodeLayoutDelegate.g = true;
                    }
                } else {
                    lookaheadAlignmentLines.g = true;
                }
            }
            LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.J().t0;
            if (lookaheadDelegate != null) {
                lookaheadDelegate.l = true;
            }
            lookaheadPassDelegate.F();
            LookaheadDelegate lookaheadDelegate2 = lookaheadPassDelegate.J().t0;
            if (lookaheadDelegate2 != null) {
                lookaheadDelegate2.l = false;
            }
            Integer num = (Integer) lookaheadAlignmentLines.f9628i.get(alignmentLine);
            int iIntValue = num != null ? num.intValue() : Integer.MIN_VALUE;
            this.v.h(iIntValue, alignmentLine);
            return iIntValue;
        }
    }

    static {
        new Companion(null);
        AndroidPaint androidPaint = new AndroidPaint();
        Color.f8866b.getClass();
        androidPaint.c(Color.f8869f);
        androidPaint.r(1.0f);
        PaintingStyle.f8906a.getClass();
        androidPaint.s(PaintingStyle.f8907b);
        b1 = androidPaint;
    }

    public InnerNodeCoordinator(LayoutNode layoutNode) {
        super(layoutNode);
        TailModifierNode tailModifierNode = new TailModifierNode();
        this.h0 = tailModifierNode;
        tailModifierNode.f8613i = this;
        this.t0 = layoutNode.f9694j != null ? new LookaheadDelegateImpl(this) : null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void F1(NodeCoordinator.HitTestSource hitTestSource, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        boolean z2;
        LayoutNode layoutNode = this.q;
        boolean z3 = false;
        if (hitTestSource.e(layoutNode)) {
            if (g2(j2)) {
                z2 = z;
            } else {
                PointerType.f9367b.getClass();
                if (i2 != PointerType.f9368c || (Float.floatToRawIntBits(b1(j2, j1())) & Integer.MAX_VALUE) >= 2139095040) {
                    z2 = z;
                } else {
                    z2 = false;
                }
            }
            z3 = true;
        } else {
            z2 = z;
        }
        if (z3) {
            int i3 = hitTestResult.d;
            MutableVector mutableVectorQ = layoutNode.Q();
            Object[] objArr = mutableVectorQ.f8165b;
            for (int i4 = mutableVectorQ.d - 1; i4 >= 0; i4--) {
                LayoutNode layoutNode2 = (LayoutNode) objArr[i4];
                if (layoutNode2.A()) {
                    hitTestSource.b(layoutNode2, j2, hitTestResult, i2, z2);
                    long jF = hitTestResult.f();
                    if (DistanceAndFlags.b(jF) < Call.Parameters.DEFAULT_CAMERA_ZOOM && DistanceAndFlags.d(jF) && !DistanceAndFlags.c(jF) && !hitTestSource.d(hitTestResult, layoutNode2)) {
                        break;
                    }
                }
            }
            hitTestResult.d = i3;
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        IntrinsicsPolicy intrinsicsPolicyN = this.q.N();
        MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
        LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
        return measurePolicyA.minIntrinsicHeight(layoutNode.H.d, layoutNode.G(), i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        IntrinsicsPolicy intrinsicsPolicyN = this.q.N();
        MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
        LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
        return measurePolicyA.minIntrinsicWidth(layoutNode.H.d, layoutNode.G(), i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        IntrinsicsPolicy intrinsicsPolicyN = this.q.N();
        MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
        LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
        return measurePolicyA.maxIntrinsicWidth(layoutNode.H.d, layoutNode.G(), i2);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) {
        if (this.s) {
            LookaheadDelegate lookaheadDelegate = this.t0;
            lookaheadDelegate.getClass();
            j2 = lookaheadDelegate.f9550e;
        }
        s0(j2);
        LayoutNode layoutNode = this.q;
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((LayoutNode) objArr[i3]).I.p.m = LayoutNode.UsageByParent.NotUsed;
        }
        Y1(layoutNode.y.mo1measure3p2s80s(this, layoutNode.G(), j2));
        N1();
        return this;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void U1(Canvas canvas, GraphicsLayer graphicsLayer) throws Throwable {
        LayoutNode layoutNode = this.q;
        Owner ownerA = LayoutNodeKt.a(layoutNode);
        MutableVector mutableVectorQ = layoutNode.Q();
        Object[] objArr = mutableVectorQ.f8165b;
        int i2 = mutableVectorQ.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (layoutNode2.A()) {
                layoutNode2.D(canvas, graphicsLayer);
            }
        }
        if (ownerA.getShowLayoutBounds()) {
            long j2 = this.d;
            canvas.c(0.5f, 0.5f, ((int) (j2 >> 32)) - 0.5f, ((int) (j2 & BodyPartID.bodyIdMax)) - 0.5f, b1);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void f1() {
        if (this.t0 == null) {
            this.t0 = new LookaheadDelegateImpl(this);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    /* JADX INFO: renamed from: i1, reason: from getter */
    public final LookaheadDelegate getB1() {
        return this.t0;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        IntrinsicsPolicy intrinsicsPolicyN = this.q.N();
        MeasurePolicy measurePolicyA = intrinsicsPolicyN.a();
        LayoutNode layoutNode = intrinsicsPolicyN.f9676a;
        return measurePolicyA.maxIntrinsicHeight(layoutNode.H.d, layoutNode.G(), i2);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void o0(long j2, float f2, GraphicsLayer graphicsLayer) throws Throwable {
        super.o0(j2, f2, graphicsLayer);
        if (this.f9718k) {
            return;
        }
        this.q.I.p.D0();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void p0(long j2, float f2, Function1 function1) throws Throwable {
        super.p0(j2, f2, function1);
        if (this.f9718k) {
            return;
        }
        this.q.I.p.D0();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node p1() {
        return this.h0;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int y0(AlignmentLine alignmentLine) throws Throwable {
        LookaheadDelegate lookaheadDelegate = this.t0;
        if (lookaheadDelegate != null) {
            return lookaheadDelegate.y0(alignmentLine);
        }
        MeasurePassDelegate measurePassDelegate = this.q.I.p;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = measurePassDelegate.z;
        if (!measurePassDelegate.n) {
            if (measurePassDelegate.g.d == LayoutNode.LayoutState.Measuring) {
                layoutNodeAlignmentLines.f9626f = true;
                if (layoutNodeAlignmentLines.f9623b) {
                    measurePassDelegate.x = true;
                    measurePassDelegate.y = true;
                }
            } else {
                layoutNodeAlignmentLines.g = true;
            }
        }
        InnerNodeCoordinator innerNodeCoordinatorJ = measurePassDelegate.J();
        boolean z = innerNodeCoordinatorJ.l;
        innerNodeCoordinatorJ.l = true;
        measurePassDelegate.F();
        innerNodeCoordinatorJ.l = z;
        Integer num = (Integer) layoutNodeAlignmentLines.f9628i.get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }
}
