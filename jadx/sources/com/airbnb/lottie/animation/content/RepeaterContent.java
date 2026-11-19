package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class RepeaterContent implements DrawingContent, PathContent, GreedyContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f21862a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f21863b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LottieDrawable f21864c;
    public final BaseLayer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f21866f;
    public final FloatKeyframeAnimation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FloatKeyframeAnimation f21867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TransformKeyframeAnimation f21868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ContentGroup f21869j;

    public RepeaterContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Repeater repeater) {
        this.f21864c = lottieDrawable;
        this.d = baseLayer;
        this.f21865e = repeater.f22151a;
        this.f21866f = repeater.f22154e;
        FloatKeyframeAnimation floatKeyframeAnimationA = repeater.f22152b.a();
        this.g = floatKeyframeAnimationA;
        baseLayer.h(floatKeyframeAnimationA);
        floatKeyframeAnimationA.a(this);
        FloatKeyframeAnimation floatKeyframeAnimationA2 = repeater.f22153c.a();
        this.f21867h = floatKeyframeAnimationA2;
        baseLayer.h(floatKeyframeAnimationA2);
        floatKeyframeAnimationA2.a(this);
        AnimatableTransform animatableTransform = repeater.d;
        animatableTransform.getClass();
        TransformKeyframeAnimation transformKeyframeAnimation = new TransformKeyframeAnimation(animatableTransform);
        this.f21868i = transformKeyframeAnimation;
        transformKeyframeAnimation.a(baseLayer);
        transformKeyframeAnimation.b(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21864c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        this.f21869j.b(list, list2);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void d(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        float fFloatValue = ((Float) this.g.f()).floatValue();
        float fFloatValue2 = ((Float) this.f21867h.f()).floatValue();
        TransformKeyframeAnimation transformKeyframeAnimation = this.f21868i;
        float fFloatValue3 = ((Float) transformKeyframeAnimation.v.f()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) transformKeyframeAnimation.w.f()).floatValue() / 100.0f;
        for (int i3 = ((int) fFloatValue) - 1; i3 >= 0; i3--) {
            Matrix matrix2 = this.f21862a;
            matrix2.set(matrix);
            float f2 = i3;
            matrix2.preConcat(transformKeyframeAnimation.f(f2 + fFloatValue2));
            this.f21869j.d(canvas, matrix2, (int) (MiscUtils.f(fFloatValue3, fFloatValue4, f2 / fFloatValue) * i2), dropShadow);
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void e(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        MiscUtils.g(keyPath, i2, arrayList, keyPath2, this);
        for (int i3 = 0; i3 < this.f21869j.f21811i.size(); i3++) {
            Content content = (Content) this.f21869j.f21811i.get(i3);
            if (content instanceof KeyPathElementContent) {
                MiscUtils.g(keyPath, i2, arrayList, keyPath2, (KeyPathElementContent) content);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        this.f21869j.f(rectF, matrix, z);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        if (this.f21868i.c(lottieValueCallback, obj)) {
            return;
        }
        if (obj == LottieProperty.s) {
            this.g.k(lottieValueCallback);
        } else if (obj == LottieProperty.t) {
            this.f21867h.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.f21865e;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Path path = this.f21869j.getPath();
        Path path2 = this.f21863b;
        path2.reset();
        float fFloatValue = ((Float) this.g.f()).floatValue();
        float fFloatValue2 = ((Float) this.f21867h.f()).floatValue();
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            Matrix matrixF = this.f21868i.f(i2 + fFloatValue2);
            Matrix matrix = this.f21862a;
            matrix.set(matrixF);
            path2.addPath(path, matrix);
        }
        return path2;
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public final void h(ListIterator listIterator) {
        if (this.f21869j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((Content) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f21869j = new ContentGroup(this.f21864c, this.d, "Repeater", this.f21866f, arrayList, null);
    }
}
