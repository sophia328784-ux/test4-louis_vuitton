package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidBlendMode_androidKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;", "Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;", "", "ownerId", "Landroidx/compose/ui/graphics/CanvasHolder;", "canvasHolder", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "canvasDrawScope", "<init>", "(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GraphicsLayerV29 implements GraphicsLayerImpl {
    public int A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CanvasHolder f9037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CanvasDrawScope f9038c;
    public final RenderNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Paint f9040f;
    public Matrix g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9041h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f9042i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9043j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorFilter f9044k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public long q;
    public long r;
    public float s;
    public float t;
    public float u;
    public float v;
    public boolean w;
    public boolean x;
    public boolean y;
    public RenderEffect z;

    public GraphicsLayerV29(long j2, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope) {
        this.f9037b = canvasHolder;
        this.f9038c = canvasDrawScope;
        RenderNode renderNode = new RenderNode("graphicsLayer");
        this.d = renderNode;
        Size.f8820b.getClass();
        this.f9039e = 0L;
        renderNode.setClipToBounds(false);
        CompositingStrategy.Companion companion = CompositingStrategy.f9020a;
        companion.getClass();
        Q(renderNode, 0);
        this.f9042i = 1.0f;
        BlendMode.f8847a.getClass();
        this.f9043j = BlendMode.d;
        Offset.f8806b.getClass();
        this.l = 1.0f;
        this.m = 1.0f;
        Color.Companion companion2 = Color.f8866b;
        companion2.getClass();
        long j3 = Color.f8867c;
        this.q = j3;
        companion2.getClass();
        this.r = j3;
        this.v = 8.0f;
        companion.getClass();
        this.A = 0;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void A(ColorFilter colorFilter) {
        this.f9044k = colorFilter;
        Paint paint = this.f9040f;
        if (paint == null) {
            paint = new Paint();
            this.f9040f = paint;
        }
        paint.setColorFilter(colorFilter != null ? colorFilter.f8874a : null);
        R();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: B, reason: from getter */
    public final float getV() {
        return this.v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final Matrix C() {
        Matrix matrix = this.g;
        if (matrix == null) {
            matrix = new Matrix();
            this.g = matrix;
        }
        this.d.getMatrix(matrix);
        return matrix;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void D(float f2) {
        this.n = f2;
        this.d.setTranslationX(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: E, reason: from getter */
    public final int getF9043j() {
        return this.f9043j;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: F, reason: from getter */
    public final float getL() {
        return this.l;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void G(Outline outline) {
        this.d.setOutline(outline);
        this.f9041h = outline != null;
        P();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void H(long j2) {
        long j3 = 9223372034707292159L & j2;
        RenderNode renderNode = this.d;
        if (j3 == 9205357640488583168L) {
            renderNode.resetPivot();
        } else {
            renderNode.setPivotX(Float.intBitsToFloat((int) (j2 >> 32)));
            renderNode.setPivotY(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: I, reason: from getter */
    public final float getO() {
        return this.o;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: J, reason: from getter */
    public final float getN() {
        return this.n;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: K, reason: from getter */
    public final float getS() {
        return this.s;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void L(int i2) {
        this.A = i2;
        R();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: M, reason: from getter */
    public final float getP() {
        return this.p;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: N, reason: from getter */
    public final float getM() {
        return this.m;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void O(Canvas canvas) {
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.f8826a;
        ((AndroidCanvas) canvas).f8823a.drawRenderNode(this.d);
    }

    public final void P() {
        boolean z = this.w;
        boolean z2 = false;
        boolean z3 = z && !this.f9041h;
        if (z && this.f9041h) {
            z2 = true;
        }
        boolean z4 = this.x;
        RenderNode renderNode = this.d;
        if (z3 != z4) {
            this.x = z3;
            renderNode.setClipToBounds(z3);
        }
        if (z2 != this.y) {
            this.y = z2;
            renderNode.setClipToOutline(z2);
        }
    }

    public final void Q(RenderNode renderNode, int i2) {
        CompositingStrategy.Companion companion = CompositingStrategy.f9020a;
        companion.getClass();
        if (i2 == CompositingStrategy.f9021b) {
            renderNode.setUseCompositingLayer(true, this.f9040f);
            renderNode.setHasOverlappingRendering(true);
            return;
        }
        companion.getClass();
        int i3 = CompositingStrategy.f9022c;
        Paint paint = this.f9040f;
        if (i2 == i3) {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    public final void R() {
        int i2 = this.A;
        CompositingStrategy.Companion companion = CompositingStrategy.f9020a;
        companion.getClass();
        int i3 = CompositingStrategy.f9021b;
        RenderNode renderNode = this.d;
        if (i2 != i3) {
            int i4 = this.f9043j;
            BlendMode.f8847a.getClass();
            if (i4 == BlendMode.d && this.f9044k == null && this.z == null) {
                Q(renderNode, this.A);
                return;
            }
        }
        companion.getClass();
        Q(renderNode, i3);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF9042i() {
        return this.f9042i;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: b, reason: from getter */
    public final ColorFilter getF9044k() {
        return this.f9044k;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: c, reason: from getter */
    public final RenderEffect getZ() {
        return this.z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void d(float f2) {
        this.f9042i = f2;
        this.d.setAlpha(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void e(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        CanvasDrawScope canvasDrawScope = this.f9038c;
        RenderNode renderNode = this.d;
        RecordingCanvas recordingCanvasBeginRecording = renderNode.beginRecording();
        try {
            CanvasHolder canvasHolder = this.f9037b;
            AndroidCanvas androidCanvas = canvasHolder.f8863a;
            android.graphics.Canvas canvas = androidCanvas.f8823a;
            androidCanvas.f8823a = recordingCanvasBeginRecording;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
            canvasDrawScope$drawContext$1.f(density);
            canvasDrawScope$drawContext$1.g(layoutDirection);
            canvasDrawScope$drawContext$1.f9002b = graphicsLayer;
            canvasDrawScope$drawContext$1.h(this.f9039e);
            canvasDrawScope$drawContext$1.e(androidCanvas);
            ((GraphicsLayer$clipDrawBlock$1) function1).invoke(canvasDrawScope);
            canvasHolder.f8863a.f8823a = canvas;
        } finally {
            renderNode.endRecording();
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void f() {
        this.d.discardDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void g(float f2) {
        this.o = f2;
        this.d.setTranslationY(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getA() {
        return this.A;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void i(int i2) {
        this.f9043j = i2;
        Paint paint = this.f9040f;
        if (paint == null) {
            paint = new Paint();
            this.f9040f = paint;
        }
        paint.setBlendMode(AndroidBlendMode_androidKt.a(i2));
        R();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void j(int i2, int i3, long j2) {
        int i4 = ((int) (BodyPartID.bodyIdMax & j2)) + i3;
        this.d.setPosition(i2, i3, ((int) (j2 >> 32)) + i2, i4);
        this.f9039e = IntSizeKt.d(j2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void k(long j2) {
        this.q = j2;
        this.d.setAmbientShadowColor(ColorKt.i(j2));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: l, reason: from getter */
    public final float getT() {
        return this.t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void m(float f2) {
        this.l = f2;
        this.d.setScaleX(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void n(RenderEffect renderEffect) {
        this.z = renderEffect;
        if (Build.VERSION.SDK_INT >= 31) {
            RenderNodeVerificationHelper.a(this.d, renderEffect);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void o(boolean z) {
        this.w = z;
        P();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void p(long j2) {
        this.r = j2;
        this.d.setSpotShadowColor(ColorKt.i(j2));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void q(float f2) {
        this.v = f2;
        this.d.setCameraDistance(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void r(float f2) {
        this.s = f2;
        this.d.setRotationX(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void s(float f2) {
        this.t = f2;
        this.d.setRotationY(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void t(float f2) {
        this.p = f2;
        this.d.setElevation(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final boolean u() {
        return this.d.hasDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void v(float f2) {
        this.u = f2;
        this.d.setRotationZ(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: w, reason: from getter */
    public final float getU() {
        return this.u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void x(float f2) {
        this.m = f2;
        this.d.setScaleY(f2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: y, reason: from getter */
    public final long getQ() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* JADX INFO: renamed from: z, reason: from getter */
    public final long getR() {
        return this.r;
    }

    public /* synthetic */ GraphicsLayerV29(long j2, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, (i2 & 2) != 0 ? new CanvasHolder() : canvasHolder, (i2 & 4) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }
}
