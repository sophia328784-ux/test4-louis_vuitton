package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.value.LottieValueCallback;

/* JADX INFO: loaded from: classes.dex */
public class GradientStrokeContent extends BaseStrokeContent {
    public ValueCallbackKeyframeAnimation A;
    public final String q;
    public final boolean r;
    public final LongSparseArray s;
    public final LongSparseArray t;
    public final RectF u;
    public final GradientType v;
    public final int w;
    public final GradientColorKeyframeAnimation x;
    public final PointKeyframeAnimation y;
    public final PointKeyframeAnimation z;

    public GradientStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, GradientStroke gradientStroke) {
        super(lottieDrawable, baseLayer, gradientStroke.f22128h.a(), gradientStroke.f22129i.a(), gradientStroke.f22130j, gradientStroke.d, gradientStroke.g, gradientStroke.f22131k, gradientStroke.l);
        this.s = new LongSparseArray();
        this.t = new LongSparseArray();
        this.u = new RectF();
        this.q = gradientStroke.f22123a;
        this.v = gradientStroke.f22124b;
        this.r = gradientStroke.m;
        this.w = (int) (lottieDrawable.f21758b.b() / 32.0f);
        BaseKeyframeAnimation baseKeyframeAnimationA = gradientStroke.f22125c.a();
        this.x = (GradientColorKeyframeAnimation) baseKeyframeAnimationA;
        baseKeyframeAnimationA.a(this);
        baseLayer.h(baseKeyframeAnimationA);
        BaseKeyframeAnimation baseKeyframeAnimationA2 = gradientStroke.f22126e.a();
        this.y = (PointKeyframeAnimation) baseKeyframeAnimationA2;
        baseKeyframeAnimationA2.a(this);
        baseLayer.h(baseKeyframeAnimationA2);
        BaseKeyframeAnimation baseKeyframeAnimationA3 = gradientStroke.f22127f.a();
        this.z = (PointKeyframeAnimation) baseKeyframeAnimationA3;
        baseKeyframeAnimationA3.a(this);
        baseLayer.h(baseKeyframeAnimationA3);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        Shader shader;
        Shader radialGradient;
        if (this.r) {
            return;
        }
        f(this.u, matrix, false);
        GradientType gradientType = this.v;
        GradientType gradientType2 = GradientType.LINEAR;
        GradientColorKeyframeAnimation gradientColorKeyframeAnimation = this.x;
        PointKeyframeAnimation pointKeyframeAnimation = this.z;
        PointKeyframeAnimation pointKeyframeAnimation2 = this.y;
        if (gradientType == gradientType2) {
            long j2 = j();
            LongSparseArray longSparseArray = this.s;
            shader = (LinearGradient) longSparseArray.b(j2);
            if (shader == null) {
                PointF pointF = (PointF) pointKeyframeAnimation2.f();
                PointF pointF2 = (PointF) pointKeyframeAnimation.f();
                GradientColor gradientColor = (GradientColor) gradientColorKeyframeAnimation.f();
                radialGradient = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, h(gradientColor.f22116b), gradientColor.f22115a, Shader.TileMode.CLAMP);
                longSparseArray.e(j2, radialGradient);
                shader = radialGradient;
            }
        } else {
            long j3 = j();
            LongSparseArray longSparseArray2 = this.t;
            shader = (RadialGradient) longSparseArray2.b(j3);
            if (shader == null) {
                PointF pointF3 = (PointF) pointKeyframeAnimation2.f();
                PointF pointF4 = (PointF) pointKeyframeAnimation.f();
                GradientColor gradientColor2 = (GradientColor) gradientColorKeyframeAnimation.f();
                int[] iArrH = h(gradientColor2.f22116b);
                float[] fArr = gradientColor2.f22115a;
                float f2 = pointF3.x;
                float f3 = pointF3.y;
                radialGradient = new RadialGradient(f2, f3, (float) Math.hypot(pointF4.x - f2, pointF4.y - f3), iArrH, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.e(j3, radialGradient);
                shader = radialGradient;
            }
        }
        this.f21799i.setShader(shader);
        super.d(canvas, matrix, i2, dropShadow);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        if (obj == LottieProperty.J) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.A;
            BaseLayer baseLayer = this.f21797f;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.A = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.A = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            baseLayer.h(this.A);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.q;
    }

    public final int[] h(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.A;
        if (valueCallbackKeyframeAnimation != null) {
            Integer[] numArr = (Integer[]) valueCallbackKeyframeAnimation.f();
            int i2 = 0;
            if (iArr.length == numArr.length) {
                while (i2 < iArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i2 < numArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr;
    }

    public final int j() {
        float f2 = this.y.d;
        float f3 = this.w;
        int iRound = Math.round(f2 * f3);
        int iRound2 = Math.round(this.z.d * f3);
        int iRound3 = Math.round(this.x.d * f3);
        int i2 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }
}
