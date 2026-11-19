package com.airbnb.lottie.animation.keyframe;

import android.graphics.Color;
import android.graphics.Matrix;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;

/* JADX INFO: loaded from: classes.dex */
public class DropShadowKeyframeAnimation implements BaseKeyframeAnimation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BaseLayer f21894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BaseKeyframeAnimation.AnimationListener f21895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorKeyframeAnimation f21896c;
    public final FloatKeyframeAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FloatKeyframeAnimation f21897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FloatKeyframeAnimation f21898f;
    public final FloatKeyframeAnimation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Matrix f21899h;

    public DropShadowKeyframeAnimation(BaseKeyframeAnimation.AnimationListener animationListener, BaseLayer baseLayer, DropShadowEffect dropShadowEffect) {
        this.f21895b = animationListener;
        this.f21894a = baseLayer;
        BaseKeyframeAnimation baseKeyframeAnimationA = dropShadowEffect.f22221a.a();
        this.f21896c = (ColorKeyframeAnimation) baseKeyframeAnimationA;
        baseKeyframeAnimationA.a(this);
        baseLayer.h(baseKeyframeAnimationA);
        FloatKeyframeAnimation floatKeyframeAnimationA = dropShadowEffect.f22222b.a();
        this.d = floatKeyframeAnimationA;
        floatKeyframeAnimationA.a(this);
        baseLayer.h(floatKeyframeAnimationA);
        FloatKeyframeAnimation floatKeyframeAnimationA2 = dropShadowEffect.f22223c.a();
        this.f21897e = floatKeyframeAnimationA2;
        floatKeyframeAnimationA2.a(this);
        baseLayer.h(floatKeyframeAnimationA2);
        FloatKeyframeAnimation floatKeyframeAnimationA3 = dropShadowEffect.d.a();
        this.f21898f = floatKeyframeAnimationA3;
        floatKeyframeAnimationA3.a(this);
        baseLayer.h(floatKeyframeAnimationA3);
        FloatKeyframeAnimation floatKeyframeAnimationA4 = dropShadowEffect.f22224e.a();
        this.g = floatKeyframeAnimationA4;
        floatKeyframeAnimationA4.a(this);
        baseLayer.h(floatKeyframeAnimationA4);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21895b.a();
    }

    public final DropShadow b(Matrix matrix, int i2) {
        float fM = this.f21897e.m() * 0.017453292f;
        float fFloatValue = ((Float) this.f21898f.f()).floatValue();
        double d = fM;
        float fSin = ((float) Math.sin(d)) * fFloatValue;
        float fCos = ((float) Math.cos(d + 3.141592653589793d)) * fFloatValue;
        float fFloatValue2 = ((Float) this.g.f()).floatValue();
        int iIntValue = ((Integer) this.f21896c.f()).intValue();
        DropShadow dropShadow = new DropShadow(fFloatValue2 * 0.33f, fSin, fCos, Color.argb(Math.round((((Float) this.d.f()).floatValue() * i2) / 255.0f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        dropShadow.c(matrix);
        if (this.f21899h == null) {
            this.f21899h = new Matrix();
        }
        this.f21894a.w.e().invert(this.f21899h);
        dropShadow.c(this.f21899h);
        return dropShadow;
    }

    public final void c(final LottieValueCallback lottieValueCallback) {
        FloatKeyframeAnimation floatKeyframeAnimation = this.d;
        if (lottieValueCallback == null) {
            floatKeyframeAnimation.k(null);
        } else {
            floatKeyframeAnimation.k(new LottieValueCallback<Float>() { // from class: com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation.1
                @Override // com.airbnb.lottie.value.LottieValueCallback
                public final Object a(LottieFrameInfo lottieFrameInfo) {
                    Float f2 = (Float) lottieValueCallback.a(lottieFrameInfo);
                    if (f2 == null) {
                        return null;
                    }
                    return Float.valueOf(f2.floatValue() * 2.55f);
                }
            });
        }
    }
}
