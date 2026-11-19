package com.airbnb.lottie.utils;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import androidx.core.graphics.PaintCompat;
import com.airbnb.lottie.animation.LPaint;
import defpackage.md;
import defpackage.v7;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class OffscreenLayer {
    public static final Matrix B = new Matrix();
    public DropShadow A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Canvas f22299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ComposeOp f22300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RenderStrategy f22301c;
    public RectF d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RectF f22302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Rect f22303f;
    public RectF g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RectF f22304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Rect f22305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RectF f22306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LPaint f22307k;
    public Bitmap l;
    public Canvas m;
    public Rect n;
    public LPaint o;
    public Matrix p;
    public float[] q;
    public Bitmap r;
    public Bitmap s;
    public Canvas t;
    public Canvas u;
    public LPaint v;
    public BlurMaskFilter w;
    public float x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public RenderNode y;
    public RenderNode z;

    /* JADX INFO: renamed from: com.airbnb.lottie.utils.OffscreenLayer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22308a;

        static {
            int[] iArr = new int[RenderStrategy.values().length];
            f22308a = iArr;
            try {
                iArr[RenderStrategy.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22308a[RenderStrategy.SAVE_LAYER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22308a[RenderStrategy.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22308a[RenderStrategy.RENDER_NODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class ComposeOp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f22309a = 255;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DropShadow f22310b = null;

        public final boolean a() {
            return this.f22310b != null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RenderStrategy {
        private static final /* synthetic */ RenderStrategy[] $VALUES;
        public static final RenderStrategy BITMAP;
        public static final RenderStrategy DIRECT;
        public static final RenderStrategy RENDER_NODE;
        public static final RenderStrategy SAVE_LAYER;

        static {
            RenderStrategy renderStrategy = new RenderStrategy("DIRECT", 0);
            DIRECT = renderStrategy;
            RenderStrategy renderStrategy2 = new RenderStrategy("SAVE_LAYER", 1);
            SAVE_LAYER = renderStrategy2;
            RenderStrategy renderStrategy3 = new RenderStrategy("BITMAP", 2);
            BITMAP = renderStrategy3;
            RenderStrategy renderStrategy4 = new RenderStrategy("RENDER_NODE", 3);
            RENDER_NODE = renderStrategy4;
            $VALUES = new RenderStrategy[]{renderStrategy, renderStrategy2, renderStrategy3, renderStrategy4};
        }

        public static RenderStrategy valueOf(String str) {
            return (RenderStrategy) Enum.valueOf(RenderStrategy.class, str);
        }

        public static RenderStrategy[] values() {
            return (RenderStrategy[]) $VALUES.clone();
        }
    }

    public static Bitmap a(RectF rectF, Bitmap.Config config) {
        return Bitmap.createBitmap(Math.max((int) Math.ceil(((double) rectF.width()) * 1.05d), 1), Math.max((int) Math.ceil(((double) rectF.height()) * 1.05d), 1), config);
    }

    public static boolean d(Bitmap bitmap, RectF rectF) {
        return bitmap == null || rectF.width() >= ((float) bitmap.getWidth()) || rectF.height() >= ((float) bitmap.getHeight()) || rectF.width() < ((float) bitmap.getWidth()) * 0.75f || rectF.height() < ((float) bitmap.getHeight()) * 0.75f;
    }

    public final RectF b(RectF rectF, DropShadow dropShadow) {
        if (this.f22302e == null) {
            this.f22302e = new RectF();
        }
        if (this.g == null) {
            this.g = new RectF();
        }
        this.f22302e.set(rectF);
        this.f22302e.offsetTo(rectF.left + dropShadow.f22283b, rectF.top + dropShadow.f22284c);
        RectF rectF2 = this.f22302e;
        float f2 = dropShadow.f22282a;
        rectF2.inset(-f2, -f2);
        this.g.set(rectF);
        this.f22302e.union(this.g);
        return this.f22302e;
    }

    public final void c() {
        float f2;
        LPaint lPaint;
        if (this.f22299a == null || this.f22300b == null || this.q == null || this.d == null) {
            md.k("OffscreenBitmap: finish() call without matching start()");
            return;
        }
        int i2 = AnonymousClass1.f22308a[this.f22301c.ordinal()];
        if (i2 == 1 || i2 == 2) {
            this.f22299a.restore();
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    if (this.y == null) {
                        md.k("RenderNode is not ready; should've been initialized at start() time");
                        return;
                    }
                    this.f22299a.save();
                    Canvas canvas = this.f22299a;
                    float[] fArr = this.q;
                    canvas.scale(1.0f / fArr[0], 1.0f / fArr[4]);
                    this.y.endRecording();
                    if (this.f22300b.a()) {
                        Canvas canvas2 = this.f22299a;
                        DropShadow dropShadow = this.f22300b.f22310b;
                        if (this.y == null || this.z == null) {
                            md.k("Cannot render to render node outside a start()/finish() block");
                            return;
                        }
                        if (Build.VERSION.SDK_INT < 31) {
                            v7.h("RenderEffect is not supported on API level <31");
                            return;
                        }
                        float[] fArr2 = this.q;
                        float f3 = fArr2 != null ? fArr2[0] : 1.0f;
                        f2 = fArr2 != null ? fArr2[4] : 1.0f;
                        DropShadow dropShadow2 = this.A;
                        if (dropShadow2 == null || dropShadow.f22282a != dropShadow2.f22282a || dropShadow.f22283b != dropShadow2.f22283b || dropShadow.f22284c != dropShadow2.f22284c || dropShadow.d != dropShadow2.d) {
                            RenderEffect renderEffectCreateColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(dropShadow.d, PorterDuff.Mode.SRC_IN));
                            float f4 = dropShadow.f22282a;
                            if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                float f5 = ((f3 + f2) * f4) / 2.0f;
                                renderEffectCreateColorFilterEffect = RenderEffect.createBlurEffect(f5, f5, renderEffectCreateColorFilterEffect, Shader.TileMode.CLAMP);
                            }
                            this.z.setRenderEffect(renderEffectCreateColorFilterEffect);
                            this.A = dropShadow;
                        }
                        RectF rectFB = b(this.d, dropShadow);
                        RectF rectF = new RectF(rectFB.left * f3, rectFB.top * f2, rectFB.right * f3, rectFB.bottom * f2);
                        this.z.setPosition(0, 0, (int) rectF.width(), (int) rectF.height());
                        RecordingCanvas recordingCanvasBeginRecording = this.z.beginRecording((int) rectF.width(), (int) rectF.height());
                        recordingCanvasBeginRecording.translate((dropShadow.f22283b * f3) + (-rectF.left), (dropShadow.f22284c * f2) + (-rectF.top));
                        recordingCanvasBeginRecording.drawRenderNode(this.y);
                        this.z.endRecording();
                        canvas2.save();
                        canvas2.translate(rectF.left, rectF.top);
                        canvas2.drawRenderNode(this.z);
                        canvas2.restore();
                    }
                    this.f22299a.drawRenderNode(this.y);
                    this.f22299a.restore();
                }
            } else {
                if (this.l == null) {
                    md.k("Bitmap is not ready; should've been initialized at start() time");
                    return;
                }
                if (this.f22300b.a()) {
                    Canvas canvas3 = this.f22299a;
                    DropShadow dropShadow3 = this.f22300b.f22310b;
                    RectF rectF2 = this.d;
                    if (rectF2 == null || this.l == null) {
                        md.k("Cannot render to bitmap outside a start()/finish() block");
                        return;
                    }
                    RectF rectFB2 = b(rectF2, dropShadow3);
                    if (this.f22303f == null) {
                        this.f22303f = new Rect();
                    }
                    this.f22303f.set((int) Math.floor(rectFB2.left), (int) Math.floor(rectFB2.top), (int) Math.ceil(rectFB2.right), (int) Math.ceil(rectFB2.bottom));
                    float[] fArr3 = this.q;
                    float f6 = fArr3 != null ? fArr3[0] : 1.0f;
                    f2 = fArr3 != null ? fArr3[4] : 1.0f;
                    if (this.f22304h == null) {
                        this.f22304h = new RectF();
                    }
                    this.f22304h.set(rectFB2.left * f6, rectFB2.top * f2, rectFB2.right * f6, rectFB2.bottom * f2);
                    if (this.f22305i == null) {
                        this.f22305i = new Rect();
                    }
                    this.f22305i.set(0, 0, Math.round(this.f22304h.width()), Math.round(this.f22304h.height()));
                    if (d(this.r, this.f22304h)) {
                        Bitmap bitmap = this.r;
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        Bitmap bitmap2 = this.s;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                        }
                        this.r = a(this.f22304h, Bitmap.Config.ARGB_8888);
                        this.s = a(this.f22304h, Bitmap.Config.ALPHA_8);
                        this.t = new Canvas(this.r);
                        this.u = new Canvas(this.s);
                    } else {
                        Canvas canvas4 = this.t;
                        if (canvas4 == null || this.u == null || (lPaint = this.o) == null) {
                            md.k("If needNewBitmap() returns true, we should have a canvas and bitmap ready");
                            return;
                        } else {
                            canvas4.drawRect(this.f22305i, lPaint);
                            this.u.drawRect(this.f22305i, this.o);
                        }
                    }
                    if (this.s == null) {
                        md.k("Expected to have allocated a shadow mask bitmap");
                        return;
                    }
                    if (this.v == null) {
                        this.v = new LPaint(1);
                    }
                    RectF rectF3 = this.d;
                    this.u.drawBitmap(this.l, Math.round((rectF3.left - rectFB2.left) * f6), Math.round((rectF3.top - rectFB2.top) * f2), (Paint) null);
                    if (this.w == null || this.x != dropShadow3.f22282a) {
                        float f7 = ((f6 + f2) * dropShadow3.f22282a) / 2.0f;
                        if (f7 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            this.w = new BlurMaskFilter(f7, BlurMaskFilter.Blur.NORMAL);
                        } else {
                            this.w = null;
                        }
                        this.x = dropShadow3.f22282a;
                    }
                    this.v.setColor(dropShadow3.d);
                    float f8 = dropShadow3.f22282a;
                    LPaint lPaint2 = this.v;
                    if (f8 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        lPaint2.setMaskFilter(this.w);
                    } else {
                        lPaint2.setMaskFilter(null);
                    }
                    this.v.setFilterBitmap(true);
                    this.t.drawBitmap(this.s, Math.round(dropShadow3.f22283b * f6), Math.round(dropShadow3.f22284c * f2), this.v);
                    canvas3.drawBitmap(this.r, this.f22305i, this.f22303f, this.f22307k);
                }
                if (this.n == null) {
                    this.n = new Rect();
                }
                this.n.set(0, 0, (int) (this.d.width() * this.q[0]), (int) (this.d.height() * this.q[4]));
                this.f22299a.drawBitmap(this.l, this.n, this.d, this.f22307k);
            }
        }
        this.f22299a = null;
    }

    public final Canvas e(Canvas canvas, RectF rectF, ComposeOp composeOp) {
        RenderStrategy renderStrategy;
        if (this.f22299a != null) {
            md.k("Cannot nest start() calls on a single OffscreenBitmap - call finish() first");
            return null;
        }
        if (this.q == null) {
            this.q = new float[9];
        }
        if (this.p == null) {
            this.p = new Matrix();
        }
        canvas.getMatrix(this.p);
        this.p.getValues(this.q);
        float[] fArr = this.q;
        float f2 = fArr[0];
        float f3 = fArr[4];
        if (this.f22306j == null) {
            this.f22306j = new RectF();
        }
        this.f22306j.set(rectF.left * f2, rectF.top * f3, rectF.right * f2, rectF.bottom * f3);
        this.f22299a = canvas;
        this.f22300b = composeOp;
        if (composeOp.f22309a >= 255 && !composeOp.a()) {
            renderStrategy = RenderStrategy.DIRECT;
        } else if (composeOp.a()) {
            renderStrategy = (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT > 31) ? RenderStrategy.RENDER_NODE : RenderStrategy.BITMAP;
        } else {
            renderStrategy = RenderStrategy.SAVE_LAYER;
        }
        this.f22301c = renderStrategy;
        if (this.d == null) {
            this.d = new RectF();
        }
        this.d.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        if (this.f22307k == null) {
            this.f22307k = new LPaint();
        }
        this.f22307k.reset();
        int i2 = AnonymousClass1.f22308a[this.f22301c.ordinal()];
        if (i2 == 1) {
            canvas.save();
            return canvas;
        }
        if (i2 == 2) {
            this.f22307k.setAlpha(composeOp.f22309a);
            this.f22307k.setColorFilter(null);
            Utils.e(canvas, rectF, this.f22307k);
            return canvas;
        }
        Matrix matrix = B;
        if (i2 == 3) {
            if (this.o == null) {
                LPaint lPaint = new LPaint();
                this.o = lPaint;
                lPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            if (d(this.l, this.f22306j)) {
                Bitmap bitmap = this.l;
                if (bitmap != null) {
                    bitmap.recycle();
                }
                this.l = a(this.f22306j, Bitmap.Config.ARGB_8888);
                this.m = new Canvas(this.l);
            } else {
                Canvas canvas2 = this.m;
                if (canvas2 == null) {
                    md.k("If needNewBitmap() returns true, we should have a canvas ready");
                    return null;
                }
                canvas2.setMatrix(matrix);
                this.m.drawRect(-1.0f, -1.0f, this.f22306j.width() + 1.0f, this.f22306j.height() + 1.0f, this.o);
            }
            PaintCompat.a(this.f22307k, null);
            this.f22307k.setColorFilter(null);
            this.f22307k.setAlpha(composeOp.f22309a);
            Canvas canvas3 = this.m;
            canvas3.scale(f2, f3);
            canvas3.translate(-rectF.left, -rectF.top);
            return canvas3;
        }
        if (i2 != 4) {
            v7.h("Invalid render strategy for OffscreenLayer");
            return null;
        }
        if (this.y == null) {
            this.y = new RenderNode("OffscreenLayer.main");
        }
        if (composeOp.a() && this.z == null) {
            this.z = new RenderNode("OffscreenLayer.shadow");
            this.A = null;
        }
        this.y.setAlpha(composeOp.f22309a / 255.0f);
        if (composeOp.a()) {
            RenderNode renderNode = this.z;
            if (renderNode == null) {
                md.k("Must initialize shadowRenderNode when we have shadow");
                return null;
            }
            renderNode.setAlpha(composeOp.f22309a / 255.0f);
        }
        this.y.setHasOverlappingRendering(true);
        RenderNode renderNode2 = this.y;
        RectF rectF2 = this.f22306j;
        renderNode2.setPosition((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
        RecordingCanvas recordingCanvasBeginRecording = this.y.beginRecording((int) this.f22306j.width(), (int) this.f22306j.height());
        recordingCanvasBeginRecording.setMatrix(matrix);
        recordingCanvasBeginRecording.scale(f2, f3);
        recordingCanvasBeginRecording.translate(-rectF.left, -rectF.top);
        return recordingCanvasBeginRecording;
    }
}
