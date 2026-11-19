package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class FillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f21820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LPaint f21821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseLayer f21822c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f21823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f21824f;
    public final ColorKeyframeAnimation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IntegerKeyframeAnimation f21825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ValueCallbackKeyframeAnimation f21826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LottieDrawable f21827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public BaseKeyframeAnimation f21828k;
    public float l;

    public FillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeFill shapeFill) {
        Path path = new Path();
        this.f21820a = path;
        this.f21821b = new LPaint(1);
        this.f21824f = new ArrayList();
        this.f21822c = baseLayer;
        String str = shapeFill.f22161c;
        AnimatableIntegerValue animatableIntegerValue = shapeFill.f22162e;
        AnimatableColorValue animatableColorValue = shapeFill.d;
        this.d = str;
        this.f21823e = shapeFill.f22163f;
        this.f21827j = lottieDrawable;
        if (baseLayer.l() != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA = baseLayer.l().f22110a.a();
            this.f21828k = floatKeyframeAnimationA;
            floatKeyframeAnimationA.a(this);
            baseLayer.h(this.f21828k);
        }
        if (animatableColorValue == null || animatableIntegerValue == null) {
            this.g = null;
            this.f21825h = null;
            return;
        }
        path.setFillType(shapeFill.f22160b);
        BaseKeyframeAnimation baseKeyframeAnimationA = animatableColorValue.a();
        this.g = (ColorKeyframeAnimation) baseKeyframeAnimationA;
        baseKeyframeAnimationA.a(this);
        baseLayer.h(baseKeyframeAnimationA);
        BaseKeyframeAnimation baseKeyframeAnimationA2 = animatableIntegerValue.a();
        this.f21825h = (IntegerKeyframeAnimation) baseKeyframeAnimationA2;
        baseKeyframeAnimationA2.a(this);
        baseLayer.h(baseKeyframeAnimationA2);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21827j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            Content content = (Content) list2.get(i2);
            if (content instanceof PathContent) {
                this.f21824f.add((PathContent) content);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        MaskFilter maskFilter;
        if (this.f21823e) {
            return;
        }
        AsyncUpdates asyncUpdates = L.f21740a;
        ColorKeyframeAnimation colorKeyframeAnimation = this.g;
        int iM = colorKeyframeAnimation.m(colorKeyframeAnimation.b(), colorKeyframeAnimation.d());
        float fIntValue = ((Integer) this.f21825h.f()).intValue() / 100.0f;
        int iC = (MiscUtils.c((int) (i2 * fIntValue)) << 24) | (iM & 16777215);
        LPaint lPaint = this.f21821b;
        lPaint.setColor(iC);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.f21826i;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.f());
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.f21828k;
        if (baseKeyframeAnimation != null) {
            float fFloatValue = ((Float) baseKeyframeAnimation.f()).floatValue();
            if (fFloatValue == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                lPaint.setMaskFilter(null);
            } else if (fFloatValue != this.l) {
                BaseLayer baseLayer = this.f21822c;
                if (baseLayer.A == fFloatValue) {
                    maskFilter = baseLayer.B;
                } else {
                    BlurMaskFilter blurMaskFilter = new BlurMaskFilter(fFloatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    baseLayer.B = blurMaskFilter;
                    baseLayer.A = fFloatValue;
                    maskFilter = blurMaskFilter;
                }
                lPaint.setMaskFilter(maskFilter);
            }
            this.l = fFloatValue;
        }
        if (dropShadow != null) {
            dropShadow.a((int) (fIntValue * 255.0f), lPaint);
        } else {
            lPaint.clearShadowLayer();
        }
        Path path = this.f21820a;
        path.reset();
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f21824f;
            if (i3 >= arrayList.size()) {
                canvas.drawPath(path, lPaint);
                AsyncUpdates asyncUpdates2 = L.f21740a;
                return;
            } else {
                path.addPath(((PathContent) arrayList.get(i3)).getPath(), matrix);
                i3++;
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        MiscUtils.g(keyPath, i2, arrayList, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f21820a;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21824f;
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
        if (obj == 1) {
            this.g.k(lottieValueCallback);
            return;
        }
        if (obj == 4) {
            this.f21825h.k(lottieValueCallback);
            return;
        }
        ColorFilter colorFilter = LottieProperty.I;
        BaseLayer baseLayer = this.f21822c;
        if (obj == colorFilter) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.f21826i;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f21826i = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f21826i = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            baseLayer.h(this.f21826i);
            return;
        }
        if (obj == LottieProperty.f21775e) {
            BaseKeyframeAnimation baseKeyframeAnimation = this.f21828k;
            if (baseKeyframeAnimation != null) {
                baseKeyframeAnimation.k(lottieValueCallback);
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f21828k = valueCallbackKeyframeAnimation3;
            valueCallbackKeyframeAnimation3.a(this);
            baseLayer.h(this.f21828k);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.d;
    }
}
