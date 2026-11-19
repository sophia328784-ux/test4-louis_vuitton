package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;", "", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GraphicsLayerImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9034a = 0;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f9035a = 0;

        static {
            int i2 = GraphicsLayerImpl$Companion$DefaultDrawBlock$1.f9036c;
        }
    }

    static {
        int i2 = Companion.f9035a;
    }

    void A(ColorFilter colorFilter);

    float B();

    Matrix C();

    void D(float f2);

    int E();

    float F();

    void G(Outline outline);

    void H(long j2);

    float I();

    float J();

    float K();

    void L(int i2);

    float M();

    float N();

    void O(Canvas canvas);

    float a();

    ColorFilter b();

    RenderEffect c();

    void d(float f2);

    void e(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1);

    void f();

    void g(float f2);

    int h();

    void i(int i2);

    void j(int i2, int i3, long j2);

    void k(long j2);

    float l();

    void m(float f2);

    void n(RenderEffect renderEffect);

    void o(boolean z);

    void p(long j2);

    void q(float f2);

    void r(float f2);

    void s(float f2);

    void t(float f2);

    default boolean u() {
        return true;
    }

    void v(float f2);

    float w();

    void x(float f2);

    long y();

    long z();
}
