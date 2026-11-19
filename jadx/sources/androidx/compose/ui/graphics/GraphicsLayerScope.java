package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.PlacementScopeMarker;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Landroidx/compose/ui/unit/Density;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PlacementScopeMarker
public interface GraphicsLayerScope extends Density {
    default void A(ColorFilter colorFilter) {
    }

    void C0(long j2);

    void D(float f2);

    default long b() {
        Size.f8820b.getClass();
        return Size.f8821c;
    }

    void d(float f2);

    void g(float f2);

    default void g0(int i2) {
    }

    default void i(int i2) {
    }

    default void k(long j2) {
    }

    void m(float f2);

    default void n(RenderEffect renderEffect) {
    }

    void o(boolean z);

    default void p(long j2) {
    }

    void q(float f2);

    void r(float f2);

    void r1(Shape shape);

    void s(float f2);

    void t(float f2);

    void v(float f2);

    void x(float f2);
}
