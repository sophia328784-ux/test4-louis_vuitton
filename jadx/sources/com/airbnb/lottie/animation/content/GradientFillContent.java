package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GradientFillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseLayer f21831c;
    public final LongSparseArray d = new LongSparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LongSparseArray f21832e = new LongSparseArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Path f21833f;
    public final LPaint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RectF f21834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f21835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GradientType f21836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GradientColorKeyframeAnimation f21837k;
    public final IntegerKeyframeAnimation l;
    public final PointKeyframeAnimation m;
    public final PointKeyframeAnimation n;
    public ValueCallbackKeyframeAnimation o;
    public ValueCallbackKeyframeAnimation p;
    public final LottieDrawable q;
    public final int r;
    public BaseKeyframeAnimation s;
    public float t;

    public GradientFillContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer, GradientFill gradientFill) {
        Path path = new Path();
        this.f21833f = path;
        this.g = new LPaint(1);
        this.f21834h = new RectF();
        this.f21835i = new ArrayList();
        this.t = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f21831c = baseLayer;
        this.f21829a = gradientFill.g;
        this.f21830b = gradientFill.f22122h;
        this.q = lottieDrawable;
        this.f21836j = gradientFill.f22117a;
        path.setFillType(gradientFill.f22118b);
        this.r = (int) (lottieComposition.b() / 32.0f);
        BaseKeyframeAnimation baseKeyframeAnimationA = gradientFill.f22119c.a();
        this.f21837k = (GradientColorKeyframeAnimation) baseKeyframeAnimationA;
        baseKeyframeAnimationA.a(this);
        baseLayer.h(baseKeyframeAnimationA);
        BaseKeyframeAnimation baseKeyframeAnimationA2 = gradientFill.d.a();
        this.l = (IntegerKeyframeAnimation) baseKeyframeAnimationA2;
        baseKeyframeAnimationA2.a(this);
        baseLayer.h(baseKeyframeAnimationA2);
        BaseKeyframeAnimation baseKeyframeAnimationA3 = gradientFill.f22120e.a();
        this.m = (PointKeyframeAnimation) baseKeyframeAnimationA3;
        baseKeyframeAnimationA3.a(this);
        baseLayer.h(baseKeyframeAnimationA3);
        BaseKeyframeAnimation baseKeyframeAnimationA4 = gradientFill.f22121f.a();
        this.n = (PointKeyframeAnimation) baseKeyframeAnimationA4;
        baseKeyframeAnimationA4.a(this);
        baseLayer.h(baseKeyframeAnimationA4);
        if (baseLayer.l() != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA = baseLayer.l().f22110a.a();
            this.s = floatKeyframeAnimationA;
            floatKeyframeAnimationA.a(this);
            baseLayer.h(this.s);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.q.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            Content content = (Content) list2.get(i2);
            if (content instanceof PathContent) {
                this.f21835i.add((PathContent) content);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        float[] fArr;
        int[] iArr;
        Shader linearGradient;
        int[] iArr2;
        if (this.f21830b) {
            return;
        }
        AsyncUpdates asyncUpdates = L.f21740a;
        Path path = this.f21833f;
        path.reset();
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f21835i;
            if (i3 >= arrayList.size()) {
                break;
            }
            path.addPath(((PathContent) arrayList.get(i3)).getPath(), matrix);
            i3++;
        }
        path.computeBounds(this.f21834h, false);
        GradientType gradientType = this.f21836j;
        GradientType gradientType2 = GradientType.LINEAR;
        GradientColorKeyframeAnimation gradientColorKeyframeAnimation = this.f21837k;
        PointKeyframeAnimation pointKeyframeAnimation = this.n;
        PointKeyframeAnimation pointKeyframeAnimation2 = this.m;
        if (gradientType == gradientType2) {
            long j2 = j();
            LongSparseArray longSparseArray = this.d;
            linearGradient = (LinearGradient) longSparseArray.b(j2);
            if (linearGradient == null) {
                PointF pointF = (PointF) pointKeyframeAnimation2.f();
                PointF pointF2 = (PointF) pointKeyframeAnimation.f();
                GradientColor gradientColor = (GradientColor) gradientColorKeyframeAnimation.f();
                int[] iArrH = h(gradientColor.f22116b);
                float[] fArr2 = gradientColor.f22115a;
                if (iArrH.length < 2) {
                    int[] iArr3 = {iArrH[0], iArrH[0]};
                    fArr2 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
                    iArr2 = iArr3;
                } else {
                    iArr2 = iArrH;
                }
                linearGradient = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, iArr2, fArr2, Shader.TileMode.CLAMP);
                longSparseArray.e(j2, linearGradient);
            }
        } else {
            long j3 = j();
            LongSparseArray longSparseArray2 = this.f21832e;
            RadialGradient radialGradient = (RadialGradient) longSparseArray2.b(j3);
            if (radialGradient != null) {
                linearGradient = radialGradient;
            } else {
                PointF pointF3 = (PointF) pointKeyframeAnimation2.f();
                PointF pointF4 = (PointF) pointKeyframeAnimation.f();
                GradientColor gradientColor2 = (GradientColor) gradientColorKeyframeAnimation.f();
                int[] iArrH2 = h(gradientColor2.f22116b);
                float[] fArr3 = gradientColor2.f22115a;
                if (iArrH2.length < 2) {
                    iArr = new int[]{iArrH2[0], iArrH2[0]};
                    fArr = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
                } else {
                    fArr = fArr3;
                    iArr = iArrH2;
                }
                float f2 = pointF3.x;
                float f3 = pointF3.y;
                float fHypot = (float) Math.hypot(pointF4.x - f2, pointF4.y - f3);
                if (fHypot <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fHypot = 0.001f;
                }
                RadialGradient radialGradient2 = new RadialGradient(f2, f3, fHypot, iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.e(j3, radialGradient2);
                linearGradient = radialGradient2;
            }
        }
        linearGradient.setLocalMatrix(matrix);
        LPaint lPaint = this.g;
        lPaint.setShader(linearGradient);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.o;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.f());
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.s;
        if (baseKeyframeAnimation != null) {
            float fFloatValue = ((Float) baseKeyframeAnimation.f()).floatValue();
            if (fFloatValue == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                lPaint.setMaskFilter(null);
            } else if (fFloatValue != this.t) {
                lPaint.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.t = fFloatValue;
        }
        float fIntValue = ((Integer) this.l.f()).intValue() / 100.0f;
        lPaint.setAlpha(MiscUtils.c((int) (i2 * fIntValue)));
        if (dropShadow != null) {
            dropShadow.a((int) (fIntValue * 255.0f), lPaint);
        }
        canvas.drawPath(path, lPaint);
        AsyncUpdates asyncUpdates2 = L.f21740a;
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        MiscUtils.g(keyPath, i2, arrayList, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f21833f;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21835i;
            if (i2 >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((PathContent) arrayList.get(i2)).getPath(), matrix);
                i2++;
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        PointF pointF = LottieProperty.f21772a;
        if (obj == 4) {
            this.l.k(lottieValueCallback);
            return;
        }
        ColorFilter colorFilter = LottieProperty.I;
        BaseLayer baseLayer = this.f21831c;
        if (obj == colorFilter) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.o;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.o = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.o = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            baseLayer.h(this.o);
            return;
        }
        if (obj != LottieProperty.J) {
            if (obj == LottieProperty.f21775e) {
                BaseKeyframeAnimation baseKeyframeAnimation = this.s;
                if (baseKeyframeAnimation != null) {
                    baseKeyframeAnimation.k(lottieValueCallback);
                    return;
                }
                ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                this.s = valueCallbackKeyframeAnimation3;
                valueCallbackKeyframeAnimation3.a(this);
                baseLayer.h(this.s);
                return;
            }
            return;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = this.p;
        if (valueCallbackKeyframeAnimation4 != null) {
            baseLayer.o(valueCallbackKeyframeAnimation4);
        }
        if (lottieValueCallback == null) {
            this.p = null;
            return;
        }
        this.d.a();
        this.f21832e.a();
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
        this.p = valueCallbackKeyframeAnimation5;
        valueCallbackKeyframeAnimation5.a(this);
        baseLayer.h(this.p);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.f21829a;
    }

    public final int[] h(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.p;
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
        float f2 = this.m.d;
        float f3 = this.r;
        int iRound = Math.round(f2 * f3);
        int iRound2 = Math.round(this.n.d * f3);
        int iRound3 = Math.round(this.f21837k.d * f3);
        int i2 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }
}
