package androidx.compose.ui.node;

import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.FrameRateCategory;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.ComposeEventObserver;
import com.dynatrace.agent.compose.userinteraction.ComposeEventObserverHandler;
import com.dynatrace.agent.compose.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.compose.userinteraction.model.ComposeElementInfo;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.compose.userinteraction.sensor.UserInteractionsApi;
import com.dynatrace.agent.compose.userinteraction.utils.UserInteractionUtilsKt;
import defpackage.a;
import defpackage.az;
import defpackage.md;
import defpackage.p11;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\t\nB\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator;", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "HitTestSource", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public static final Companion R = new Companion(null);
    public static final Function1 S = NodeCoordinator$Companion$onCommitAffectingLayerParams$1.f9785c;
    public static final Function1 T = NodeCoordinator$Companion$onCommitAffectingLayer$1.f9784c;
    public static final ReusableGraphicsLayerScope V = new ReusableGraphicsLayerScope();
    public static final LayerPositionalProperties W = new LayerPositionalProperties();
    public static final float[] X = Matrix.a();
    public static final NodeCoordinator$Companion$PointerInputSource$1 Y = new NodeCoordinator$Companion$PointerInputSource$1();
    public static final NodeCoordinator$Companion$SemanticsSource$1 Z = new NodeCoordinator$Companion$SemanticsSource$1();
    public float A = 0.8f;
    public MeasureResult B;
    public MutableObjectIntMap C;
    public long D;
    public float E;
    public MutableRect F;
    public LayerPositionalProperties G;
    public Shape H;
    public boolean I;
    public boolean J;
    public GraphicsLayer K;
    public Canvas L;
    public Function2 M;
    public final Function0 N;
    public boolean O;
    public OwnedLayer P;
    public GraphicsLayer Q;
    public final LayoutNode q;
    public boolean r;
    public boolean s;
    public NodeCoordinator t;
    public NodeCoordinator u;
    public boolean v;
    public boolean w;
    public Function1 x;
    public Density y;
    public LayoutDirection z;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator$Companion;", "", "", "ExpectAttachedLayoutCoordinates", "Ljava/lang/String;", "UnmeasuredError", "Lkotlin/Function1;", "Landroidx/compose/ui/node/NodeCoordinator;", "", "onCommitAffectingLayerParams", "Lkotlin/jvm/functions/Function1;", "onCommitAffectingLayer", "Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;", "graphicsLayerScope", "Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;", "Landroidx/compose/ui/node/LayerPositionalProperties;", "tmpLayerPositionalProperties", "Landroidx/compose/ui/node/LayerPositionalProperties;", "Landroidx/compose/ui/graphics/Matrix;", "tmpMatrix", "[F", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface HitTestSource {
        int a();

        void b(LayoutNode layoutNode, long j2, HitTestResult hitTestResult, int i2, boolean z);

        boolean c(Modifier.Node node);

        boolean d(HitTestResult hitTestResult, LayoutNode layoutNode);

        boolean e(LayoutNode layoutNode);

        default boolean f(Modifier.Node node) {
            return true;
        }
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.q = layoutNode;
        this.y = layoutNode.A;
        this.z = layoutNode.B;
        IntOffset.f11012b.getClass();
        this.D = 0L;
        this.H = RectangleShapeKt.f8913a;
        this.N = new NodeCoordinator$invalidateParentLayer$1(this);
    }

    public static NodeCoordinator a2(LayoutCoordinates layoutCoordinates) {
        NodeCoordinator nodeCoordinator;
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = layoutCoordinates instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates != null && (nodeCoordinator = lookaheadLayoutCoordinates.f9521b.q) != null) {
            return nodeCoordinator;
        }
        layoutCoordinates.getClass();
        return (NodeCoordinator) layoutCoordinates;
    }

    public final void A1(Modifier.Node node, HitTestSource hitTestSource, long j2, HitTestResult hitTestResult, int i2, boolean z, float f2) {
        if (node == null) {
            F1(hitTestSource, j2, hitTestResult, i2, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            A1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult, i2, z, f2);
            return;
        }
        int i3 = hitTestResult.d;
        MutableObjectList mutableObjectList = hitTestResult.f9667b;
        hitTestResult.h(i3 + 1, mutableObjectList.f3346b);
        hitTestResult.d++;
        mutableObjectList.g(node);
        hitTestResult.f9668c.a(HitTestResultKt.a(f2, z, false));
        T1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult, i2, z, f2, true);
        hitTestResult.d = i3;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long B(long j2) {
        if (!p1().o) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        LayoutCoordinates layoutCoordinatesC = LayoutCoordinatesKt.c(this);
        return u(layoutCoordinatesC, Offset.e(LayoutNodeKt.a(this.q).z(j2), LayoutCoordinatesKt.e(layoutCoordinatesC)), true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void C(LayoutCoordinates layoutCoordinates, float[] fArr) {
        NodeCoordinator nodeCoordinatorA2 = a2(layoutCoordinates);
        nodeCoordinatorA2.M1();
        NodeCoordinator nodeCoordinatorG1 = g1(nodeCoordinatorA2);
        Matrix.d(fArr);
        nodeCoordinatorA2.d2(nodeCoordinatorG1, fArr);
        c2(nodeCoordinatorG1, fArr);
    }

    public final void E1(HitTestSource hitTestSource, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        boolean z2;
        Modifier.Node nodeV1 = v1(hitTestSource.a());
        boolean z3 = false;
        if (!g2(j2)) {
            PointerType.f9367b.getClass();
            if (i2 == PointerType.f9368c) {
                float fB1 = b1(j2, j1());
                if ((Float.floatToRawIntBits(fB1) & Integer.MAX_VALUE) < 2139095040) {
                    if (hitTestResult.d != hitTestResult.f9667b.f3346b - 1) {
                        if (DistanceAndFlags.a(hitTestResult.f(), HitTestResultKt.a(fB1, false, false)) <= 0) {
                            return;
                        }
                    }
                    A1(nodeV1, hitTestSource, j2, hitTestResult, i2, false, fB1);
                    return;
                }
                return;
            }
            return;
        }
        if (nodeV1 == null) {
            F1(hitTestSource, j2, hitTestResult, i2, z);
            return;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        if (fIntBitsToFloat >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fIntBitsToFloat2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fIntBitsToFloat < m0() && fIntBitsToFloat2 < l0()) {
            y1(nodeV1, hitTestSource, j2, hitTestResult, i2, z);
            return;
        }
        PointerType.f9367b.getClass();
        float fB2 = i2 == PointerType.f9368c ? b1(j2, j1()) : Float.POSITIVE_INFINITY;
        if ((Float.floatToRawIntBits(fB2) & Integer.MAX_VALUE) < 2139095040) {
            if (hitTestResult.d == hitTestResult.f9667b.f3346b - 1) {
                z2 = z;
            } else {
                z2 = z;
                if (DistanceAndFlags.a(hitTestResult.f(), HitTestResultKt.a(fB2, z2, false)) > 0) {
                }
            }
            z3 = true;
        } else {
            z2 = z;
        }
        T1(nodeV1, hitTestSource, j2, hitTestResult, i2, z2, fB2, z3);
    }

    public void F1(HitTestSource hitTestSource, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        NodeCoordinator nodeCoordinator = this.t;
        if (nodeCoordinator != null) {
            nodeCoordinator.E1(hitTestSource, nodeCoordinator.h1(j2, true), hitTestResult, i2, z);
        }
    }

    public final void H1() {
        OwnedLayer ownedLayer = this.P;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.u;
        if (nodeCoordinator != null) {
            nodeCoordinator.H1();
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long I(long j2) {
        return LayoutNodeKt.a(this.q).g(h0(j2));
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable I0() {
        return this.t;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    /* JADX INFO: renamed from: I1, reason: from getter */
    public final LayoutNode getQ() {
        return this.q;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean J0() {
        return this.B != null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void K(float[] fArr) {
        Owner ownerA = LayoutNodeKt.a(this.q);
        NodeCoordinator nodeCoordinatorA2 = a2(LayoutCoordinatesKt.c(this));
        d2(nodeCoordinatorA2, fArr);
        if (ownerA instanceof MatrixPositionCalculator) {
            ((MatrixPositionCalculator) ownerA).o(fArr);
            return;
        }
        long jG = LayoutCoordinatesKt.g(nodeCoordinatorA2);
        if ((9223372034707292159L & jG) != 9205357640488583168L) {
            Matrix.f(Float.intBitsToFloat((int) (jG >> 32)), Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax)), fArr);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult K0() {
        MeasureResult measureResult = this.B;
        if (measureResult != null) {
            return measureResult;
        }
        md.k("Asking for measurement result of unmeasured layout modifier");
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect L(LayoutCoordinates layoutCoordinates, boolean z) {
        if (!p1().o) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!layoutCoordinates.c()) {
            InlineClassHelperKt.c("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        NodeCoordinator nodeCoordinatorA2 = a2(layoutCoordinates);
        nodeCoordinatorA2.M1();
        NodeCoordinator nodeCoordinatorG1 = g1(nodeCoordinatorA2);
        MutableRect mutableRect = this.F;
        if (mutableRect == null) {
            mutableRect = new MutableRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.F = mutableRect;
        }
        mutableRect.f8803a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8804b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8805c = (int) (layoutCoordinates.a() >> 32);
        mutableRect.d = (int) (layoutCoordinates.a() & BodyPartID.bodyIdMax);
        while (nodeCoordinatorA2 != nodeCoordinatorG1) {
            nodeCoordinatorA2.W1(mutableRect, z, false);
            if (mutableRect.b()) {
                Rect.f8809e.getClass();
                return Rect.f8810f;
            }
            nodeCoordinatorA2 = nodeCoordinatorA2.u;
            nodeCoordinatorA2.getClass();
        }
        Y0(nodeCoordinatorG1, mutableRect, z);
        return new Rect(mutableRect.f8803a, mutableRect.f8804b, mutableRect.f8805c, mutableRect.d);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable L0() {
        return this.u;
    }

    public final boolean L1() {
        if (this.P != null && this.A <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.u;
        if (nodeCoordinator != null) {
            return nodeCoordinator.L1();
        }
        return false;
    }

    public final void M1() {
        this.q.I.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public final void N1() {
        Modifier.Node nodeP1;
        boolean zG = NodeKindKt.g(128);
        Modifier.Node nodeW1 = w1(zG);
        if (nodeW1 == null || (nodeW1.f8608b.f8610e & 128) == 0) {
            return;
        }
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 function1E = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            if (!zG) {
                nodeP1 = p1().f8611f;
                if (nodeP1 == null) {
                }
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            }
            nodeP1 = p1();
            for (Modifier.Node nodeW2 = w1(zG); nodeW2 != null && (nodeW2.f8610e & 128) != 0; nodeW2 = nodeW2.g) {
                if ((nodeW2.d & 128) != 0) {
                    ?? B = nodeW2;
                    ?? mutableVector = 0;
                    while (B != 0) {
                        if (B instanceof MeasuredSizeAwareModifierNode) {
                            ((MeasuredSizeAwareModifierNode) B).c(this.d);
                        } else if ((B.d & 128) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node = ((DelegatingNode) B).q;
                            int i2 = 0;
                            B = B;
                            mutableVector = mutableVector;
                            while (node != null) {
                                if ((node.d & 128) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        mutableVector = mutableVector;
                                        B = node;
                                    } else {
                                        if (mutableVector == 0) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (B != 0) {
                                            mutableVector.b(B);
                                            B = 0;
                                        }
                                        mutableVector.b(node);
                                    }
                                }
                                node = node.g;
                                B = B;
                                mutableVector = mutableVector;
                            }
                            if (i2 == 1) {
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                }
                if (nodeW2 == nodeP1) {
                    break;
                }
            }
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
        } catch (Throwable th) {
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v4 */
    public final void O1() {
        boolean zG = NodeKindKt.g(4194304);
        Modifier.Node nodeP1 = p1();
        if (!zG && (nodeP1 = nodeP1.f8611f) == null) {
            return;
        }
        for (Modifier.Node nodeW1 = w1(zG); nodeW1 != null && (nodeW1.f8610e & 4194304) != 0; nodeW1 = nodeW1.g) {
            if ((nodeW1.d & 4194304) != 0) {
                ?? B = nodeW1;
                ?? mutableVector = 0;
                while (B != 0) {
                    if (B instanceof LayoutAwareModifierNode) {
                        ((LayoutAwareModifierNode) B).h(this);
                    } else if ((B.d & 4194304) != 0 && (B instanceof DelegatingNode)) {
                        Modifier.Node node = ((DelegatingNode) B).q;
                        int i2 = 0;
                        B = B;
                        mutableVector = mutableVector;
                        while (node != null) {
                            if ((node.d & 4194304) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    mutableVector = mutableVector;
                                    B = node;
                                } else {
                                    if (mutableVector == 0) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B != 0) {
                                        mutableVector.b(B);
                                        B = 0;
                                    }
                                    mutableVector.b(node);
                                }
                            }
                            node = node.g;
                            B = B;
                            mutableVector = mutableVector;
                        }
                        if (i2 == 1) {
                        }
                    }
                    B = DelegatableNodeKt.b(mutableVector);
                }
            }
            if (nodeW1 == nodeP1) {
                return;
            }
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* JADX INFO: renamed from: P0, reason: from getter */
    public final long getR() {
        return this.D;
    }

    public final void Q1() {
        this.v = true;
        ((NodeCoordinator$invalidateParentLayer$1) this.N).mo47invoke();
        X1();
        long j2 = this.D;
        IntOffset.f11012b.getClass();
        if (IntOffset.b(j2, 0L)) {
            return;
        }
        this.q.e0(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v4 */
    public final void S1() {
        boolean zG = NodeKindKt.g(1048576);
        Modifier.Node nodeW1 = w1(zG);
        if (nodeW1 == null || (nodeW1.f8608b.f8610e & 1048576) == 0) {
            return;
        }
        Modifier.Node nodeP1 = p1();
        if (!zG && (nodeP1 = nodeP1.f8611f) == null) {
            return;
        }
        for (Modifier.Node nodeW2 = w1(zG); nodeW2 != null && (nodeW2.f8610e & 1048576) != 0; nodeW2 = nodeW2.g) {
            if ((nodeW2.d & 1048576) != 0) {
                ?? B = nodeW2;
                ?? mutableVector = 0;
                while (B != 0) {
                    if (B instanceof UnplacedAwareModifierNode) {
                        ((UnplacedAwareModifierNode) B).T1();
                    } else if ((B.d & 1048576) != 0 && (B instanceof DelegatingNode)) {
                        Modifier.Node node = ((DelegatingNode) B).q;
                        int i2 = 0;
                        B = B;
                        mutableVector = mutableVector;
                        while (node != null) {
                            if ((node.d & 1048576) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    mutableVector = mutableVector;
                                    B = node;
                                } else {
                                    if (mutableVector == 0) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B != 0) {
                                        mutableVector.b(B);
                                        B = 0;
                                    }
                                    mutableVector.b(node);
                                }
                            }
                            node = node.g;
                            B = B;
                            mutableVector = mutableVector;
                        }
                        if (i2 == 1) {
                        }
                    }
                    B = DelegatableNodeKt.b(mutableVector);
                }
            }
            if (nodeW2 == nodeP1) {
                return;
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return (this.P == null || this.v || !this.q.c()) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x01ba A[PHI: r3
      0x01ba: PHI (r3v14 ??) = (r3v2 ??), (r3v2 ??), (r3v16 ??) binds: [B:57:0x0186, B:59:0x018a, B:73:0x01b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r4v21 */
    public final void T1(final Modifier.Node node, final HitTestSource hitTestSource, final long j2, final HitTestResult hitTestResult, int i2, final boolean z, final float f2, final boolean z2) {
        ?? B;
        if (node == null) {
            F1(hitTestSource, j2, hitTestResult, i2, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            T1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult, i2, z, f2, z2);
            return;
        }
        int i3 = i2;
        PointerType.f9367b.getClass();
        if (i3 == PointerType.f9369e || i3 == PointerType.f9370f) {
            ?? mutableVector = 0;
            ?? r1 = node;
            while (r1 != 0) {
                if (r1 instanceof PointerInputModifierNode) {
                    long jP0 = ((PointerInputModifierNode) r1).P0();
                    int i4 = (int) (j2 >> 32);
                    float fIntBitsToFloat = Float.intBitsToFloat(i4);
                    LayoutNode layoutNode = this.q;
                    LayoutDirection layoutDirection = layoutNode.B;
                    TouchBoundsExpansion.Companion companion = TouchBoundsExpansion.f9834a;
                    long j3 = Long.MIN_VALUE & jP0;
                    if (fIntBitsToFloat < (-((j3 == 0 || layoutDirection == LayoutDirection.Ltr) ? TouchBoundsExpansion.Companion.a(TouchBoundsExpansion.f9834a, jP0, 0) : TouchBoundsExpansion.Companion.a(TouchBoundsExpansion.f9834a, jP0, 2)))) {
                        break;
                    }
                    if (Float.intBitsToFloat(i4) >= m0() + ((j3 == 0 || layoutNode.B == LayoutDirection.Ltr) ? TouchBoundsExpansion.Companion.a(TouchBoundsExpansion.f9834a, jP0, 2) : TouchBoundsExpansion.Companion.a(TouchBoundsExpansion.f9834a, jP0, 0))) {
                        break;
                    }
                    int i5 = (int) (j2 & BodyPartID.bodyIdMax);
                    float fIntBitsToFloat2 = Float.intBitsToFloat(i5);
                    TouchBoundsExpansion.Companion companion2 = TouchBoundsExpansion.f9834a;
                    if (fIntBitsToFloat2 < (-TouchBoundsExpansion.Companion.a(companion2, jP0, 1))) {
                        break;
                    }
                    if (Float.intBitsToFloat(i5) >= TouchBoundsExpansion.Companion.a(companion2, jP0, 3) + l0()) {
                        break;
                    }
                    final int i6 = i3;
                    Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$outOfBoundsHit$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            Modifier.Node nodeA = NodeCoordinatorKt.a(node, hitTestSource.a());
                            NodeCoordinator.Companion companion3 = NodeCoordinator.R;
                            this.f9789c.T1(nodeA, hitTestSource, j2, hitTestResult, i6, z, f2, z2);
                            return Unit.f71739a;
                        }
                    };
                    MutableLongList mutableLongList = hitTestResult.f9668c;
                    MutableObjectList mutableObjectList = hitTestResult.f9667b;
                    int i7 = hitTestResult.d;
                    int i8 = mutableObjectList.f3346b;
                    if (i7 == i8 - 1) {
                        hitTestResult.h(i7 + 1, i8);
                        hitTestResult.d++;
                        mutableObjectList.g(node);
                        mutableLongList.a(HitTestResultKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, z, true));
                        function0.mo47invoke();
                        hitTestResult.d = i7;
                        return;
                    }
                    long jF = hitTestResult.f();
                    int i9 = hitTestResult.d;
                    if (!DistanceAndFlags.c(jF)) {
                        if (DistanceAndFlags.b(jF) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            int i10 = hitTestResult.d;
                            hitTestResult.h(i10 + 1, mutableObjectList.f3346b);
                            hitTestResult.d++;
                            mutableObjectList.g(node);
                            mutableLongList.a(HitTestResultKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, z, true));
                            function0.mo47invoke();
                            hitTestResult.d = i10;
                            return;
                        }
                        return;
                    }
                    int i11 = mutableObjectList.f3346b;
                    int i12 = i11 - 1;
                    hitTestResult.d = i12;
                    hitTestResult.h(i11, mutableObjectList.f3346b);
                    hitTestResult.d++;
                    mutableObjectList.g(node);
                    mutableLongList.a(HitTestResultKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, z, true));
                    function0.mo47invoke();
                    hitTestResult.d = i12;
                    if (DistanceAndFlags.b(hitTestResult.f()) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        hitTestResult.h(i9 + 1, hitTestResult.d + 1);
                    }
                    hitTestResult.d = i9;
                    return;
                }
                if ((r1.d & 16) == 0 || !(r1 instanceof DelegatingNode)) {
                    B = r1;
                    mutableVector = mutableVector;
                    B = DelegatableNodeKt.b(mutableVector);
                } else {
                    Modifier.Node node2 = ((DelegatingNode) r1).q;
                    int i13 = 0;
                    while (node2 != null) {
                        if ((node2.d & 16) != 0) {
                            i13++;
                            if (i13 == 1) {
                                B = r1;
                                mutableVector = mutableVector;
                                mutableVector = mutableVector;
                                B = node2;
                            } else {
                                if (mutableVector == 0) {
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (B != 0) {
                                    mutableVector.b(B);
                                    B = 0;
                                }
                                mutableVector.b(node2);
                            }
                        } else {
                            B = r1;
                            mutableVector = mutableVector;
                        }
                        node2 = node2.g;
                        B = B;
                        mutableVector = mutableVector;
                    }
                    if (i13 == 1) {
                        B = r1;
                        mutableVector = mutableVector;
                    } else {
                        B = r1;
                        mutableVector = mutableVector;
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                }
                i3 = i2;
                r1 = B;
                mutableVector = mutableVector;
            }
        }
        if (z2) {
            A1(node, hitTestSource, j2, hitTestResult, i2, z, f2);
        } else {
            Z1(node, hitTestSource, j2, hitTestResult, i2, z, f2);
        }
    }

    public void U1(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator = this.t;
        if (nodeCoordinator != null) {
            nodeCoordinator.d1(canvas, graphicsLayer);
        }
    }

    public final void V1(long j2, float f2, Function1 function1, GraphicsLayer graphicsLayer) {
        LayoutNode layoutNode = this.q;
        if (graphicsLayer != null) {
            if (function1 != null) {
                InlineClassHelperKt.a("both ways to create layers shouldn't be used together");
            }
            if (this.Q != graphicsLayer) {
                this.Q = null;
                e2(null, false);
                this.Q = graphicsLayer;
            }
            if (this.P == null) {
                Owner ownerA = LayoutNodeKt.a(layoutNode);
                Function2 function2 = this.M;
                if (function2 == null) {
                    NodeCoordinator$drawBlock$1 nodeCoordinator$drawBlock$1 = new NodeCoordinator$drawBlock$1(this, new NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1(this));
                    this.M = nodeCoordinator$drawBlock$1;
                    function2 = nodeCoordinator$drawBlock$1;
                }
                Function0 function0 = this.N;
                OwnedLayer ownedLayerV = ownerA.v(function2, function0, graphicsLayer);
                ownedLayerV.c(this.d);
                ownedLayerV.j(j2);
                this.P = ownedLayerV;
                layoutNode.L = true;
                ((NodeCoordinator$invalidateParentLayer$1) function0).mo47invoke();
            }
        } else {
            if (this.Q != null) {
                this.Q = null;
                e2(null, false);
            }
            e2(function1, false);
        }
        if (!IntOffset.b(this.D, j2)) {
            Owner ownerA2 = LayoutNodeKt.a(layoutNode);
            FrameRateCategory.f8605a.getClass();
            ownerA2.C(FrameRateCategory.f8606b);
            this.D = j2;
            OwnedLayer ownedLayer = this.P;
            if (ownedLayer != null) {
                ownedLayer.j(j2);
            } else {
                NodeCoordinator nodeCoordinator = this.u;
                if (nodeCoordinator != null) {
                    nodeCoordinator.H1();
                }
            }
            layoutNode.e0(this);
            LookaheadCapablePlaceable.S0(this);
            Owner owner = layoutNode.p;
            if (owner != null) {
                owner.k(layoutNode);
            }
        }
        this.E = f2;
        if (this == layoutNode.H.d) {
            LayoutNodeKt.a(layoutNode).getRectManager().e(layoutNode);
        }
        if (this.l) {
            return;
        }
        A0(K0());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    public final void W1(MutableRect mutableRect, boolean z, boolean z2) {
        long jFloatToRawIntBits;
        OwnedLayer ownedLayer = this.P;
        if (ownedLayer != null) {
            if (this.w) {
                if (z2) {
                    long jJ1 = j1();
                    float f2 = mutableRect.f8803a;
                    float f3 = mutableRect.f8804b;
                    if (mutableRect.f8805c >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        long j2 = this.d;
                        if (f2 > ((int) (j2 >> 32)) || mutableRect.d < Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 > ((int) (j2 & BodyPartID.bodyIdMax))) {
                            Offset.f8806b.getClass();
                            jFloatToRawIntBits = 0;
                        } else {
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (jJ1 >> 32));
                            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jJ1 & BodyPartID.bodyIdMax));
                            float f4 = (fIntBitsToFloat - (mutableRect.f8805c - mutableRect.f8803a)) / 2.0f;
                            if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                f2 -= f4;
                            } else {
                                float f5 = (-fIntBitsToFloat) / 2.0f;
                                if (f2 < f5) {
                                    f2 = f5;
                                }
                            }
                            float f6 = (fIntBitsToFloat2 - (mutableRect.d - mutableRect.f8804b)) / 2.0f;
                            if (f6 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                f3 -= f6;
                            } else {
                                float f7 = (-fIntBitsToFloat2) / 2.0f;
                                if (f3 < f7) {
                                    f3 = f7;
                                }
                            }
                            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
                            Offset.Companion companion = Offset.f8806b;
                        }
                    } else {
                        Offset.f8806b.getClass();
                        jFloatToRawIntBits = 0;
                    }
                    float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
                    float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
                    long j3 = this.d;
                    int i2 = (int) (j3 >> 32);
                    int i3 = (int) (j3 & BodyPartID.bodyIdMax);
                    float f8 = i2;
                    int i4 = (int) (jJ1 >> 32);
                    float fMin = Math.min(Float.intBitsToFloat(i4) + f8, Math.max(f8, Float.intBitsToFloat(i4) + fIntBitsToFloat3));
                    float f9 = i3;
                    int i5 = (int) (jJ1 & BodyPartID.bodyIdMax);
                    mutableRect.a(fIntBitsToFloat3, fIntBitsToFloat4, fMin, Math.min(Float.intBitsToFloat(i5) + f9, Math.max(f9, Float.intBitsToFloat(i5) + fIntBitsToFloat4)));
                } else if (z) {
                    long j4 = this.d;
                    mutableRect.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (j4 >> 32), (int) (j4 & BodyPartID.bodyIdMax));
                }
                if (mutableRect.b()) {
                    return;
                }
            }
            ownedLayer.e(mutableRect, false);
        }
        long j5 = this.D;
        IntOffset.Companion companion2 = IntOffset.f11012b;
        float f10 = (int) (j5 >> 32);
        mutableRect.f8803a += f10;
        mutableRect.f8805c += f10;
        float f11 = (int) (j5 & BodyPartID.bodyIdMax);
        mutableRect.f8804b += f11;
        mutableRect.d += f11;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void X0() {
        GraphicsLayer graphicsLayer = this.Q;
        long j2 = this.D;
        if (graphicsLayer != null) {
            o0(j2, this.E, graphicsLayer);
        } else {
            p0(j2, this.E, this.x);
        }
    }

    public final void X1() {
        if (this.P != null) {
            if (this.Q != null) {
                this.Q = null;
            }
            e2(null, false);
            this.q.l0(false);
        }
    }

    public final void Y0(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.u;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.Y0(nodeCoordinator, mutableRect, z);
        }
        long j2 = this.D;
        IntOffset.Companion companion = IntOffset.f11012b;
        float f2 = (int) (j2 >> 32);
        mutableRect.f8803a -= f2;
        mutableRect.f8805c -= f2;
        float f3 = (int) (j2 & BodyPartID.bodyIdMax);
        mutableRect.f8804b -= f3;
        mutableRect.d -= f3;
        OwnedLayer ownedLayer = this.P;
        if (ownedLayer != null) {
            ownedLayer.e(mutableRect, true);
            if (this.w && z) {
                long j3 = this.d;
                mutableRect.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (j3 >> 32), (int) (j3 & BodyPartID.bodyIdMax));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.compose.runtime.collection.MutableVector] */
    public final void Y1(MeasureResult measureResult) {
        NodeCoordinator nodeCoordinator;
        MeasureResult measureResult2 = this.B;
        if (measureResult != measureResult2) {
            this.B = measureResult;
            LayoutNode layoutNode = this.q;
            int i2 = 0;
            if (measureResult2 == null || measureResult.getF9726a() != measureResult2.getF9726a() || measureResult.getF9727b() != measureResult2.getF9727b()) {
                int f9530a = measureResult.getF9726a();
                int f9531b = measureResult.getF9727b();
                OwnedLayer ownedLayer = this.P;
                if (ownedLayer != null) {
                    long j2 = (((long) f9530a) << 32) | (((long) f9531b) & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    ownedLayer.c(j2);
                } else if (layoutNode.A() && (nodeCoordinator = this.u) != null) {
                    nodeCoordinator.H1();
                }
                long j3 = (((long) f9531b) & BodyPartID.bodyIdMax) | (((long) f9530a) << 32);
                IntSize.Companion companion2 = IntSize.f11020b;
                q0(j3);
                if (this.x != null) {
                    f2(false);
                }
                boolean zG = NodeKindKt.g(4);
                Modifier.Node nodeP1 = p1();
                if (zG || (nodeP1 = nodeP1.f8611f) != null) {
                    for (Modifier.Node nodeW1 = w1(zG); nodeW1 != null && (nodeW1.f8610e & 4) != 0; nodeW1 = nodeW1.g) {
                        if ((nodeW1.d & 4) != 0) {
                            ?? B = nodeW1;
                            ?? mutableVector = 0;
                            while (B != 0) {
                                if (B instanceof DrawModifierNode) {
                                    ((DrawModifierNode) B).i1();
                                } else if ((B.d & 4) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node = ((DelegatingNode) B).q;
                                    int i3 = 0;
                                    B = B;
                                    mutableVector = mutableVector;
                                    while (node != null) {
                                        if ((node.d & 4) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                mutableVector = mutableVector;
                                                B = node;
                                            } else {
                                                if (mutableVector == 0) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector.b(B);
                                                    B = 0;
                                                }
                                                mutableVector.b(node);
                                            }
                                        }
                                        node = node.g;
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        if (nodeW1 == nodeP1) {
                            break;
                        }
                    }
                }
                Owner owner = layoutNode.p;
                if (owner != null) {
                    owner.k(layoutNode);
                }
                layoutNode.e0(this);
            }
            MutableObjectIntMap mutableObjectIntMap = this.C;
            if ((mutableObjectIntMap == null || mutableObjectIntMap.f3343e == 0) && measureResult.getF5642a().isEmpty()) {
                return;
            }
            MutableObjectIntMap mutableObjectIntMap2 = this.C;
            Map f9532c = measureResult.getF5642a();
            if (mutableObjectIntMap2 != null && mutableObjectIntMap2.f3343e == f9532c.size()) {
                Object[] objArr = mutableObjectIntMap2.f3341b;
                int[] iArr = mutableObjectIntMap2.f3342c;
                long[] jArr = mutableObjectIntMap2.f3340a;
                int length = jArr.length - 2;
                if (length < 0) {
                    return;
                }
                int i4 = 0;
                loop0: while (true) {
                    long j4 = jArr[i4];
                    if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i5 = 8 - ((~(i4 - length)) >>> 31);
                        for (int i6 = i2; i6 < i5; i6++) {
                            if ((255 & j4) < 128) {
                                int i7 = (i4 << 3) + i6;
                                Object obj = objArr[i7];
                                int i8 = iArr[i7];
                                Integer num = (Integer) f9532c.get((AlignmentLine) obj);
                                if (num == null || num.intValue() != i8) {
                                    break loop0;
                                }
                            }
                            j4 >>= 8;
                        }
                        if (i5 != 8) {
                            return;
                        }
                    }
                    if (i4 == length) {
                        return;
                    }
                    i4++;
                    i2 = 0;
                }
            }
            layoutNode.I.p.z.g();
            MutableObjectIntMap mutableObjectIntMapA = this.C;
            if (mutableObjectIntMapA == null) {
                mutableObjectIntMapA = ObjectIntMapKt.a();
                this.C = mutableObjectIntMapA;
            }
            mutableObjectIntMapA.c();
            for (Map.Entry entry : measureResult.getF5642a().entrySet()) {
                mutableObjectIntMapA.h(((Number) entry.getValue()).intValue(), entry.getKey());
            }
        }
    }

    public final long Z0(NodeCoordinator nodeCoordinator, long j2, boolean z) {
        if (nodeCoordinator == this) {
            return j2;
        }
        NodeCoordinator nodeCoordinator2 = this.u;
        return (nodeCoordinator2 == null || Intrinsics.c(nodeCoordinator, nodeCoordinator2)) ? h1(j2, z) : h1(nodeCoordinator2.Z0(nodeCoordinator, j2, z), z);
    }

    public final void Z1(final Modifier.Node node, final HitTestSource hitTestSource, final long j2, final HitTestResult hitTestResult, final int i2, final boolean z, final float f2) {
        int i3;
        if (node == null) {
            F1(hitTestSource, j2, hitTestResult, i2, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            Z1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult, i2, z, f2);
            return;
        }
        if (!hitTestSource.c(node)) {
            T1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult, i2, z, f2, false);
            return;
        }
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$speculativeHit$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Modifier.Node nodeA = NodeCoordinatorKt.a(node, hitTestSource.a());
                NodeCoordinator.Companion companion = NodeCoordinator.R;
                this.f9796c.T1(nodeA, hitTestSource, j2, hitTestResult, i2, z, f2, false);
                return Unit.f71739a;
            }
        };
        MutableLongList mutableLongList = hitTestResult.f9668c;
        MutableObjectList mutableObjectList = hitTestResult.f9667b;
        int i4 = hitTestResult.d;
        int i5 = mutableObjectList.f3346b;
        if (i4 != i5 - 1) {
            long jF = hitTestResult.f();
            int i6 = hitTestResult.d;
            int i7 = mutableObjectList.f3346b;
            int i8 = i7 - 1;
            hitTestResult.d = i8;
            hitTestResult.h(i7, mutableObjectList.f3346b);
            hitTestResult.d++;
            mutableObjectList.g(node);
            mutableLongList.a(HitTestResultKt.a(f2, z, false));
            function0.mo47invoke();
            hitTestResult.d = i8;
            long jF2 = hitTestResult.f();
            if (hitTestResult.d + 1 >= mutableObjectList.f3346b - 1 || DistanceAndFlags.a(jF, jF2) <= 0) {
                hitTestResult.h(hitTestResult.d + 1, mutableObjectList.f3346b);
            } else {
                int i9 = i6 + 1;
                boolean zC = DistanceAndFlags.c(jF2);
                int i10 = hitTestResult.d;
                hitTestResult.h(i9, zC ? i10 + 2 : i10 + 1);
            }
            hitTestResult.d = i6;
            return;
        }
        int i11 = i4 + 1;
        hitTestResult.h(i11, i5);
        hitTestResult.d++;
        mutableObjectList.g(node);
        mutableLongList.a(HitTestResultKt.a(f2, z, false));
        function0.mo47invoke();
        hitTestResult.d = i4;
        if (i11 == mutableObjectList.f3346b - 1 || DistanceAndFlags.c(hitTestResult.f())) {
            int i12 = hitTestResult.d;
            int i13 = i12 + 1;
            mutableObjectList.m(i13);
            if (i13 < 0 || i13 >= (i3 = mutableLongList.f3276b)) {
                az.v("Index must be between 0 and size");
                return;
            }
            long[] jArr = mutableLongList.f3275a;
            long j3 = jArr[i13];
            if (i13 != i3 - 1) {
                ArraysKt.k(i13, jArr, i12 + 2, jArr, i3);
            }
            mutableLongList.f3276b--;
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long a() {
        return this.d;
    }

    public final long a1(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) - m0();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - l0();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat / 2.0f))) << 32) | (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat2 / 2.0f))) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    public final float b1(long j2, long j3) {
        if (m0() >= Float.intBitsToFloat((int) (j3 >> 32)) && l0() >= Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax))) {
            return Float.POSITIVE_INFINITY;
        }
        long jA1 = a1(j3);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jA1 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jA1 & BodyPartID.bodyIdMax));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32));
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat3 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? -fIntBitsToFloat3 : fIntBitsToFloat3 - m0());
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat4 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? -fIntBitsToFloat4 : fIntBitsToFloat4 - l0()))) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        if (fIntBitsToFloat > Call.Parameters.DEFAULT_CAMERA_ZOOM || fIntBitsToFloat2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int i2 = (int) (jFloatToRawIntBits >> 32);
            if (Float.intBitsToFloat(i2) <= fIntBitsToFloat) {
                int i3 = (int) (jFloatToRawIntBits & BodyPartID.bodyIdMax);
                if (Float.intBitsToFloat(i3) <= fIntBitsToFloat2) {
                    float fIntBitsToFloat5 = Float.intBitsToFloat(i2);
                    float fIntBitsToFloat6 = Float.intBitsToFloat(i3);
                    return (fIntBitsToFloat6 * fIntBitsToFloat6) + (fIntBitsToFloat5 * fIntBitsToFloat5);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }

    public final Rect b2() {
        if (!p1().o) {
            Rect.f8809e.getClass();
            return Rect.f8810f;
        }
        LayoutCoordinates layoutCoordinatesC = LayoutCoordinatesKt.c(this);
        MutableRect mutableRect = this.F;
        if (mutableRect == null) {
            mutableRect = new MutableRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.F = mutableRect;
        }
        long jA1 = a1(j1());
        int i2 = (int) (jA1 >> 32);
        mutableRect.f8803a = -Float.intBitsToFloat(i2);
        int i3 = (int) (jA1 & BodyPartID.bodyIdMax);
        mutableRect.f8804b = -Float.intBitsToFloat(i3);
        mutableRect.f8805c = Float.intBitsToFloat(i2) + m0();
        mutableRect.d = Float.intBitsToFloat(i3) + l0();
        while (this != layoutCoordinatesC) {
            this.W1(mutableRect, false, true);
            if (mutableRect.b()) {
                Rect.f8809e.getClass();
                return Rect.f8810f;
            }
            this = this.u;
            this.getClass();
        }
        return new Rect(mutableRect.f8803a, mutableRect.f8804b, mutableRect.f8805c, mutableRect.d);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean c() {
        return p1().o;
    }

    public final void c2(NodeCoordinator nodeCoordinator, float[] fArr) {
        if (Intrinsics.c(nodeCoordinator, this)) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.u;
        nodeCoordinator2.getClass();
        nodeCoordinator2.c2(nodeCoordinator, fArr);
        long j2 = this.D;
        IntOffset.f11012b.getClass();
        if (!IntOffset.b(j2, 0L)) {
            float[] fArr2 = X;
            Matrix.d(fArr2);
            long j3 = this.D;
            Matrix.f(-((int) (j3 >> 32)), -((int) (j3 & BodyPartID.bodyIdMax)), fArr2);
            Matrix.e(fArr, fArr2);
        }
        OwnedLayer ownedLayer = this.P;
        if (ownedLayer != null) {
            ownedLayer.i(fArr);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates d0() {
        boolean z = p1().o;
        LayoutNode layoutNode = this.q;
        if (!z) {
            StringBuilder sb = new StringBuilder("LayoutCoordinate operations are only valid when isAttached is true");
            for (LayoutNode layoutNodeO = layoutNode; layoutNodeO != null; layoutNodeO = layoutNodeO.O()) {
                sb.append("\n|");
                sb.append(layoutNodeO);
                sb.append(" isAttached=");
                sb.append(layoutNodeO.c());
                sb.append(" modifier=");
                sb.append(layoutNodeO.M);
                sb.append(" tail=");
                sb.append(p1());
            }
            InlineClassHelperKt.c(sb.toString());
        }
        M1();
        return layoutNode.H.d.u;
    }

    public final void d1(Canvas canvas, GraphicsLayer graphicsLayer) {
        OwnedLayer ownedLayer = this.P;
        if (ownedLayer != null) {
            ownedLayer.d(canvas, graphicsLayer);
            return;
        }
        long j2 = this.D;
        IntOffset.Companion companion = IntOffset.f11012b;
        float f2 = (int) (j2 >> 32);
        float f3 = (int) (j2 & BodyPartID.bodyIdMax);
        canvas.j(f2, f3);
        e1(canvas, graphicsLayer);
        canvas.j(-f2, -f3);
    }

    public final void d2(NodeCoordinator nodeCoordinator, float[] fArr) {
        while (!this.equals(nodeCoordinator)) {
            OwnedLayer ownedLayer = this.P;
            if (ownedLayer != null) {
                ownedLayer.a(fArr);
            }
            long j2 = this.D;
            IntOffset.f11012b.getClass();
            if (!IntOffset.b(j2, 0L)) {
                float[] fArr2 = X;
                Matrix.d(fArr2);
                Matrix.f((int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax), fArr2);
                Matrix.e(fArr, fArr2);
            }
            this = this.u;
            this.getClass();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e */
    public final Object getZ() {
        LayoutNode layoutNode = this.q;
        if (!layoutNode.H.d(64)) {
            return null;
        }
        p1();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        for (Modifier.Node node = layoutNode.H.f9773e; node != null; node = node.f8611f) {
            if ((node.d & 64) != 0) {
                ?? B = node;
                ?? mutableVector = 0;
                while (B != 0) {
                    if (B instanceof ParentDataModifierNode) {
                        ref$ObjectRef.f71921b = ((ParentDataModifierNode) B).B(layoutNode.A, ref$ObjectRef.f71921b);
                    } else if ((B.d & 64) != 0 && (B instanceof DelegatingNode)) {
                        Modifier.Node node2 = ((DelegatingNode) B).q;
                        int i2 = 0;
                        B = B;
                        mutableVector = mutableVector;
                        while (node2 != null) {
                            if ((node2.d & 64) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    mutableVector = mutableVector;
                                    B = node2;
                                } else {
                                    if (mutableVector == 0) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B != 0) {
                                        mutableVector.b(B);
                                        B = 0;
                                    }
                                    mutableVector.b(node2);
                                }
                            }
                            node2 = node2.g;
                            B = B;
                            mutableVector = mutableVector;
                        }
                        if (i2 == 1) {
                        }
                    }
                    B = DelegatableNodeKt.b(mutableVector);
                }
            }
        }
        return ref$ObjectRef.f71921b;
    }

    public final void e1(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        Canvas canvas2;
        GraphicsLayer graphicsLayer2;
        Modifier.Node nodeV1 = v1(4);
        if (nodeV1 == null) {
            U1(canvas, graphicsLayer);
            return;
        }
        LayoutNode layoutNode = this.q;
        layoutNode.getClass();
        LayoutNodeDrawScope sharedDrawScope = LayoutNodeKt.a(layoutNode).getSharedDrawScope();
        long jD = IntSizeKt.d(this.d);
        sharedDrawScope.getClass();
        MutableVector mutableVector = null;
        while (nodeV1 != null) {
            if (nodeV1 instanceof DrawModifierNode) {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                sharedDrawScope.c(canvas2, jD, nodeCoordinator, (DrawModifierNode) nodeV1, graphicsLayer2);
            } else {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                if ((nodeV1.d & 4) != 0 && (nodeV1 instanceof DelegatingNode)) {
                    int i2 = 0;
                    for (Modifier.Node node = ((DelegatingNode) nodeV1).q; node != null; node = node.g) {
                        if ((node.d & 4) != 0) {
                            i2++;
                            if (i2 == 1) {
                                nodeV1 = node;
                            } else {
                                if (mutableVector == null) {
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (nodeV1 != null) {
                                    mutableVector.b(nodeV1);
                                    nodeV1 = null;
                                }
                                mutableVector.b(node);
                            }
                        }
                    }
                    if (i2 == 1) {
                    }
                }
                canvas = canvas2;
                this = nodeCoordinator;
                graphicsLayer = graphicsLayer2;
            }
            nodeV1 = DelegatableNodeKt.b(mutableVector);
            canvas = canvas2;
            this = nodeCoordinator;
            graphicsLayer = graphicsLayer2;
        }
    }

    public final void e2(Function1 function1, boolean z) {
        Owner owner;
        if (function1 != null && this.Q != null) {
            InlineClassHelperKt.a("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNode = this.q;
        boolean z2 = (!z && this.x == function1 && Intrinsics.c(this.y, layoutNode.A) && this.z == layoutNode.B) ? false : true;
        this.y = layoutNode.A;
        this.z = layoutNode.B;
        boolean zC = layoutNode.c();
        Function0 function0 = this.N;
        if (!zC || function1 == null) {
            this.x = null;
            OwnedLayer ownedLayer = this.P;
            if (ownedLayer != null) {
                if (!MatrixKt.a(ownedLayer.mo3getUnderlyingMatrixsQKQjiQ())) {
                    layoutNode.e0(this);
                }
                ownedLayer.destroy();
                this.P = null;
                layoutNode.L = true;
                ((NodeCoordinator$invalidateParentLayer$1) function0).mo47invoke();
                if (p1().o && layoutNode.A() && (owner = layoutNode.p) != null) {
                    owner.k(layoutNode);
                }
            }
            this.O = false;
            return;
        }
        this.x = function1;
        if (this.P != null) {
            if (z2) {
                f2(true);
                return;
            }
            return;
        }
        Owner ownerA = LayoutNodeKt.a(layoutNode);
        Function2 function2 = this.M;
        if (function2 == null) {
            NodeCoordinator$drawBlock$1 nodeCoordinator$drawBlock$1 = new NodeCoordinator$drawBlock$1(this, new NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1(this));
            this.M = nodeCoordinator$drawBlock$1;
            function2 = nodeCoordinator$drawBlock$1;
        }
        OwnedLayer ownedLayerV = ownerA.v(function2, function0, null);
        ownedLayerV.c(this.d);
        ownedLayerV.j(this.D);
        this.P = ownedLayerV;
        f2(true);
        layoutNode.L = true;
        ((NodeCoordinator$invalidateParentLayer$1) function0).mo47invoke();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long f(long j2) {
        if (!p1().o) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return u(LayoutCoordinatesKt.c(this), LayoutNodeKt.a(this.q).f(j2), true);
    }

    public abstract void f1();

    public final void f2(boolean z) {
        Owner owner;
        if (this.Q != null) {
            return;
        }
        OwnedLayer ownedLayer = this.P;
        final Function1 function1 = this.x;
        if (ownedLayer == null) {
            if (function1 == null) {
                return;
            }
            InlineClassHelperKt.c("null layer with a non-null layerBlock");
            return;
        }
        if (function1 == null) {
            throw a.s("updateLayerParameters requires a non-null layerBlock");
        }
        ReusableGraphicsLayerScope reusableGraphicsLayerScope = V;
        reusableGraphicsLayerScope.c();
        LayoutNode layoutNode = this.q;
        reusableGraphicsLayerScope.t = layoutNode.A;
        reusableGraphicsLayerScope.u = layoutNode.B;
        reusableGraphicsLayerScope.s = IntSizeKt.d(this.d);
        LayoutNodeKt.a(layoutNode).getSnapshotObserver().f9812a.e(this, S, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$updateLayerParameters$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = NodeCoordinator.V;
                function1.invoke(reusableGraphicsLayerScope2);
                NodeCoordinator nodeCoordinator = this;
                boolean zC = Intrinsics.c(nodeCoordinator.H, reusableGraphicsLayerScope2.p);
                boolean z2 = nodeCoordinator.I;
                boolean z3 = reusableGraphicsLayerScope2.q;
                boolean z4 = z2 != z3;
                if (!zC || z4) {
                    nodeCoordinator.H = reusableGraphicsLayerScope2.p;
                    nodeCoordinator.I = z3;
                    if (nodeCoordinator.J && (z4 || (z3 && !zC))) {
                        nodeCoordinator.q.Y();
                    }
                }
                nodeCoordinator.J = true;
                reusableGraphicsLayerScope2.y = reusableGraphicsLayerScope2.p.a(reusableGraphicsLayerScope2.s, reusableGraphicsLayerScope2.u, reusableGraphicsLayerScope2.t);
                return Unit.f71739a;
            }
        });
        LayerPositionalProperties layerPositionalProperties = this.G;
        if (layerPositionalProperties == null) {
            layerPositionalProperties = new LayerPositionalProperties();
            this.G = layerPositionalProperties;
        }
        LayerPositionalProperties layerPositionalProperties2 = W;
        layerPositionalProperties2.getClass();
        layerPositionalProperties2.f9678a = layerPositionalProperties.f9678a;
        layerPositionalProperties2.f9679b = layerPositionalProperties.f9679b;
        layerPositionalProperties2.f9680c = layerPositionalProperties.f9680c;
        layerPositionalProperties2.d = layerPositionalProperties.d;
        layerPositionalProperties2.f9681e = layerPositionalProperties.f9681e;
        layerPositionalProperties2.f9682f = layerPositionalProperties.f9682f;
        layerPositionalProperties2.g = layerPositionalProperties.g;
        layerPositionalProperties2.f9683h = layerPositionalProperties.f9683h;
        layerPositionalProperties2.f9684i = layerPositionalProperties.f9684i;
        layerPositionalProperties.f9678a = reusableGraphicsLayerScope.f8916c;
        layerPositionalProperties.f9679b = reusableGraphicsLayerScope.d;
        layerPositionalProperties.f9680c = reusableGraphicsLayerScope.f8918f;
        layerPositionalProperties.d = reusableGraphicsLayerScope.g;
        layerPositionalProperties.f9681e = reusableGraphicsLayerScope.f8922k;
        layerPositionalProperties.f9682f = reusableGraphicsLayerScope.l;
        layerPositionalProperties.g = reusableGraphicsLayerScope.m;
        layerPositionalProperties.f9683h = reusableGraphicsLayerScope.n;
        layerPositionalProperties.f9684i = reusableGraphicsLayerScope.o;
        ownedLayer.g(reusableGraphicsLayerScope);
        boolean z2 = this.w;
        this.w = reusableGraphicsLayerScope.q;
        this.A = reusableGraphicsLayerScope.f8917e;
        boolean z3 = layerPositionalProperties2.f9678a == layerPositionalProperties.f9678a && layerPositionalProperties2.f9679b == layerPositionalProperties.f9679b && layerPositionalProperties2.f9680c == layerPositionalProperties.f9680c && layerPositionalProperties2.d == layerPositionalProperties.d && layerPositionalProperties2.f9681e == layerPositionalProperties.f9681e && layerPositionalProperties2.f9682f == layerPositionalProperties.f9682f && layerPositionalProperties2.g == layerPositionalProperties.g && layerPositionalProperties2.f9683h == layerPositionalProperties.f9683h && TransformOrigin.a(layerPositionalProperties2.f9684i, layerPositionalProperties.f9684i);
        if (z && ((!z3 || z2 != this.w) && (owner = layoutNode.p) != null)) {
            owner.k(layoutNode);
        }
        if (z3) {
            return;
        }
        layoutNode.e0(this);
        if (layoutNode.R > 0) {
            LayoutNodeKt.a(layoutNode).i(layoutNode);
        }
    }

    public final NodeCoordinator g1(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNodeO = nodeCoordinator.q;
        LayoutNode layoutNode = this.q;
        if (layoutNodeO == layoutNode) {
            Modifier.Node nodeP1 = nodeCoordinator.p1();
            Modifier.Node nodeP2 = p1();
            if (!nodeP2.f8608b.o) {
                InlineClassHelperKt.c("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node node = nodeP2.f8608b.f8611f; node != null; node = node.f8611f) {
                if ((node.d & 2) != 0 && node == nodeP1) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNodeO.r > layoutNode.r) {
            layoutNodeO = layoutNodeO.O();
            layoutNodeO.getClass();
        }
        LayoutNode layoutNodeO2 = layoutNode;
        while (layoutNodeO2.r > layoutNodeO.r) {
            layoutNodeO2 = layoutNodeO2.O();
            layoutNodeO2.getClass();
        }
        while (layoutNodeO != layoutNodeO2) {
            layoutNodeO = layoutNodeO.O();
            layoutNodeO2 = layoutNodeO2.O();
            if (layoutNodeO == null || layoutNodeO2 == null) {
                md.n("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (layoutNodeO2 != layoutNode) {
            if (layoutNodeO != nodeCoordinator.q) {
                return layoutNodeO.H.f9772c;
            }
            return nodeCoordinator;
        }
        return this;
    }

    public final boolean g2(long j2) {
        if ((((9187343241974906880L ^ (j2 & 9187343241974906880L)) - 4294967297L) & (-9223372034707292160L)) != 0) {
            return false;
        }
        OwnedLayer ownedLayer = this.P;
        return ownedLayer == null || !this.w || ownedLayer.f(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.q.A.getF11002b();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    /* JADX INFO: renamed from: getLayoutDirection */
    public final LayoutDirection getF9421c() {
        return this.q.B;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long h(long j2) {
        if (!p1().o) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return LayoutNodeKt.a(this.q).h(h0(j2));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long h0(long j2) {
        if (!p1().o) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        M1();
        while (this != null) {
            LayoutNode layoutNode = this.q;
            if (this == layoutNode.H.d && !layoutNode.d) {
                long jB = LayoutNodeKt.a(layoutNode).getRectManager().b(layoutNode);
                IntOffset.f11012b.getClass();
                if (!IntOffset.b(jB, IntOffset.f11013c)) {
                    return IntOffsetKt.a(j2, jB);
                }
            }
            OwnedLayer ownedLayer = this.P;
            if (ownedLayer != null) {
                j2 = ownedLayer.b(j2, false);
            }
            j2 = IntOffsetKt.a(j2, this.D);
            this = this.u;
        }
        return j2;
    }

    public final long h1(long j2, boolean z) {
        if (z || !this.f9717j) {
            long j3 = this.D;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            IntOffset.Companion companion = IntOffset.f11012b;
            j2 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - ((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fIntBitsToFloat - ((int) (j3 >> 32)))) << 32);
            Offset.Companion companion2 = Offset.f8806b;
        }
        OwnedLayer ownedLayer = this.P;
        return ownedLayer != null ? ownedLayer.b(j2, true) : j2;
    }

    /* JADX INFO: renamed from: i1 */
    public abstract LookaheadDelegate getB1();

    public final long j1() {
        return this.y.K1(this.q.C.e());
    }

    @Override // androidx.compose.ui.layout.Placeable
    public void o0(long j2, float f2, GraphicsLayer graphicsLayer) {
        if (!this.r) {
            V1(j2, f2, null, graphicsLayer);
            return;
        }
        LookaheadDelegate lookaheadDelegateI1 = getB1();
        lookaheadDelegateI1.getClass();
        V1(lookaheadDelegateI1.r, f2, null, graphicsLayer);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public void p0(long j2, float f2, Function1 function1) {
        if (!this.r) {
            V1(j2, f2, function1, null);
            return;
        }
        LookaheadDelegate lookaheadDelegateI1 = getB1();
        lookaheadDelegateI1.getClass();
        V1(lookaheadDelegateI1.r, f2, function1, null);
    }

    public abstract Modifier.Node p1();

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.q.A.getF11003c();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long u(LayoutCoordinates layoutCoordinates, long j2, boolean z) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
            lookaheadLayoutCoordinates.f9521b.q.M1();
            Offset.Companion companion = Offset.f8806b;
            return lookaheadLayoutCoordinates.u(this, j2 ^ (-9223372034707292160L), z) ^ (-9223372034707292160L);
        }
        NodeCoordinator nodeCoordinatorA2 = a2(layoutCoordinates);
        nodeCoordinatorA2.M1();
        NodeCoordinator nodeCoordinatorG1 = g1(nodeCoordinatorA2);
        while (nodeCoordinatorA2 != nodeCoordinatorG1) {
            OwnedLayer ownedLayer = nodeCoordinatorA2.P;
            if (ownedLayer != null) {
                j2 = ownedLayer.b(j2, false);
            }
            if (z || !nodeCoordinatorA2.f9717j) {
                j2 = IntOffsetKt.a(j2, nodeCoordinatorA2.D);
            }
            nodeCoordinatorA2 = nodeCoordinatorA2.u;
            nodeCoordinatorA2.getClass();
        }
        return Z0(nodeCoordinatorG1, j2, z);
    }

    public final Modifier.Node v1(int i2) {
        boolean zG = NodeKindKt.g(i2);
        Modifier.Node nodeP1 = p1();
        if (!zG && (nodeP1 = nodeP1.f8611f) == null) {
            return null;
        }
        for (Modifier.Node nodeW1 = w1(zG); nodeW1 != null && (nodeW1.f8610e & i2) != 0; nodeW1 = nodeW1.g) {
            if ((nodeW1.d & i2) != 0) {
                return nodeW1;
            }
            if (nodeW1 == nodeP1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates w() {
        return this;
    }

    public final Modifier.Node w1(boolean z) {
        Modifier.Node nodeP1;
        NodeChain nodeChain = this.q.H;
        if (nodeChain.d == this) {
            return nodeChain.f9774f;
        }
        NodeCoordinator nodeCoordinator = this.u;
        if (!z) {
            if (nodeCoordinator != null) {
                return nodeCoordinator.p1();
            }
            return null;
        }
        if (nodeCoordinator == null || (nodeP1 = nodeCoordinator.p1()) == null) {
            return null;
        }
        return nodeP1.g;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long y(LayoutCoordinates layoutCoordinates, long j2) {
        return u(layoutCoordinates, j2, true);
    }

    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.Object, java.util.List] */
    public final void y1(Modifier.Node node, HitTestSource hitTestSource, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        HitTestResult hitTestResult2;
        if (node == null) {
            F1(hitTestSource, j2, hitTestResult, i2, z);
            hitTestResult2 = hitTestResult;
        } else if (hitTestSource.f(node)) {
            hitTestResult2 = hitTestResult;
            int i3 = hitTestResult2.d;
            MutableObjectList mutableObjectList = hitTestResult2.f9667b;
            hitTestResult2.h(i3 + 1, mutableObjectList.f3346b);
            hitTestResult2.d++;
            mutableObjectList.g(node);
            hitTestResult2.f9668c.a(HitTestResultKt.a(-1.0f, z, false));
            y1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult2, i2, z);
            hitTestResult2.d = i3;
        } else {
            hitTestResult2 = hitTestResult;
            y1(NodeCoordinatorKt.a(node, hitTestSource.a()), hitTestSource, j2, hitTestResult2, i2, z);
        }
        long jF = hitTestResult2.f();
        boolean z2 = DistanceAndFlags.b(jF) < Call.Parameters.DEFAULT_CAMERA_ZOOM && DistanceAndFlags.d(jF) && !DistanceAndFlags.c(jF);
        LayoutNode layoutNode = this.q;
        LayoutNode layoutNode2 = layoutNode;
        while (true) {
            LayoutNode layoutNodeO = layoutNode2.O();
            if (layoutNodeO == null) {
                break;
            } else {
                layoutNode2 = layoutNodeO;
            }
        }
        List listH = layoutNode2.H();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; listH.size() > i4; i4++) {
            LayoutNode layoutNode3 = (LayoutNode) listH.get(i4);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(layoutNode3);
            arrayList3.add(Integer.valueOf(i4));
            arrayList2.add(0, arrayList3);
        }
        while (!arrayList2.isEmpty()) {
            ?? Remove = arrayList2.remove(arrayList2.size() - 1);
            LayoutNode layoutNode4 = (LayoutNode) Remove.get(0);
            int iIntValue = ((Integer) Remove.get(1)).intValue();
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(Integer.toString(layoutNode4.f9689c));
            arrayList4.add(Integer.toString(iIntValue));
            arrayList.add(arrayList4);
            List listH2 = layoutNode4.H();
            for (int i5 = 0; listH2.size() > i5; i5++) {
                LayoutNode layoutNode5 = (LayoutNode) listH2.get(i5);
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(layoutNode5);
                arrayList5.add(Integer.valueOf(i5));
                arrayList2.add(0, arrayList5);
            }
        }
        TouchUserInteractionHandler touchUserInteractionHandler = UserInteractionsApi.f26698a;
        layoutNode.getClass();
        NodeChain nodeChain = layoutNode.H;
        TouchUserInteractionHandler touchUserInteractionHandler2 = UserInteractionsApi.f26698a;
        touchUserInteractionHandler2.getClass();
        if (!UserInteractionUtilsKt.d(layoutNode) || z2) {
            return;
        }
        List listX = SequencesKt.x(SequencesKt.f(SequencesKt.k(CollectionsKt.o(touchUserInteractionHandler2.f26686a.values())), new p11(RectKt.a(LayoutCoordinatesKt.f(nodeChain.f9772c), IntSizeKt.d(nodeChain.f9772c.d)), 8)));
        listX.getClass();
        ComposeElementInfo composeElementInfo = new ComposeElementInfo(UserInteractionUtilsKt.a(layoutNode), TouchUserInteractionHandler.c(layoutNode, arrayList), TouchUserInteractionHandler.b(layoutNode), UserInteractionUtilsKt.c(layoutNode), TouchUserInteractionHandler.a(layoutNode, true));
        List<LayoutInfo> list = listX;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list, 10));
        for (LayoutInfo layoutInfo : list) {
            arrayList6.add(new ComposeElementInfo(UserInteractionUtilsKt.a(layoutInfo), TouchUserInteractionHandler.c(layoutInfo, arrayList), TouchUserInteractionHandler.b(layoutInfo), UserInteractionUtilsKt.c(layoutInfo), TouchUserInteractionHandler.a(layoutInfo, true)));
        }
        ComposeTouchEvent composeTouchEvent = new ComposeTouchEvent(composeElementInfo, arrayList6, null, 4, null);
        Iterator it = ComposeEventObserverHandler.f26684a.iterator();
        while (it.hasNext()) {
            ((ComposeEventObserver) it.next()).a(composeTouchEvent);
        }
    }
}
