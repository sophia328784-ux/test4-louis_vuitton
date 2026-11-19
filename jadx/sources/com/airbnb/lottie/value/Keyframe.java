package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.GradientColor;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class Keyframe<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LottieComposition f22316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f22317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f22318c;
    public final Interpolator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator f22319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Interpolator f22320f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f22321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f22322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f22323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f22324k;
    public int l;
    public float m;
    public float n;
    public PointF o;
    public PointF p;

    public Keyframe(T t) {
        this.f22322i = -3987645.8f;
        this.f22323j = -3987645.8f;
        this.f22324k = 784923401;
        this.l = 784923401;
        this.m = Float.MIN_VALUE;
        this.n = Float.MIN_VALUE;
        this.o = null;
        this.p = null;
        this.f22316a = null;
        this.f22317b = t;
        this.f22318c = t;
        this.d = null;
        this.f22319e = null;
        this.f22320f = null;
        this.g = Float.MIN_VALUE;
        this.f22321h = Float.valueOf(Float.MAX_VALUE);
    }

    public final float a() {
        LottieComposition lottieComposition = this.f22316a;
        if (lottieComposition == null) {
            return 1.0f;
        }
        if (this.n == Float.MIN_VALUE) {
            if (this.f22321h == null) {
                this.n = 1.0f;
            } else {
                this.n = (float) (((double) b()) + (((double) (this.f22321h.floatValue() - this.g)) / ((double) (lottieComposition.m - lottieComposition.l))));
            }
        }
        return this.n;
    }

    public final float b() {
        LottieComposition lottieComposition = this.f22316a;
        if (lottieComposition == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (this.m == Float.MIN_VALUE) {
            float f2 = lottieComposition.l;
            this.m = (this.g - f2) / (lottieComposition.m - f2);
        }
        return this.m;
    }

    public final boolean c() {
        return this.d == null && this.f22319e == null && this.f22320f == null;
    }

    public final String toString() {
        return "Keyframe{startValue=" + this.f22317b + ", endValue=" + this.f22318c + ", startFrame=" + this.g + ", endFrame=" + this.f22321h + ", interpolator=" + this.d + '}';
    }

    public Keyframe(LottieComposition lottieComposition, T t, T t2, Interpolator interpolator, Interpolator interpolator2, float f2, Float f3) {
        this.f22322i = -3987645.8f;
        this.f22323j = -3987645.8f;
        this.f22324k = 784923401;
        this.l = 784923401;
        this.m = Float.MIN_VALUE;
        this.n = Float.MIN_VALUE;
        this.o = null;
        this.p = null;
        this.f22316a = lottieComposition;
        this.f22317b = t;
        this.f22318c = t2;
        this.d = null;
        this.f22319e = interpolator;
        this.f22320f = interpolator2;
        this.g = f2;
        this.f22321h = f3;
    }

    public Keyframe(LottieComposition lottieComposition, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f2, Float f3) {
        this.f22322i = -3987645.8f;
        this.f22323j = -3987645.8f;
        this.f22324k = 784923401;
        this.l = 784923401;
        this.m = Float.MIN_VALUE;
        this.n = Float.MIN_VALUE;
        this.o = null;
        this.p = null;
        this.f22316a = lottieComposition;
        this.f22317b = obj;
        this.f22318c = obj2;
        this.d = interpolator;
        this.f22319e = interpolator2;
        this.f22320f = interpolator3;
        this.g = f2;
        this.f22321h = f3;
    }

    public Keyframe(LottieComposition lottieComposition, T t, T t2, Interpolator interpolator, float f2, Float f3) {
        this.f22322i = -3987645.8f;
        this.f22323j = -3987645.8f;
        this.f22324k = 784923401;
        this.l = 784923401;
        this.m = Float.MIN_VALUE;
        this.n = Float.MIN_VALUE;
        this.o = null;
        this.p = null;
        this.f22316a = lottieComposition;
        this.f22317b = t;
        this.f22318c = t2;
        this.d = interpolator;
        this.f22319e = null;
        this.f22320f = null;
        this.g = f2;
        this.f22321h = f3;
    }

    public Keyframe(GradientColor gradientColor, GradientColor gradientColor2) {
        this.f22322i = -3987645.8f;
        this.f22323j = -3987645.8f;
        this.f22324k = 784923401;
        this.l = 784923401;
        this.m = Float.MIN_VALUE;
        this.n = Float.MIN_VALUE;
        this.o = null;
        this.p = null;
        this.f22316a = null;
        this.f22317b = gradientColor;
        this.f22318c = gradientColor2;
        this.d = null;
        this.f22319e = null;
        this.f22320f = null;
        this.g = Float.MIN_VALUE;
        this.f22321h = Float.valueOf(Float.MAX_VALUE);
    }
}
