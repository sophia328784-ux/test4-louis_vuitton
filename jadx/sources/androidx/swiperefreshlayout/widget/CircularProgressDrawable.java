package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.batch.android.q0.b;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final LinearInterpolator f19927h = new LinearInterpolator();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FastOutSlowInInterpolator f19928i = new FastOutSlowInInterpolator();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f19929j = {b.v};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Ring f19930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f19931c;
    public final Resources d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ValueAnimator f19932e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f19933f;
    public boolean g;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProgressDrawableSize {
    }

    public static class Ring {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RectF f19938a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Paint f19939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Paint f19940c;
        public final Paint d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f19941e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f19942f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f19943h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int[] f19944i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19945j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f19946k;
        public float l;
        public float m;
        public boolean n;
        public Path o;
        public float p;
        public float q;
        public int r;
        public int s;
        public int t;
        public int u;

        public Ring() {
            Paint paint = new Paint();
            this.f19939b = paint;
            Paint paint2 = new Paint();
            this.f19940c = paint2;
            Paint paint3 = new Paint();
            this.d = paint3;
            this.f19941e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f19942f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f19943h = 5.0f;
            this.p = 1.0f;
            this.t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        public final void a(int i2) {
            this.f19945j = i2;
            this.u = this.f19944i[i2];
        }
    }

    public CircularProgressDrawable(Context context) {
        context.getClass();
        this.d = context.getResources();
        final Ring ring = new Ring();
        this.f19930b = ring;
        ring.f19944i = f19929j;
        ring.a(0);
        ring.f19943h = 2.5f;
        ring.f19939b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Ring ring2 = ring;
                CircularProgressDrawable.d(fFloatValue, ring2);
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                circularProgressDrawable.a(fFloatValue, ring2, false);
                circularProgressDrawable.invalidateSelf();
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f19927h);
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                Ring ring2 = ring;
                circularProgressDrawable.a(1.0f, ring2, true);
                ring2.f19946k = ring2.f19941e;
                ring2.l = ring2.f19942f;
                ring2.m = ring2.g;
                ring2.a((ring2.f19945j + 1) % ring2.f19944i.length);
                if (!circularProgressDrawable.g) {
                    circularProgressDrawable.f19933f += 1.0f;
                    return;
                }
                circularProgressDrawable.g = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                if (ring2.n) {
                    ring2.n = false;
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.f19933f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        });
        this.f19932e = valueAnimatorOfFloat;
    }

    public static void d(float f2, Ring ring) {
        if (f2 <= 0.75f) {
            ring.u = ring.f19944i[ring.f19945j];
            return;
        }
        float f3 = (f2 - 0.75f) / 0.25f;
        int[] iArr = ring.f19944i;
        int i2 = ring.f19945j;
        int i3 = iArr[i2];
        int i4 = iArr[(i2 + 1) % iArr.length];
        int i5 = (i3 >> 24) & 255;
        int i6 = (i3 >> 16) & 255;
        int i7 = (i3 >> 8) & 255;
        int i8 = i3 & 255;
        ring.u = ((i5 + ((int) ((((i4 >> 24) & 255) - i5) * f3))) << 24) | ((i6 + ((int) ((((i4 >> 16) & 255) - i6) * f3))) << 16) | ((i7 + ((int) ((((i4 >> 8) & 255) - i7) * f3))) << 8) | (i8 + ((int) (f3 * ((i4 & 255) - i8))));
    }

    public final void a(float f2, Ring ring, boolean z) {
        float interpolation;
        if (this.g) {
            d(f2, ring);
            float fFloor = (float) (Math.floor(ring.m / 0.8f) + 1.0d);
            float f3 = ring.f19946k;
            float f4 = ring.l;
            ring.f19941e = (((f4 - 0.01f) - f3) * f2) + f3;
            ring.f19942f = f4;
            float f5 = ring.m;
            ring.g = tr.a(fFloor, f5, f2, f5);
            return;
        }
        if (f2 != 1.0f || z) {
            float f6 = ring.m;
            float interpolation2 = ring.f19946k;
            FastOutSlowInInterpolator fastOutSlowInInterpolator = f19928i;
            if (f2 < 0.5f) {
                interpolation = (fastOutSlowInInterpolator.getInterpolation(f2 / 0.5f) * 0.79f) + 0.01f + interpolation2;
            } else {
                float f7 = interpolation2 + 0.79f;
                interpolation2 = f7 - (((1.0f - fastOutSlowInInterpolator.getInterpolation((f2 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation = f7;
            }
            float f8 = (0.20999998f * f2) + f6;
            float f9 = (f2 + this.f19933f) * 216.0f;
            ring.f19941e = interpolation2;
            ring.f19942f = interpolation;
            ring.g = f8;
            this.f19931c = f9;
        }
    }

    public final void b(float f2, float f3, float f4, float f5) {
        float f6 = this.d.getDisplayMetrics().density;
        float f7 = f3 * f6;
        Ring ring = this.f19930b;
        ring.f19943h = f7;
        ring.f19939b.setStrokeWidth(f7);
        ring.q = f2 * f6;
        ring.a(0);
        ring.r = (int) (f4 * f6);
        ring.s = (int) (f5 * f6);
    }

    public final void c(int i2) {
        if (i2 == 0) {
            b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f19931c, bounds.exactCenterX(), bounds.exactCenterY());
        Ring ring = this.f19930b;
        Paint paint = ring.f19939b;
        RectF rectF = ring.f19938a;
        float f2 = ring.q;
        float fMin = (ring.f19943h / 2.0f) + f2;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fMin = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((ring.r * ring.p) / 2.0f, ring.f19943h / 2.0f);
        }
        rectF.set(bounds.centerX() - fMin, bounds.centerY() - fMin, bounds.centerX() + fMin, bounds.centerY() + fMin);
        float f3 = ring.f19941e;
        float f4 = ring.g;
        float f5 = (f3 + f4) * 360.0f;
        float f6 = ((ring.f19942f + f4) * 360.0f) - f5;
        paint.setColor(ring.u);
        paint.setAlpha(ring.t);
        float f7 = ring.f19943h / 2.0f;
        rectF.inset(f7, f7);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, ring.d);
        float f8 = -f7;
        rectF.inset(f8, f8);
        canvas.drawArc(rectF, f5, f6, false, paint);
        Paint paint2 = ring.f19940c;
        if (ring.n) {
            Path path = ring.o;
            if (path == null) {
                Path path2 = new Path();
                ring.o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float fMin2 = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f9 = (ring.r * ring.p) / 2.0f;
            ring.o.moveTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            ring.o.lineTo(ring.r * ring.p, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Path path3 = ring.o;
            float f10 = ring.r;
            float f11 = ring.p;
            path3.lineTo((f10 * f11) / 2.0f, ring.s * f11);
            ring.o.offset((rectF.centerX() + fMin2) - f9, (ring.f19943h / 2.0f) + rectF.centerY());
            ring.o.close();
            paint2.setColor(ring.u);
            paint2.setAlpha(ring.t);
            canvas.save();
            canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
            canvas.drawPath(ring.o, paint2);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f19930b.t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f19932e.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.f19930b.t = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f19930b.f19939b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        ValueAnimator valueAnimator = this.f19932e;
        valueAnimator.cancel();
        Ring ring = this.f19930b;
        float f2 = ring.f19941e;
        ring.f19946k = f2;
        float f3 = ring.f19942f;
        ring.l = f3;
        ring.m = ring.g;
        if (f3 != f2) {
            this.g = true;
            valueAnimator.setDuration(666L);
            valueAnimator.start();
            return;
        }
        ring.a(0);
        ring.f19946k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.l = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.f19941e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.f19942f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        valueAnimator.setDuration(1332L);
        valueAnimator.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f19932e.cancel();
        this.f19931c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Ring ring = this.f19930b;
        if (ring.n) {
            ring.n = false;
        }
        ring.a(0);
        ring.f19946k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.l = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.f19941e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.f19942f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        invalidateSelf();
    }
}
