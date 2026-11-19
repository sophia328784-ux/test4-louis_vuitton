package androidx.compose.ui.layout;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LayoutModifierNodeCoordinator;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.LayoutDirection;
import com.batch.android.q0.b;
import defpackage.os;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;", "Landroidx/compose/ui/layout/ApproachMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/LookaheadScope;", "Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;", "coordinator", "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "approachNode", "<init>", "(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;Landroidx/compose/ui/layout/ApproachLayoutModifierNode;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ApproachMeasureScopeImpl implements ApproachMeasureScope, MeasureScope, LookaheadScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutModifierNodeCoordinator f9430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ApproachLayoutModifierNode f9431c;
    public boolean d;

    public ApproachMeasureScopeImpl(LayoutModifierNodeCoordinator layoutModifierNodeCoordinator, ApproachLayoutModifierNode approachLayoutModifierNode) {
        this.f9430b = layoutModifierNodeCoordinator;
        this.f9431c = approachLayoutModifierNode;
    }

    @Override // androidx.compose.ui.unit.Density
    public final int B0(float f2) {
        return this.f9430b.B0(f2);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult B1(final int i2, final int i3, final Map map, final Function1 function1, final Function1 function2) {
        if ((i2 & b.v) != 0 || ((-16777216) & i3) != 0) {
            InlineClassHelperKt.c("Size(" + i2 + " x " + i3 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult(i2, i3, map, function1, function2, this) { // from class: androidx.compose.ui.layout.ApproachMeasureScopeImpl$layout$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f9432a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f9433b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Map f9434c;
            public final Function1 d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Function1 f9435e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ ApproachMeasureScopeImpl f9436f;

            {
                this.f9435e = function2;
                this.f9436f = this;
                this.f9432a = i2;
                this.f9433b = i3;
                this.f9434c = map;
                this.d = function1;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight, reason: from getter */
            public final int getF9433b() {
                return this.f9433b;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth, reason: from getter */
            public final int getF9432a() {
                return this.f9432a;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: j, reason: from getter */
            public final Map getF9434c() {
                return this.f9434c;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
                this.f9435e.invoke(this.f9436f.f9430b.m);
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: l, reason: from getter */
            public final Function1 getD() {
                return this.d;
            }
        };
    }

    @Override // androidx.compose.ui.unit.Density
    public final float E0(long j2) {
        return this.f9430b.E0(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long K1(long j2) {
        return this.f9430b.K1(j2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return this.f9430b.Q(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long R(long j2) {
        return this.f9430b.R(j2);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult V0(int i2, int i3, Map map, Function1 function1) {
        return this.f9430b.B1(i2, i3, map, null, function1);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        return this.f9430b.Z(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF9496c() {
        return this.f9430b.getF9496c();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    /* JADX INFO: renamed from: getLayoutDirection */
    public final LayoutDirection getF9495b() {
        return this.f9430b.q.B;
    }

    @Override // androidx.compose.ui.unit.Density
    public final long j0(float f2) {
        return this.f9430b.j0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float k1(int i2) {
        return this.f9430b.k1(i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float l1(float f2) {
        return this.f9430b.l1(f2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getD() {
        return this.f9430b.getD();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean u0() {
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float u1(float f2) {
        return this.f9430b.getF9496c() * f2;
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    public final LayoutCoordinates y(LayoutCoordinates layoutCoordinates) {
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates;
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            return layoutCoordinates;
        }
        if (layoutCoordinates instanceof NodeCoordinator) {
            LookaheadDelegate t0 = ((NodeCoordinator) layoutCoordinates).getB1();
            return (t0 == null || (lookaheadLayoutCoordinates = t0.t) == null) ? layoutCoordinates : lookaheadLayoutCoordinates;
        }
        InlineClassHelperKt.b("Unsupported LayoutCoordinates");
        os.d();
        return null;
    }
}
