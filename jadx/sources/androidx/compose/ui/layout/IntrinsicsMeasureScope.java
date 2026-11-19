package androidx.compose.ui.layout;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.batch.android.q0.b;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/layout/IntrinsicsMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "intrinsicMeasureScope", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "<init>", "(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IntrinsicsMeasureScope implements MeasureScope, IntrinsicMeasureScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntrinsicMeasureScope f9468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LayoutDirection f9469c;

    public IntrinsicsMeasureScope(IntrinsicMeasureScope intrinsicMeasureScope, LayoutDirection layoutDirection) {
        this.f9468b = intrinsicMeasureScope;
        this.f9469c = layoutDirection;
    }

    @Override // androidx.compose.ui.unit.Density
    public final int B0(float f2) {
        return this.f9468b.B0(f2);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult B1(final int i2, final int i3, final Map map, final Function1 function1, Function1 function2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if ((i2 & b.v) != 0 || ((-16777216) & i3) != 0) {
            InlineClassHelperKt.c("Size(" + i2 + " x " + i3 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.layout.IntrinsicsMeasureScope$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight, reason: from getter */
            public final int getF9471b() {
                return i3;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth, reason: from getter */
            public final int getF9470a() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: j, reason: from getter */
            public final Map getF9472c() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: l, reason: from getter */
            public final Function1 getD() {
                return function1;
            }
        };
    }

    @Override // androidx.compose.ui.unit.Density
    public final float E0(long j2) {
        return this.f9468b.E0(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long K1(long j2) {
        return this.f9468b.K1(j2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return this.f9468b.Q(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long R(long j2) {
        return this.f9468b.R(j2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        return this.f9468b.Z(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f9468b.getF11002b();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    /* JADX INFO: renamed from: getLayoutDirection, reason: from getter */
    public final LayoutDirection getF9469c() {
        return this.f9469c;
    }

    @Override // androidx.compose.ui.unit.Density
    public final long j0(float f2) {
        return this.f9468b.j0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float k1(int i2) {
        return this.f9468b.k1(i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float l1(float f2) {
        return this.f9468b.l1(f2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f9468b.getF11003c();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean u0() {
        return this.f9468b.u0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float u1(float f2) {
        return this.f9468b.u1(f2);
    }
}
