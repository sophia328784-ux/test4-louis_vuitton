package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/LookaheadDelegate;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "Landroidx/compose/ui/node/NodeCoordinator;", "coordinator", "<init>", "(Landroidx/compose/ui/node/NodeCoordinator;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LookaheadDelegate extends LookaheadCapablePlaceable implements Measurable {
    public final NodeCoordinator q;
    public long r;
    public LinkedHashMap s;
    public final LookaheadLayoutCoordinates t;
    public MeasureResult u;
    public final MutableObjectIntMap v;

    public LookaheadDelegate(NodeCoordinator nodeCoordinator) {
        this.q = nodeCoordinator;
        IntOffset.f11012b.getClass();
        this.r = 0L;
        this.t = new LookaheadLayoutCoordinates(this);
        this.v = ObjectIntMapKt.a();
    }

    public static final void Y0(LookaheadDelegate lookaheadDelegate, MeasureResult measureResult) {
        LinkedHashMap linkedHashMap;
        if (measureResult != null) {
            long f9471b = (((long) measureResult.getF9727b()) & BodyPartID.bodyIdMax) | (((long) measureResult.getF9726a()) << 32);
            IntSize.Companion companion = IntSize.f11020b;
            lookaheadDelegate.q0(f9471b);
        } else {
            IntSize.f11020b.getClass();
            lookaheadDelegate.q0(0L);
        }
        if (!Intrinsics.c(lookaheadDelegate.u, measureResult) && measureResult != null && ((((linkedHashMap = lookaheadDelegate.s) != null && !linkedHashMap.isEmpty()) || !measureResult.getF5642a().isEmpty()) && !Intrinsics.c(measureResult.getF5642a(), lookaheadDelegate.s))) {
            LookaheadPassDelegate lookaheadPassDelegate = lookaheadDelegate.q.q.I.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.t.g();
            LinkedHashMap linkedHashMap2 = lookaheadDelegate.s;
            if (linkedHashMap2 == null) {
                linkedHashMap2 = new LinkedHashMap();
                lookaheadDelegate.s = linkedHashMap2;
            }
            linkedHashMap2.clear();
            linkedHashMap2.putAll(measureResult.getF5642a());
        }
        lookaheadDelegate.u = measureResult;
    }

    public int H(int i2) {
        NodeCoordinator nodeCoordinator = this.q.t;
        nodeCoordinator.getClass();
        LookaheadDelegate t0 = nodeCoordinator.getB1();
        t0.getClass();
        return t0.H(i2);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable I0() {
        NodeCoordinator nodeCoordinator = this.q.t;
        if (nodeCoordinator != null) {
            return nodeCoordinator.getB1();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    /* JADX INFO: renamed from: I1 */
    public final LayoutNode getQ() {
        return this.q.q;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean J0() {
        return this.u != null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult K0() {
        MeasureResult measureResult = this.u;
        if (measureResult != null) {
            return measureResult;
        }
        throw a.s("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable L0() {
        NodeCoordinator nodeCoordinator = this.q.u;
        if (nodeCoordinator != null) {
            return nodeCoordinator.getB1();
        }
        return null;
    }

    public int M(int i2) {
        NodeCoordinator nodeCoordinator = this.q.t;
        nodeCoordinator.getClass();
        LookaheadDelegate t0 = nodeCoordinator.getB1();
        t0.getClass();
        return t0.M(i2);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* JADX INFO: renamed from: P0, reason: from getter */
    public final long getD() {
        return this.r;
    }

    public int S(int i2) {
        NodeCoordinator nodeCoordinator = this.q.t;
        nodeCoordinator.getClass();
        LookaheadDelegate t0 = nodeCoordinator.getB1();
        t0.getClass();
        return t0.S(i2);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void X0() {
        p0(this.r, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
    }

    public final long Z0() {
        long j2 = (((long) this.f9548b) << 32) | (((long) this.f9549c) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j2;
    }

    public void a1() {
        K0().k();
    }

    public final void b1(long j2) {
        if (!IntOffset.b(this.r, j2)) {
            this.r = j2;
            NodeCoordinator nodeCoordinator = this.q;
            LookaheadPassDelegate lookaheadPassDelegate = nodeCoordinator.q.I.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.A0();
            }
            LookaheadCapablePlaceable.S0(nodeCoordinator);
        }
        if (this.l) {
            return;
        }
        A0(K0());
    }

    public final long d1(LookaheadDelegate lookaheadDelegate, boolean z) {
        IntOffset.f11012b.getClass();
        long jD = 0;
        while (!this.equals(lookaheadDelegate)) {
            if (!this.f9717j || !z) {
                jD = IntOffset.d(jD, this.r);
            }
            NodeCoordinator nodeCoordinator = this.q.u;
            nodeCoordinator.getClass();
            this = nodeCoordinator.getB1();
            this.getClass();
        }
        return jD;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e */
    public final Object getZ() {
        return this.q.getZ();
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.q.getF11002b();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    /* JADX INFO: renamed from: getLayoutDirection */
    public final LayoutDirection getF9421c() {
        return this.q.q.B;
    }

    public int l(int i2) {
        NodeCoordinator nodeCoordinator = this.q.t;
        nodeCoordinator.getClass();
        LookaheadDelegate t0 = nodeCoordinator.getB1();
        t0.getClass();
        return t0.l(i2);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void p0(long j2, float f2, Function1 function1) {
        b1(j2);
        if (this.f9718k) {
            return;
        }
        a1();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.q.getF11003c();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean u0() {
        return true;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates w() {
        return this.t;
    }
}
