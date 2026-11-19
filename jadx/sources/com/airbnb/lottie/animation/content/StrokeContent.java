package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.value.LottieValueCallback;

/* JADX INFO: loaded from: classes.dex */
public class StrokeContent extends BaseStrokeContent {
    public final BaseLayer q;
    public final String r;
    public final boolean s;
    public final ColorKeyframeAnimation t;
    public ValueCallbackKeyframeAnimation u;

    public StrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeStroke shapeStroke) {
        super(lottieDrawable, baseLayer, shapeStroke.g.a(), shapeStroke.f22175h.a(), shapeStroke.f22176i, shapeStroke.f22173e, shapeStroke.f22174f, shapeStroke.f22172c, shapeStroke.f22171b);
        this.q = baseLayer;
        this.r = shapeStroke.f22170a;
        this.s = shapeStroke.f22177j;
        BaseKeyframeAnimation baseKeyframeAnimationA = shapeStroke.d.a();
        this.t = (ColorKeyframeAnimation) baseKeyframeAnimationA;
        baseKeyframeAnimationA.a(this);
        baseLayer.h(baseKeyframeAnimationA);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        if (this.s) {
            return;
        }
        ColorKeyframeAnimation colorKeyframeAnimation = this.t;
        int iM = colorKeyframeAnimation.m(colorKeyframeAnimation.b(), colorKeyframeAnimation.d());
        LPaint lPaint = this.f21799i;
        lPaint.setColor(iM);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.u;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.f());
        }
        super.d(canvas, matrix, i2, dropShadow);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        PointF pointF = LottieProperty.f21772a;
        ColorKeyframeAnimation colorKeyframeAnimation = this.t;
        if (obj == 2) {
            colorKeyframeAnimation.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.I) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.u;
            BaseLayer baseLayer = this.q;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.u = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.u = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            baseLayer.h(colorKeyframeAnimation);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.r;
    }
}
