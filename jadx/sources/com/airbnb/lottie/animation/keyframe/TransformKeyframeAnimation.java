package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import defpackage.u41;
import java.util.Collections;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class TransformKeyframeAnimation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix f21919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f21920c;
    public final Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f21921e;
    public BaseKeyframeAnimation l;
    public BaseKeyframeAnimation m;
    public BaseKeyframeAnimation n;
    public BaseKeyframeAnimation o;
    public BaseKeyframeAnimation p;
    public FloatKeyframeAnimation q;
    public FloatKeyframeAnimation r;
    public FloatKeyframeAnimation s;
    public FloatKeyframeAnimation t;
    public FloatKeyframeAnimation u;
    public BaseKeyframeAnimation v;
    public BaseKeyframeAnimation w;
    public final boolean x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f21918a = new Matrix();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f21922f = Float.NaN;
    public float g = Float.NaN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f21923h = Float.NaN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f21924i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f21925j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f21926k = true;

    public TransformKeyframeAnimation(AnimatableTransform animatableTransform) {
        AnimatablePathValue animatablePathValue = animatableTransform.f22100a;
        this.l = animatablePathValue == null ? null : animatablePathValue.a();
        AnimatableValue animatableValue = animatableTransform.f22101b;
        this.m = animatableValue == null ? null : animatableValue.a();
        AnimatableScaleValue animatableScaleValue = animatableTransform.f22102c;
        this.n = animatableScaleValue == null ? null : animatableScaleValue.a();
        AnimatableFloatValue animatableFloatValue = animatableTransform.d;
        this.o = animatableFloatValue == null ? null : animatableFloatValue.a();
        AnimatableFloatValue animatableFloatValue2 = animatableTransform.f22104f;
        this.q = animatableFloatValue2 == null ? null : animatableFloatValue2.a();
        this.x = animatableTransform.m;
        AnimatableFloatValue animatableFloatValue3 = animatableTransform.f22105h;
        this.s = animatableFloatValue3 == null ? null : animatableFloatValue3.a();
        AnimatableFloatValue animatableFloatValue4 = animatableTransform.f22106i;
        this.t = animatableFloatValue4 == null ? null : animatableFloatValue4.a();
        AnimatableFloatValue animatableFloatValue5 = animatableTransform.f22107j;
        this.u = animatableFloatValue5 == null ? null : animatableFloatValue5.a();
        if (this.q != null) {
            this.f21919b = new Matrix();
            this.f21920c = new Matrix();
            this.d = new Matrix();
            this.f21921e = new float[9];
        } else {
            this.f21919b = null;
            this.f21920c = null;
            this.d = null;
            this.f21921e = null;
        }
        AnimatableFloatValue animatableFloatValue6 = animatableTransform.g;
        this.r = animatableFloatValue6 == null ? null : animatableFloatValue6.a();
        AnimatableIntegerValue animatableIntegerValue = animatableTransform.f22103e;
        if (animatableIntegerValue != null) {
            this.p = animatableIntegerValue.a();
        }
        AnimatableFloatValue animatableFloatValue7 = animatableTransform.f22108k;
        if (animatableFloatValue7 != null) {
            this.v = animatableFloatValue7.a();
        } else {
            this.v = null;
        }
        AnimatableFloatValue animatableFloatValue8 = animatableTransform.l;
        if (animatableFloatValue8 != null) {
            this.w = animatableFloatValue8.a();
        } else {
            this.w = null;
        }
    }

    public final void a(BaseLayer baseLayer) {
        baseLayer.h(this.p);
        baseLayer.h(this.v);
        baseLayer.h(this.w);
        baseLayer.h(this.l);
        baseLayer.h(this.m);
        baseLayer.h(this.n);
        baseLayer.h(this.o);
        baseLayer.h(this.q);
        baseLayer.h(this.r);
        baseLayer.h(this.s);
        baseLayer.h(this.t);
        baseLayer.h(this.u);
    }

    public final void b(BaseKeyframeAnimation.AnimationListener animationListener) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.p;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.v;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.w;
        if (baseKeyframeAnimation3 != null) {
            baseKeyframeAnimation3.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation4 = this.l;
        if (baseKeyframeAnimation4 != null) {
            baseKeyframeAnimation4.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation5 = this.m;
        if (baseKeyframeAnimation5 != null) {
            baseKeyframeAnimation5.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation6 = this.n;
        if (baseKeyframeAnimation6 != null) {
            baseKeyframeAnimation6.a(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation7 = this.o;
        if (baseKeyframeAnimation7 != null) {
            baseKeyframeAnimation7.a(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.q;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.a(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.r;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.a(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation3 = this.s;
        if (floatKeyframeAnimation3 != null) {
            floatKeyframeAnimation3.a(animationListener);
            this.s.a(new u41(this, 0));
        }
        FloatKeyframeAnimation floatKeyframeAnimation4 = this.t;
        if (floatKeyframeAnimation4 != null) {
            floatKeyframeAnimation4.a(animationListener);
            this.t.a(new u41(this, 1));
        }
        FloatKeyframeAnimation floatKeyframeAnimation5 = this.u;
        if (floatKeyframeAnimation5 != null) {
            floatKeyframeAnimation5.a(animationListener);
            this.u.a(new u41(this, 2));
        }
    }

    public final boolean c(LottieValueCallback lottieValueCallback, Object obj) {
        Float fValueOf = Float.valueOf(100.0f);
        Float fValueOf2 = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (obj == LottieProperty.f21772a) {
            BaseKeyframeAnimation baseKeyframeAnimation = this.l;
            if (baseKeyframeAnimation == null) {
                this.l = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.f21773b) {
            BaseKeyframeAnimation baseKeyframeAnimation2 = this.m;
            if (baseKeyframeAnimation2 == null) {
                this.m = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation2.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.f21774c) {
            BaseKeyframeAnimation baseKeyframeAnimation3 = this.m;
            if (baseKeyframeAnimation3 instanceof SplitDimensionPathKeyframeAnimation) {
                SplitDimensionPathKeyframeAnimation splitDimensionPathKeyframeAnimation = (SplitDimensionPathKeyframeAnimation) baseKeyframeAnimation3;
                LottieValueCallback lottieValueCallback2 = splitDimensionPathKeyframeAnimation.m;
                splitDimensionPathKeyframeAnimation.m = lottieValueCallback;
                return true;
            }
        }
        if (obj == LottieProperty.d) {
            BaseKeyframeAnimation baseKeyframeAnimation4 = this.m;
            if (baseKeyframeAnimation4 instanceof SplitDimensionPathKeyframeAnimation) {
                SplitDimensionPathKeyframeAnimation splitDimensionPathKeyframeAnimation2 = (SplitDimensionPathKeyframeAnimation) baseKeyframeAnimation4;
                LottieValueCallback lottieValueCallback3 = splitDimensionPathKeyframeAnimation2.n;
                splitDimensionPathKeyframeAnimation2.n = lottieValueCallback;
                return true;
            }
        }
        if (obj == LottieProperty.f21779j) {
            BaseKeyframeAnimation baseKeyframeAnimation5 = this.n;
            if (baseKeyframeAnimation5 == null) {
                this.n = new ValueCallbackKeyframeAnimation(lottieValueCallback, new ScaleXY());
                return true;
            }
            baseKeyframeAnimation5.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.f21780k) {
            BaseKeyframeAnimation baseKeyframeAnimation6 = this.o;
            if (baseKeyframeAnimation6 == null) {
                this.o = new ValueCallbackKeyframeAnimation(lottieValueCallback, fValueOf2);
                return true;
            }
            baseKeyframeAnimation6.k(lottieValueCallback);
            return true;
        }
        if (obj == 3) {
            BaseKeyframeAnimation baseKeyframeAnimation7 = this.p;
            if (baseKeyframeAnimation7 == null) {
                this.p = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            }
            baseKeyframeAnimation7.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.A) {
            BaseKeyframeAnimation baseKeyframeAnimation8 = this.v;
            if (baseKeyframeAnimation8 == null) {
                this.v = new ValueCallbackKeyframeAnimation(lottieValueCallback, fValueOf);
                return true;
            }
            baseKeyframeAnimation8.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.B) {
            BaseKeyframeAnimation baseKeyframeAnimation9 = this.w;
            if (baseKeyframeAnimation9 == null) {
                this.w = new ValueCallbackKeyframeAnimation(lottieValueCallback, fValueOf);
                return true;
            }
            baseKeyframeAnimation9.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.o) {
            if (this.q == null) {
                this.q = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(fValueOf2)));
            }
            this.q.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.p) {
            if (this.r == null) {
                this.r = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(fValueOf2)));
            }
            this.r.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.l) {
            if (this.s == null) {
                this.s = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(fValueOf2)));
            }
            this.s.k(lottieValueCallback);
            return true;
        }
        if (obj == LottieProperty.m) {
            if (this.t == null) {
                this.t = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(fValueOf2)));
            }
            this.t.k(lottieValueCallback);
            return true;
        }
        if (obj != LottieProperty.n) {
            return false;
        }
        if (this.u == null) {
            this.u = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(fValueOf2)));
        }
        this.u.k(lottieValueCallback);
        return true;
    }

    public final void d() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.f21921e[i2] = 0.0f;
        }
    }

    public final Matrix e() {
        FloatKeyframeAnimation floatKeyframeAnimation;
        FloatKeyframeAnimation floatKeyframeAnimation2;
        PointF pointF;
        ScaleXY scaleXY;
        PointF pointF2;
        Matrix matrix = this.f21918a;
        matrix.reset();
        FloatKeyframeAnimation floatKeyframeAnimation3 = this.s;
        if ((floatKeyframeAnimation3 == null || floatKeyframeAnimation3.m() == Call.Parameters.DEFAULT_CAMERA_ZOOM) && (((floatKeyframeAnimation = this.t) == null || floatKeyframeAnimation.m() == Call.Parameters.DEFAULT_CAMERA_ZOOM) && ((floatKeyframeAnimation2 = this.u) == null || floatKeyframeAnimation2.m() == Call.Parameters.DEFAULT_CAMERA_ZOOM))) {
            BaseKeyframeAnimation baseKeyframeAnimation = this.m;
            if (baseKeyframeAnimation != null && (pointF2 = (PointF) baseKeyframeAnimation.f()) != null) {
                float f2 = pointF2.x;
                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointF2.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    matrix.preTranslate(f2, pointF2.y);
                }
            }
            if (!this.x) {
                BaseKeyframeAnimation baseKeyframeAnimation2 = this.o;
                if (baseKeyframeAnimation2 != null) {
                    float fFloatValue = baseKeyframeAnimation2 instanceof ValueCallbackKeyframeAnimation ? ((Float) baseKeyframeAnimation2.f()).floatValue() : ((FloatKeyframeAnimation) baseKeyframeAnimation2).m();
                    if (fFloatValue != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        matrix.preRotate(fFloatValue);
                    }
                }
            } else if (baseKeyframeAnimation != null) {
                float f3 = baseKeyframeAnimation.d;
                PointF pointF3 = (PointF) baseKeyframeAnimation.f();
                float f4 = pointF3.x;
                float f5 = pointF3.y;
                baseKeyframeAnimation.j(1.0E-4f + f3);
                PointF pointF4 = (PointF) baseKeyframeAnimation.f();
                baseKeyframeAnimation.j(f3);
                matrix.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f5, pointF4.x - f4)));
            }
            FloatKeyframeAnimation floatKeyframeAnimation4 = this.q;
            if (floatKeyframeAnimation4 != null) {
                FloatKeyframeAnimation floatKeyframeAnimation5 = this.r;
                float fCos = floatKeyframeAnimation5 == null ? 0.0f : (float) Math.cos(Math.toRadians((-floatKeyframeAnimation5.m()) + 90.0f));
                FloatKeyframeAnimation floatKeyframeAnimation6 = this.r;
                float fSin = floatKeyframeAnimation6 == null ? 1.0f : (float) Math.sin(Math.toRadians((-floatKeyframeAnimation6.m()) + 90.0f));
                float fTan = (float) Math.tan(Math.toRadians(floatKeyframeAnimation4.m()));
                d();
                float[] fArr = this.f21921e;
                fArr[0] = fCos;
                fArr[1] = fSin;
                float f6 = -fSin;
                fArr[3] = f6;
                fArr[4] = fCos;
                fArr[8] = 1.0f;
                Matrix matrix2 = this.f21919b;
                matrix2.setValues(fArr);
                d();
                fArr[0] = 1.0f;
                fArr[3] = fTan;
                fArr[4] = 1.0f;
                fArr[8] = 1.0f;
                Matrix matrix3 = this.f21920c;
                matrix3.setValues(fArr);
                d();
                fArr[0] = fCos;
                fArr[1] = f6;
                fArr[3] = fSin;
                fArr[4] = fCos;
                fArr[8] = 1.0f;
                Matrix matrix4 = this.d;
                matrix4.setValues(fArr);
                matrix3.preConcat(matrix2);
                matrix4.preConcat(matrix3);
                matrix.preConcat(matrix4);
            }
            BaseKeyframeAnimation baseKeyframeAnimation3 = this.n;
            if (baseKeyframeAnimation3 != null && (scaleXY = (ScaleXY) baseKeyframeAnimation3.f()) != null) {
                float f7 = scaleXY.f22332a;
                if (f7 != 1.0f || scaleXY.f22333b != 1.0f) {
                    matrix.preScale(f7, scaleXY.f22333b);
                }
            }
            BaseKeyframeAnimation baseKeyframeAnimation4 = this.l;
            if (baseKeyframeAnimation4 != null && (pointF = (PointF) baseKeyframeAnimation4.f()) != null) {
                float f8 = pointF.x;
                if (f8 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointF.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    matrix.preTranslate(-f8, -pointF.y);
                }
            }
        } else {
            FloatKeyframeAnimation floatKeyframeAnimation7 = this.s;
            float fM = floatKeyframeAnimation7 != null ? floatKeyframeAnimation7.m() : 0.0f;
            FloatKeyframeAnimation floatKeyframeAnimation8 = this.t;
            float fM2 = floatKeyframeAnimation8 != null ? floatKeyframeAnimation8.m() : 0.0f;
            FloatKeyframeAnimation floatKeyframeAnimation9 = this.u;
            float fM3 = floatKeyframeAnimation9 != null ? floatKeyframeAnimation9.m() : 0.0f;
            if (this.f21926k || fM != this.f21922f || fM2 != this.g || fM3 != this.f21923h) {
                this.f21922f = fM;
                this.g = fM2;
                this.f21923h = fM3;
                if (fM != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.f21924i = (float) Math.cos(Math.toRadians(fM));
                } else {
                    this.f21924i = 1.0f;
                }
                if (fM2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.f21925j = (float) Math.cos(Math.toRadians(fM2));
                } else {
                    this.f21925j = 1.0f;
                }
                this.f21926k = false;
            }
            BaseKeyframeAnimation baseKeyframeAnimation5 = this.l;
            PointF pointF5 = baseKeyframeAnimation5 == null ? null : (PointF) baseKeyframeAnimation5.f();
            BaseKeyframeAnimation baseKeyframeAnimation6 = this.m;
            PointF pointF6 = baseKeyframeAnimation6 == null ? null : (PointF) baseKeyframeAnimation6.f();
            BaseKeyframeAnimation baseKeyframeAnimation7 = this.n;
            ScaleXY scaleXY2 = baseKeyframeAnimation7 != null ? (ScaleXY) baseKeyframeAnimation7.f() : null;
            float f9 = scaleXY2 != null ? scaleXY2.f22332a : 1.0f;
            float f10 = scaleXY2 != null ? scaleXY2.f22333b : 1.0f;
            float f11 = this.f21924i;
            float f12 = this.f21925j;
            matrix.reset();
            if (pointF6 != null) {
                float f13 = pointF6.x;
                if (f13 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointF6.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    matrix.preTranslate(f13, pointF6.y);
                }
            }
            if (fM3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                matrix.preRotate(fM3);
            }
            if (fM2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                matrix.preScale(f12, 1.0f);
            }
            if (fM != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                matrix.preScale(1.0f, f11);
            }
            if (f9 != 1.0f || f10 != 1.0f) {
                matrix.preScale(f9, f10);
            }
            if (pointF5 != null) {
                float f14 = pointF5.x;
                if (f14 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointF5.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    matrix.preTranslate(-f14, -pointF5.y);
                    return matrix;
                }
            }
        }
        return matrix;
    }

    public final Matrix f(float f2) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.m;
        PointF pointF = baseKeyframeAnimation == null ? null : (PointF) baseKeyframeAnimation.f();
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.n;
        ScaleXY scaleXY = baseKeyframeAnimation2 == null ? null : (ScaleXY) baseKeyframeAnimation2.f();
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.l;
        PointF pointF2 = baseKeyframeAnimation3 != null ? (PointF) baseKeyframeAnimation3.f() : null;
        Matrix matrix = this.f21918a;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f2, pointF.y * f2);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.s;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fM = floatKeyframeAnimation != null ? floatKeyframeAnimation.m() * f2 : 0.0f;
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.t;
        float fM2 = floatKeyframeAnimation2 != null ? floatKeyframeAnimation2.m() * f2 : 0.0f;
        FloatKeyframeAnimation floatKeyframeAnimation3 = this.u;
        float fM3 = floatKeyframeAnimation3 != null ? floatKeyframeAnimation3.m() * f2 : 0.0f;
        if (fM == Call.Parameters.DEFAULT_CAMERA_ZOOM && fM2 == Call.Parameters.DEFAULT_CAMERA_ZOOM && fM3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            BaseKeyframeAnimation baseKeyframeAnimation4 = this.o;
            if (baseKeyframeAnimation4 != null) {
                float fFloatValue = ((Float) baseKeyframeAnimation4.f()).floatValue() * f2;
                float f4 = pointF2 == null ? 0.0f : pointF2.x;
                if (pointF2 != null) {
                    f3 = pointF2.y;
                }
                matrix.preRotate(fFloatValue, f4, f3);
            }
        } else {
            float fCos = fM != Call.Parameters.DEFAULT_CAMERA_ZOOM ? (float) Math.cos(Math.toRadians(fM)) : 1.0f;
            float fCos2 = fM2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? (float) Math.cos(Math.toRadians(fM2)) : 1.0f;
            if (fM3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f5 = pointF2 == null ? 0.0f : pointF2.x;
                if (pointF2 != null) {
                    f3 = pointF2.y;
                }
                matrix.preRotate(fM3, f5, f3);
            }
            if (fM2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                matrix.preScale(fCos2, 1.0f);
            }
            if (fM != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                matrix.preScale(1.0f, fCos);
            }
        }
        if (scaleXY != null) {
            double d = f2;
            matrix.preScale((float) Math.pow(scaleXY.f22332a, d), (float) Math.pow(scaleXY.f22333b, d));
        }
        return matrix;
    }
}
