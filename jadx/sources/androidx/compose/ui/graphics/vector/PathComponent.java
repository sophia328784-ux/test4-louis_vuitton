package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathMeasure;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathComponent;", "Landroidx/compose/ui/graphics/vector/VNode;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PathComponent extends VNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Brush f9099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f9100c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f9101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f9102f;
    public Brush g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f9105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f9106k;
    public float l;
    public float m;
    public boolean n;
    public boolean o;
    public boolean p;
    public Stroke q;
    public final AndroidPath r;
    public AndroidPath s;
    public AndroidPath t;
    public final Lazy u;

    public PathComponent() {
        super(null);
        this.f9100c = 1.0f;
        this.d = VectorKt.f9173a;
        this.f9101e = 1.0f;
        this.f9103h = 0;
        this.f9104i = 0;
        this.f9105j = 4.0f;
        this.l = 1.0f;
        this.n = true;
        this.o = true;
        AndroidPath androidPathA = AndroidPath_androidKt.a();
        this.r = androidPathA;
        this.s = androidPathA;
        this.u = LazyKt.a(LazyThreadSafetyMode.NONE, PathComponent$pathMeasure$2.f9107c);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        Stroke stroke;
        if (this.n) {
            PathParserKt.b(this.d, this.r);
            e();
        } else if (this.p) {
            e();
        }
        this.n = false;
        this.p = false;
        Brush brush = this.f9099b;
        if (brush != null) {
            DrawScope.G0(drawScope, this.s, brush, this.f9100c, null, null, 0, 56);
        }
        Brush brush2 = this.g;
        if (brush2 != null) {
            Stroke stroke2 = this.q;
            if (this.o || stroke2 == null) {
                Stroke stroke3 = new Stroke(this.f9102f, this.f9105j, this.f9103h, this.f9104i, null, 16, null);
                this.q = stroke3;
                this.o = false;
                stroke = stroke3;
            } else {
                stroke = stroke2;
            }
            DrawScope.G0(drawScope, this.s, brush2, this.f9101e, stroke, null, 0, 48);
        }
    }

    public final void e() {
        float f2 = this.f9106k;
        AndroidPath androidPath = this.r;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM && this.l == 1.0f) {
            this.s = androidPath;
            return;
        }
        if (Intrinsics.c(this.s, androidPath)) {
            this.s = AndroidPath_androidKt.a();
        } else {
            int iM = this.s.m();
            this.s.k();
            this.s.h(iM);
        }
        Lazy lazy = this.u;
        ((PathMeasure) lazy.getF71699b()).b(androidPath);
        float length = ((PathMeasure) lazy.getF71699b()).getLength();
        float f3 = this.f9106k;
        float f4 = this.m;
        float f5 = ((f3 + f4) % 1.0f) * length;
        float f6 = ((this.l + f4) % 1.0f) * length;
        if (f5 <= f6) {
            ((PathMeasure) lazy.getF71699b()).a(f5, f6, this.s);
            return;
        }
        AndroidPath androidPathA = this.t;
        if (androidPathA == null) {
            androidPathA = AndroidPath_androidKt.a();
            this.t = androidPathA;
        }
        androidPathA.reset();
        ((PathMeasure) lazy.getF71699b()).a(f5, length, androidPathA);
        Path.o(this.s, androidPathA);
        androidPathA.reset();
        ((PathMeasure) lazy.getF71699b()).a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, androidPathA);
        Path.o(this.s, androidPathA);
    }

    public final String toString() {
        return this.r.toString();
    }
}
