package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/node/LookaheadDelegate;", "lookaheadDelegate", "<init>", "(Landroidx/compose/ui/node/LookaheadDelegate;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LookaheadDelegate f9521b;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.f9521b = lookaheadDelegate;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long B(long j2) {
        return Offset.f(this.f9521b.q.B(j2), b());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void C(LayoutCoordinates layoutCoordinates, float[] fArr) {
        this.f9521b.q.C(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long I(long j2) {
        return this.f9521b.q.I(Offset.f(j2, b()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void K(float[] fArr) {
        this.f9521b.q.K(fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect L(LayoutCoordinates layoutCoordinates, boolean z) {
        return this.f9521b.q.L(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long a() {
        LookaheadDelegate lookaheadDelegate = this.f9521b;
        long j2 = (((long) lookaheadDelegate.f9548b) << 32) | (((long) lookaheadDelegate.f9549c) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j2;
    }

    public final long b() {
        LookaheadDelegate lookaheadDelegate = this.f9521b;
        LookaheadDelegate lookaheadDelegateA = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = lookaheadDelegateA.t;
        Offset.f8806b.getClass();
        return Offset.e(u(lookaheadLayoutCoordinates, 0L, true), lookaheadDelegate.q.u(lookaheadDelegateA.q, 0L, true));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean c() {
        return this.f9521b.q.p1().o;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates d0() {
        LookaheadDelegate t0;
        if (!c()) {
            InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinator = this.f9521b.q.q.H.d.u;
        if (nodeCoordinator == null || (t0 = nodeCoordinator.getT0()) == null) {
            return null;
        }
        return t0.t;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long f(long j2) {
        return Offset.f(this.f9521b.q.f(j2), b());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long h(long j2) {
        return this.f9521b.q.h(Offset.f(0L, b()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long h0(long j2) {
        return this.f9521b.q.h0(Offset.f(j2, b()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long u(LayoutCoordinates layoutCoordinates, long j2, boolean z) {
        boolean z2 = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        LookaheadDelegate lookaheadDelegate = this.f9521b;
        if (!z2) {
            LookaheadDelegate lookaheadDelegateA = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = lookaheadDelegateA.t;
            NodeCoordinator nodeCoordinator = lookaheadDelegateA.q;
            long jU = u(lookaheadLayoutCoordinates, j2, z);
            long j3 = lookaheadDelegateA.r;
            IntOffset.Companion companion = IntOffset.f11012b;
            float f2 = (int) (j3 >> 32);
            long jE = Offset.e(jU, (((long) Float.floatToRawIntBits((int) (j3 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32));
            if (!nodeCoordinator.p1().o) {
                InlineClassHelperKt.c("LayoutCoordinate operations are only valid when isAttached is true");
            }
            nodeCoordinator.M1();
            NodeCoordinator nodeCoordinator2 = nodeCoordinator.u;
            if (nodeCoordinator2 != null) {
                nodeCoordinator = nodeCoordinator2;
            }
            Offset.f8806b.getClass();
            return Offset.f(jE, nodeCoordinator.u(layoutCoordinates, 0L, z));
        }
        LookaheadDelegate lookaheadDelegate2 = ((LookaheadLayoutCoordinates) layoutCoordinates).f9521b;
        lookaheadDelegate2.q.M1();
        LookaheadDelegate t0 = lookaheadDelegate.q.g1(lookaheadDelegate2.q).getT0();
        if (t0 != null) {
            boolean z3 = !z;
            long jC = IntOffset.c(IntOffset.d(lookaheadDelegate2.d1(t0, z3), IntOffsetKt.b(j2)), lookaheadDelegate.d1(t0, z3));
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (jC >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (jC & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            return jFloatToRawIntBits;
        }
        LookaheadDelegate lookaheadDelegateA2 = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate2);
        boolean z4 = !z;
        long jD = IntOffset.d(IntOffset.d(lookaheadDelegate2.d1(lookaheadDelegateA2, z4), lookaheadDelegateA2.r), IntOffsetKt.b(j2));
        LookaheadDelegate lookaheadDelegateA3 = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
        long jC2 = IntOffset.c(jD, IntOffset.d(lookaheadDelegate.d1(lookaheadDelegateA3, z4), lookaheadDelegateA3.r));
        float f3 = (int) (jC2 >> 32);
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits((int) (jC2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f3) << 32);
        Offset.Companion companion3 = Offset.f8806b;
        NodeCoordinator nodeCoordinator3 = lookaheadDelegateA3.q.u;
        nodeCoordinator3.getClass();
        NodeCoordinator nodeCoordinator4 = lookaheadDelegateA2.q.u;
        nodeCoordinator4.getClass();
        return nodeCoordinator3.u(nodeCoordinator4, jFloatToRawIntBits2, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long y(LayoutCoordinates layoutCoordinates, long j2) {
        return u(layoutCoordinates, j2, true);
    }
}
