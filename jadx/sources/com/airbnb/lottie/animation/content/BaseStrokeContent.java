package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LottieDrawable f21796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BaseLayer f21797f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f21798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LPaint f21799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FloatKeyframeAnimation f21800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final IntegerKeyframeAnimation f21801k;
    public final ArrayList l;
    public final FloatKeyframeAnimation m;
    public ValueCallbackKeyframeAnimation n;
    public BaseKeyframeAnimation o;
    public float p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PathMeasure f21793a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f21794b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f21795c = new Path();
    public final RectF d = new RectF();
    public final ArrayList g = new ArrayList();

    public static final class PathGroup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f21802a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrimPathContent f21803b;

        public PathGroup(TrimPathContent trimPathContent) {
            this.f21803b = trimPathContent;
        }
    }

    public BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f2, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue, List list, AnimatableFloatValue animatableFloatValue2) {
        LPaint lPaint = new LPaint(1);
        this.f21799i = lPaint;
        this.p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f21796e = lottieDrawable;
        this.f21797f = baseLayer;
        lPaint.setStyle(Paint.Style.STROKE);
        lPaint.setStrokeCap(cap);
        lPaint.setStrokeJoin(join);
        lPaint.setStrokeMiter(f2);
        this.f21801k = (IntegerKeyframeAnimation) animatableIntegerValue.a();
        this.f21800j = animatableFloatValue.a();
        if (animatableFloatValue2 == null) {
            this.m = null;
        } else {
            this.m = animatableFloatValue2.a();
        }
        this.l = new ArrayList(list.size());
        this.f21798h = new float[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.l.add(((AnimatableFloatValue) list.get(i2)).a());
        }
        baseLayer.h(this.f21801k);
        baseLayer.h(this.f21800j);
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            baseLayer.h((BaseKeyframeAnimation) this.l.get(i3));
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.m;
        if (floatKeyframeAnimation != null) {
            baseLayer.h(floatKeyframeAnimation);
        }
        this.f21801k.a(this);
        this.f21800j.a(this);
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((BaseKeyframeAnimation) this.l.get(i4)).a(this);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.m;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.a(this);
        }
        if (baseLayer.l() != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA = baseLayer.l().f22110a.a();
            this.o = floatKeyframeAnimationA;
            floatKeyframeAnimationA.a(this);
            baseLayer.h(this.o);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21796e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:24:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065 A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        PathGroup pathGroup = null;
        TrimPathContent trimPathContent = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList2.get(size);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent2 = (TrimPathContent) content;
                if (trimPathContent2.f21880c == ShapeTrimPath.Type.INDIVIDUALLY) {
                    trimPathContent = trimPathContent2;
                }
            }
        }
        if (trimPathContent != null) {
            trimPathContent.e(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.g;
            if (size2 < 0) {
                break;
            }
            Content content2 = (Content) list2.get(size2);
            if (content2 instanceof TrimPathContent) {
                TrimPathContent trimPathContent3 = (TrimPathContent) content2;
                if (trimPathContent3.f21880c == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (pathGroup != null) {
                        arrayList.add(pathGroup);
                    }
                    PathGroup pathGroup2 = new PathGroup(trimPathContent3);
                    trimPathContent3.e(this);
                    pathGroup = pathGroup2;
                } else if (!(content2 instanceof PathContent)) {
                    if (pathGroup == null) {
                        pathGroup = new PathGroup(trimPathContent);
                    }
                    pathGroup.f21802a.add((PathContent) content2);
                }
            } else if (!(content2 instanceof PathContent)) {
                if (pathGroup == null) {
                    pathGroup = new PathGroup(trimPathContent);
                }
                pathGroup.f21802a.add((PathContent) content2);
            }
        }
        if (pathGroup != null) {
            arrayList.add(pathGroup);
        }
    }

    /* JADX WARN: Code duplicated, block: B:78:0x01f8  */
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
    public void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        int i3;
        float f2;
        MaskFilter maskFilter;
        float[] fArr;
        BaseStrokeContent baseStrokeContent = this;
        AsyncUpdates asyncUpdates = L.f21740a;
        float[] fArr2 = (float[]) Utils.f22314e.get();
        boolean z = false;
        fArr2[0] = 0.0f;
        int i4 = 1;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            return;
        }
        float f3 = 100.0f;
        float fIntValue = ((Integer) baseStrokeContent.f21801k.f()).intValue() / 100.0f;
        int iC = MiscUtils.c((int) (i2 * fIntValue));
        LPaint lPaint = baseStrokeContent.f21799i;
        lPaint.setAlpha(iC);
        lPaint.setStrokeWidth(baseStrokeContent.f21800j.m());
        if (lPaint.getStrokeWidth() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        ArrayList arrayList = baseStrokeContent.l;
        if (!arrayList.isEmpty()) {
            int i5 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = baseStrokeContent.f21798h;
                if (i5 >= size) {
                    break;
                }
                float fFloatValue = ((Float) ((BaseKeyframeAnimation) arrayList.get(i5)).f()).floatValue();
                fArr[i5] = fFloatValue;
                if (i5 % 2 == 0) {
                    if (fFloatValue < 1.0f) {
                        fArr[i5] = 1.0f;
                    }
                } else if (fFloatValue < 0.1f) {
                    fArr[i5] = 0.1f;
                }
                i5++;
            }
            FloatKeyframeAnimation floatKeyframeAnimation = baseStrokeContent.m;
            lPaint.setPathEffect(new DashPathEffect(fArr, floatKeyframeAnimation == null ? 0.0f : ((Float) floatKeyframeAnimation.f()).floatValue()));
            AsyncUpdates asyncUpdates2 = L.f21740a;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = baseStrokeContent.n;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.f());
        }
        BaseKeyframeAnimation baseKeyframeAnimation = baseStrokeContent.o;
        if (baseKeyframeAnimation != null) {
            float fFloatValue2 = ((Float) baseKeyframeAnimation.f()).floatValue();
            if (fFloatValue2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                lPaint.setMaskFilter(null);
            } else if (fFloatValue2 != baseStrokeContent.p) {
                BaseLayer baseLayer = baseStrokeContent.f21797f;
                if (baseLayer.A == fFloatValue2) {
                    maskFilter = baseLayer.B;
                } else {
                    BlurMaskFilter blurMaskFilter = new BlurMaskFilter(fFloatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    baseLayer.B = blurMaskFilter;
                    baseLayer.A = fFloatValue2;
                    maskFilter = blurMaskFilter;
                }
                lPaint.setMaskFilter(maskFilter);
            }
            baseStrokeContent.p = fFloatValue2;
        }
        if (dropShadow != null) {
            dropShadow.a((int) (fIntValue * 255.0f), lPaint);
        }
        canvas.save();
        canvas.concat(matrix);
        int i6 = 0;
        while (true) {
            ArrayList arrayList2 = baseStrokeContent.g;
            if (i6 >= arrayList2.size()) {
                canvas.restore();
                AsyncUpdates asyncUpdates3 = L.f21740a;
                return;
            }
            PathGroup pathGroup = (PathGroup) arrayList2.get(i6);
            TrimPathContent trimPathContent = pathGroup.f21803b;
            ArrayList arrayList3 = pathGroup.f21802a;
            Path path = baseStrokeContent.f21794b;
            if (trimPathContent != null) {
                AsyncUpdates asyncUpdates4 = L.f21740a;
                path.reset();
                for (int size2 = arrayList3.size() - i4; size2 >= 0; size2--) {
                    path.addPath(((PathContent) arrayList3.get(size2)).getPath());
                }
                float fFloatValue3 = ((Float) trimPathContent.d.f()).floatValue() / f3;
                float fFloatValue4 = ((Float) trimPathContent.f21881e.f()).floatValue() / f3;
                float fFloatValue5 = ((Float) trimPathContent.f21882f.f()).floatValue() / 360.0f;
                if (fFloatValue3 >= 0.01f || fFloatValue4 <= 0.99f) {
                    PathMeasure pathMeasure = baseStrokeContent.f21793a;
                    pathMeasure.setPath(path, z);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length += pathMeasure.getLength();
                    }
                    float f4 = fFloatValue5 * length;
                    float f5 = (fFloatValue3 * length) + f4;
                    float fMin = Math.min((fFloatValue4 * length) + f4, (f5 + length) - 1.0f);
                    int size3 = arrayList3.size() - i4;
                    float f6 = 0.0f;
                    while (size3 >= 0) {
                        int i7 = i4;
                        Path path2 = ((PathContent) arrayList3.get(size3)).getPath();
                        Path path3 = baseStrokeContent.f21795c;
                        path3.set(path2);
                        pathMeasure.setPath(path3, z);
                        float length2 = pathMeasure.getLength();
                        if (fMin > length) {
                            float f7 = fMin - length;
                            if (f7 >= f6 + length2 || f6 >= f7) {
                                f2 = f6 + length2;
                                if (f2 < f5 && f6 <= fMin) {
                                    if (f2 > fMin || f5 >= f6) {
                                        Utils.a(path3, f5 < f6 ? 0.0f : (f5 - f6) / length2, fMin > f2 ? 1.0f : (fMin - f6) / length2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        canvas.drawPath(path3, lPaint);
                                    } else {
                                        canvas.drawPath(path3, lPaint);
                                    }
                                }
                            } else {
                                Utils.a(path3, f5 > length ? (f5 - length) / length2 : 0.0f, Math.min(f7 / length2, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                canvas.drawPath(path3, lPaint);
                            }
                        } else {
                            f2 = f6 + length2;
                            if (f2 < f5) {
                            }
                        }
                        f6 += length2;
                        size3--;
                        baseStrokeContent = this;
                        i4 = i7;
                        z = false;
                    }
                    i3 = i4;
                    AsyncUpdates asyncUpdates5 = L.f21740a;
                } else {
                    canvas.drawPath(path, lPaint);
                    AsyncUpdates asyncUpdates6 = L.f21740a;
                    i3 = i4;
                }
            } else {
                i3 = i4;
                AsyncUpdates asyncUpdates7 = L.f21740a;
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((PathContent) arrayList3.get(size4)).getPath());
                }
                AsyncUpdates asyncUpdates8 = L.f21740a;
                canvas.drawPath(path, lPaint);
            }
            i6++;
            baseStrokeContent = this;
            i4 = i3;
            z = false;
            f3 = 100.0f;
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        MiscUtils.g(keyPath, i2, arrayList, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        AsyncUpdates asyncUpdates = L.f21740a;
        Path path = this.f21794b;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.g;
            if (i2 >= arrayList.size()) {
                RectF rectF2 = this.d;
                path.computeBounds(rectF2, false);
                float fM = this.f21800j.m() / 2.0f;
                rectF2.set(rectF2.left - fM, rectF2.top - fM, rectF2.right + fM, rectF2.bottom + fM);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                AsyncUpdates asyncUpdates2 = L.f21740a;
                return;
            }
            PathGroup pathGroup = (PathGroup) arrayList.get(i2);
            for (int i3 = 0; i3 < pathGroup.f21802a.size(); i3++) {
                path.addPath(((PathContent) pathGroup.f21802a.get(i3)).getPath(), matrix);
            }
            i2++;
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void g(LottieValueCallback lottieValueCallback, Object obj) {
        PointF pointF = LottieProperty.f21772a;
        if (obj == 4) {
            this.f21801k.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.q) {
            this.f21800j.k(lottieValueCallback);
            return;
        }
        ColorFilter colorFilter = LottieProperty.I;
        BaseLayer baseLayer = this.f21797f;
        if (obj == colorFilter) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.n;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.n = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.n = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            baseLayer.h(this.n);
            return;
        }
        if (obj == LottieProperty.f21775e) {
            BaseKeyframeAnimation baseKeyframeAnimation = this.o;
            if (baseKeyframeAnimation != null) {
                baseKeyframeAnimation.k(lottieValueCallback);
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.o = valueCallbackKeyframeAnimation3;
            valueCallbackKeyframeAnimation3.a(this);
            baseLayer.h(this.o);
        }
    }
}
