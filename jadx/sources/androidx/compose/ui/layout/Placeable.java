package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/layout/Placeable;", "Landroidx/compose/ui/layout/Measured;", "<init>", "()V", "PlacementScope", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Placeable implements Measured {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9549c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f9551f;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/layout/Placeable$PlacementScope;", "Landroidx/compose/ui/unit/Density;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @PlacementScopeMarker
    public static abstract class PlacementScope implements Density {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f9552b;

        public static void B(PlacementScope placementScope, Placeable placeable, long j2) {
            Function1 function1 = PlaceableKt.f9553a;
            if (placementScope.f() == LayoutDirection.Ltr || placementScope.h() == 0) {
                c(placementScope, placeable);
                placeable.p0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
                return;
            }
            int iH = placementScope.h() - placeable.f9548b;
            IntOffset.Companion companion = IntOffset.f11012b;
            int i2 = iH - ((int) (j2 >> 32));
            long j3 = ((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax;
            c(placementScope, placeable);
            placeable.p0(IntOffset.d(j3 | (((long) i2) << 32), placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
        }

        public static void C(PlacementScope placementScope, Placeable placeable, long j2, GraphicsLayer graphicsLayer) {
            if (placementScope.f() == LayoutDirection.Ltr || placementScope.h() == 0) {
                c(placementScope, placeable);
                placeable.o0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, graphicsLayer);
                return;
            }
            int iH = placementScope.h() - placeable.f9548b;
            IntOffset.Companion companion = IntOffset.f11012b;
            int i2 = iH - ((int) (j2 >> 32));
            long j3 = ((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax;
            c(placementScope, placeable);
            placeable.o0(IntOffset.d(j3 | (((long) i2) << 32), placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, graphicsLayer);
        }

        public static /* synthetic */ void F(PlacementScope placementScope, Placeable placeable, int i2, int i3, Function1 function1, int i4) {
            if ((i4 & 8) != 0) {
                function1 = PlaceableKt.f9553a;
            }
            placementScope.E(placeable, i2, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
        }

        public static void H(PlacementScope placementScope, Placeable placeable, long j2) {
            Function1 function1 = PlaceableKt.f9553a;
            placementScope.getClass();
            c(placementScope, placeable);
            placeable.p0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final void c(PlacementScope placementScope, Placeable placeable) {
            placementScope.getClass();
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).E(placementScope.f9552b);
            }
        }

        public static void u(PlacementScope placementScope, Placeable placeable, long j2) {
            placementScope.getClass();
            c(placementScope, placeable);
            placeable.p0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
        }

        public static void y(PlacementScope placementScope, Placeable placeable, int i2, int i3) {
            placementScope.getClass();
            long j2 = (((long) i2) << 32) | (((long) i3) & BodyPartID.bodyIdMax);
            IntOffset.Companion companion = IntOffset.f11012b;
            if (placementScope.f() == LayoutDirection.Ltr || placementScope.h() == 0) {
                c(placementScope, placeable);
                placeable.p0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
            } else {
                long jH = (((long) ((placementScope.h() - placeable.f9548b) - ((int) (j2 >> 32)))) << 32) | (((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
                c(placementScope, placeable);
                placeable.p0(IntOffset.d(jH, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
            }
        }

        public static void z(PlacementScope placementScope, Placeable placeable, int i2, int i3) {
            Function1 function1 = PlaceableKt.f9553a;
            placementScope.getClass();
            long j2 = (((long) i2) << 32) | (((long) i3) & BodyPartID.bodyIdMax);
            IntOffset.Companion companion = IntOffset.f11012b;
            if (placementScope.f() == LayoutDirection.Ltr || placementScope.h() == 0) {
                c(placementScope, placeable);
                placeable.p0(IntOffset.d(j2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
            } else {
                long jH = (((long) ((placementScope.h() - placeable.f9548b) - ((int) (j2 >> 32)))) << 32) | (((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
                c(placementScope, placeable);
                placeable.p0(IntOffset.d(jH, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1);
            }
        }

        public final void E(Placeable placeable, int i2, int i3, float f2, Function1 function1) {
            long j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
            IntOffset.Companion companion = IntOffset.f11012b;
            c(this, placeable);
            placeable.p0(IntOffset.d(j2, placeable.f9551f), f2, function1);
        }

        public float e(Ruler ruler) {
            return Float.NaN;
        }

        public abstract LayoutDirection f();

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity */
        public float getF11000b() {
            return 1.0f;
        }

        public abstract int h();

        public final void j(Placeable placeable, int i2, int i3, float f2) {
            long j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
            IntOffset.Companion companion = IntOffset.f11012b;
            c(this, placeable);
            placeable.p0(IntOffset.d(j2, placeable.f9551f), f2, null);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1 */
        public float getD() {
            return 1.0f;
        }

        public LayoutCoordinates w() {
            return null;
        }
    }

    public Placeable() {
        IntSize.Companion companion = IntSize.f11020b;
        this.d = 0L;
        this.f9550e = PlaceableKt.f9554b;
        IntOffset.f11012b.getClass();
        this.f9551f = 0L;
    }

    public int l0() {
        return (int) (this.d & BodyPartID.bodyIdMax);
    }

    public int m0() {
        return (int) (this.d >> 32);
    }

    public final void n0() {
        this.f9548b = RangesKt.d((int) (this.d >> 32), Constraints.j(this.f9550e), Constraints.h(this.f9550e));
        int iD = RangesKt.d((int) (this.d & BodyPartID.bodyIdMax), Constraints.i(this.f9550e), Constraints.g(this.f9550e));
        this.f9549c = iD;
        int i2 = this.f9548b;
        long j2 = this.d;
        long j3 = (((long) ((i2 - ((int) (j2 >> 32))) / 2)) << 32) | (BodyPartID.bodyIdMax & ((long) ((iD - ((int) (j2 & BodyPartID.bodyIdMax))) / 2)));
        IntOffset.Companion companion = IntOffset.f11012b;
        this.f9551f = j3;
    }

    public void o0(long j2, float f2, GraphicsLayer graphicsLayer) {
        p0(j2, f2, null);
    }

    public abstract void p0(long j2, float f2, Function1 function1);

    public final void q0(long j2) {
        if (IntSize.b(this.d, j2)) {
            return;
        }
        this.d = j2;
        n0();
    }

    public final void s0(long j2) {
        if (Constraints.b(this.f9550e, j2)) {
            return;
        }
        this.f9550e = j2;
        n0();
    }
}
