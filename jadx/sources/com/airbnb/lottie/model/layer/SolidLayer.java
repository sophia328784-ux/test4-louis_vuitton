package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.value.LottieValueCallback;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class SolidLayer extends BaseLayer {
    public final RectF C;
    public final LPaint D;
    public final float[] E;
    public final Path F;
    public final Layer G;
    public ValueCallbackKeyframeAnimation H;
    public ValueCallbackKeyframeAnimation I;

    public SolidLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.C = new RectF();
        LPaint lPaint = new LPaint();
        this.D = lPaint;
        this.E = new float[8];
        this.F = new Path();
        this.G = layer;
        lPaint.setAlpha(0);
        lPaint.setStyle(Paint.Style.FILL);
        lPaint.setColor(layer.l);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        super.f(rectF, matrix, z);
        Layer layer = this.G;
        float f2 = layer.f22203j;
        float f3 = layer.f22204k;
        RectF rectF2 = this.C;
        rectF2.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, f3);
        this.n.mapRect(rectF2);
        rectF.set(rectF2);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        if (obj == LottieProperty.I) {
            if (lottieValueCallback == null) {
                this.H = null;
                return;
            } else {
                this.H = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                return;
            }
        }
        if (obj == 1) {
            if (lottieValueCallback != null) {
                this.I = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                return;
            }
            this.I = null;
            this.D.setColor(this.G.l);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void k(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        Layer layer = this.G;
        int iAlpha = Color.alpha(layer.l);
        if (iAlpha == 0) {
            return;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.I;
        Integer num = valueCallbackKeyframeAnimation == null ? null : (Integer) valueCallbackKeyframeAnimation.f();
        LPaint lPaint = this.D;
        if (num != null) {
            lPaint.setColor(num.intValue());
        } else {
            lPaint.setColor(layer.l);
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.w.p;
        int iIntValue = (int) ((((iAlpha / 255.0f) * (baseKeyframeAnimation == null ? 100 : ((Integer) baseKeyframeAnimation.f()).intValue())) / 100.0f) * (i2 / 255.0f) * 255.0f);
        lPaint.setAlpha(iIntValue);
        if (dropShadow == null || Color.alpha(dropShadow.d) <= 0) {
            lPaint.clearShadowLayer();
        } else {
            lPaint.setShadowLayer(Math.max(dropShadow.f22282a, Float.MIN_VALUE), dropShadow.f22283b, dropShadow.f22284c, dropShadow.d);
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = this.H;
        if (valueCallbackKeyframeAnimation2 != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation2.f());
        }
        if (iIntValue > 0) {
            float[] fArr = this.E;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f2 = layer.f22203j;
            fArr[2] = f2;
            fArr[3] = 0.0f;
            fArr[4] = f2;
            float f3 = layer.f22204k;
            fArr[5] = f3;
            fArr[6] = 0.0f;
            fArr[7] = f3;
            matrix.mapPoints(fArr);
            Path path = this.F;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, lPaint);
        }
    }
}
