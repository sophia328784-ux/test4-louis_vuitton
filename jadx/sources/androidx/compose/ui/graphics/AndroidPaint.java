package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/AndroidPaint;", "Landroidx/compose/ui/graphics/Paint;", "Landroid/graphics/Paint;", "internalPaint", "<init>", "(Landroid/graphics/Paint;)V", "()V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidPaint implements Paint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.graphics.Paint f8835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Shader f8837c;
    public ColorFilter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PathEffect f8838e;

    public AndroidPaint(android.graphics.Paint paint) {
        this.f8835a = paint;
        BlendMode.f8847a.getClass();
        this.f8836b = BlendMode.d;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public final float a() {
        return this.f8835a.getAlpha() / 255.0f;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public final long b() {
        return ColorKt.b(this.f8835a.getColor());
    }

    @Override // androidx.compose.ui.graphics.Paint
    public final void c(long j2) {
        this.f8835a.setColor(ColorKt.i(j2));
    }

    @Override // androidx.compose.ui.graphics.Paint
    public final void d(float f2) {
        this.f8835a.setAlpha((int) Math.rint(f2 * 255.0f));
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* JADX INFO: renamed from: e, reason: from getter */
    public final android.graphics.Paint getF8835a() {
        return this.f8835a;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public final void f(Shader shader) {
        this.f8837c = shader;
        this.f8835a.setShader(shader);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* JADX INFO: renamed from: g, reason: from getter */
    public final Shader getF8837c() {
        return this.f8837c;
    }

    public final int h() {
        if (this.f8835a.isFilterBitmap()) {
            FilterQuality.f8878a.getClass();
            return FilterQuality.f8879b;
        }
        FilterQuality.f8878a.getClass();
        return 0;
    }

    public final int i() {
        android.graphics.Paint.Cap strokeCap = this.f8835a.getStrokeCap();
        int i2 = strokeCap == null ? -1 : AndroidPaint_androidKt.WhenMappings.f8839a[strokeCap.ordinal()];
        if (i2 == 1) {
            StrokeCap.f8932a.getClass();
            return 0;
        }
        if (i2 == 2) {
            StrokeCap.f8932a.getClass();
            return StrokeCap.f8933b;
        }
        if (i2 != 3) {
            StrokeCap.f8932a.getClass();
            return 0;
        }
        StrokeCap.f8932a.getClass();
        return StrokeCap.f8934c;
    }

    public final int j() {
        android.graphics.Paint.Join strokeJoin = this.f8835a.getStrokeJoin();
        int i2 = strokeJoin == null ? -1 : AndroidPaint_androidKt.WhenMappings.f8840b[strokeJoin.ordinal()];
        if (i2 == 1) {
            StrokeJoin.f8935a.getClass();
            return 0;
        }
        if (i2 == 2) {
            StrokeJoin.f8935a.getClass();
            return StrokeJoin.f8937c;
        }
        if (i2 != 3) {
            StrokeJoin.f8935a.getClass();
            return 0;
        }
        StrokeJoin.f8935a.getClass();
        return StrokeJoin.f8936b;
    }

    public final void k(int i2) {
        int i3 = this.f8836b;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i3 == i2) {
            return;
        }
        this.f8836b = i2;
        this.f8835a.setBlendMode(AndroidBlendMode_androidKt.a(i2));
    }

    public final void l(ColorFilter colorFilter) {
        this.d = colorFilter;
        this.f8835a.setColorFilter(colorFilter != null ? colorFilter.f8874a : null);
    }

    public final void m(int i2) {
        FilterQuality.f8878a.getClass();
        this.f8835a.setFilterBitmap(!(i2 == 0));
    }

    public final void n(PathEffect pathEffect) {
        AndroidPathEffect androidPathEffect = (AndroidPathEffect) pathEffect;
        this.f8835a.setPathEffect(androidPathEffect != null ? androidPathEffect.f8844a : null);
        this.f8838e = pathEffect;
    }

    public final void o(int i2) {
        android.graphics.Paint.Cap cap;
        StrokeCap.f8932a.getClass();
        if (i2 == StrokeCap.f8934c) {
            cap = android.graphics.Paint.Cap.SQUARE;
        } else if (i2 == StrokeCap.f8933b) {
            cap = android.graphics.Paint.Cap.ROUND;
        } else {
            cap = i2 == 0 ? android.graphics.Paint.Cap.BUTT : android.graphics.Paint.Cap.BUTT;
        }
        this.f8835a.setStrokeCap(cap);
    }

    public final void p(int i2) {
        android.graphics.Paint.Join join;
        StrokeJoin.f8935a.getClass();
        if (i2 == 0) {
            join = android.graphics.Paint.Join.MITER;
        } else if (i2 == StrokeJoin.f8937c) {
            join = android.graphics.Paint.Join.BEVEL;
        } else {
            join = i2 == StrokeJoin.f8936b ? android.graphics.Paint.Join.ROUND : android.graphics.Paint.Join.MITER;
        }
        this.f8835a.setStrokeJoin(join);
    }

    public final void q(float f2) {
        this.f8835a.setStrokeMiter(f2);
    }

    public final void r(float f2) {
        this.f8835a.setStrokeWidth(f2);
    }

    public final void s(int i2) {
        PaintingStyle.f8906a.getClass();
        this.f8835a.setStyle(i2 == PaintingStyle.f8907b ? android.graphics.Paint.Style.STROKE : android.graphics.Paint.Style.FILL);
    }

    public AndroidPaint() {
        this(new android.graphics.Paint(7));
    }
}
