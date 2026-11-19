package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ReusableGraphicsLayerScope implements GraphicsLayerScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f8916c = 1.0f;
    public float d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f8917e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f8918f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f8919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f8920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f8921j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f8922k;
    public float l;
    public float m;
    public float n;
    public long o;
    public Shape p;
    public boolean q;
    public int r;
    public long s;
    public Density t;
    public LayoutDirection u;
    public RenderEffect v;
    public ColorFilter w;
    public int x;
    public Outline y;

    public ReusableGraphicsLayerScope() {
        long j2 = GraphicsLayerScopeKt.f8891a;
        this.f8920i = j2;
        this.f8921j = j2;
        this.n = 8.0f;
        TransformOrigin.f8941b.getClass();
        this.o = TransformOrigin.f8942c;
        this.p = RectangleShapeKt.f8913a;
        CompositingStrategy.f8875a.getClass();
        this.r = 0;
        Size.f8820b.getClass();
        this.s = Size.f8821c;
        this.t = DensityKt.b();
        this.u = LayoutDirection.Ltr;
        BlendMode.f8847a.getClass();
        this.x = BlendMode.d;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void A(ColorFilter colorFilter) {
        if (Intrinsics.c(this.w, colorFilter)) {
            return;
        }
        this.f8915b |= 262144;
        this.w = colorFilter;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void C0(long j2) {
        if (TransformOrigin.a(this.o, j2)) {
            return;
        }
        this.f8915b |= 4096;
        this.o = j2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void D(float f2) {
        if (this.f8918f == f2) {
            return;
        }
        this.f8915b |= 8;
        this.f8918f = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* JADX INFO: renamed from: b, reason: from getter */
    public final long getS() {
        return this.s;
    }

    public final void c() {
        m(1.0f);
        x(1.0f);
        d(1.0f);
        D(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        g(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        t(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        long j2 = GraphicsLayerScopeKt.f8891a;
        k(j2);
        p(j2);
        r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        s(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        v(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        q(8.0f);
        TransformOrigin.f8941b.getClass();
        C0(TransformOrigin.f8942c);
        r1(RectangleShapeKt.f8913a);
        o(false);
        n(null);
        A(null);
        BlendMode.f8847a.getClass();
        i(BlendMode.d);
        CompositingStrategy.f8875a.getClass();
        g0(0);
        Size.f8820b.getClass();
        this.s = Size.f8821c;
        this.y = null;
        this.f8915b = 0;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void d(float f2) {
        if (this.f8917e == f2) {
            return;
        }
        this.f8915b |= 4;
        this.f8917e = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void g(float f2) {
        if (this.g == f2) {
            return;
        }
        this.f8915b |= 16;
        this.g = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void g0(int i2) {
        int i3 = this.r;
        CompositingStrategy.Companion companion = CompositingStrategy.f8875a;
        if (i3 == i2) {
            return;
        }
        this.f8915b |= 32768;
        this.r = i2;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.t.getF11002b();
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void i(int i2) {
        int i3 = this.x;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i3 == i2) {
            return;
        }
        this.f8915b |= 524288;
        this.x = i2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void k(long j2) {
        if (Color.c(this.f8920i, j2)) {
            return;
        }
        this.f8915b |= 64;
        this.f8920i = j2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void m(float f2) {
        if (this.f8916c == f2) {
            return;
        }
        this.f8915b |= 1;
        this.f8916c = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void n(RenderEffect renderEffect) {
        if (Intrinsics.c(this.v, renderEffect)) {
            return;
        }
        this.f8915b |= 131072;
        this.v = renderEffect;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void o(boolean z) {
        if (this.q != z) {
            this.f8915b |= 16384;
            this.q = z;
        }
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void p(long j2) {
        if (Color.c(this.f8921j, j2)) {
            return;
        }
        this.f8915b |= 128;
        this.f8921j = j2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void q(float f2) {
        if (this.n == f2) {
            return;
        }
        this.f8915b |= 2048;
        this.n = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void r(float f2) {
        if (this.f8922k == f2) {
            return;
        }
        this.f8915b |= 256;
        this.f8922k = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void r1(Shape shape) {
        if (Intrinsics.c(this.p, shape)) {
            return;
        }
        this.f8915b |= 8192;
        this.p = shape;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void s(float f2) {
        if (this.l == f2) {
            return;
        }
        this.f8915b |= 512;
        this.l = f2;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.t.getF11003c();
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void t(float f2) {
        if (this.f8919h == f2) {
            return;
        }
        this.f8915b |= 32;
        this.f8919h = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void v(float f2) {
        if (this.m == f2) {
            return;
        }
        this.f8915b |= 1024;
        this.m = f2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public final void x(float f2) {
        if (this.d == f2) {
            return;
        }
        this.f8915b |= 2;
        this.d = f2;
    }
}
