package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ModifierContent;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.BaseLayer;

/* JADX INFO: loaded from: classes.dex */
public class AnimatableTransform implements ModifierContent, ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimatablePathValue f22100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnimatableValue f22101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimatableScaleValue f22102c;
    public final AnimatableFloatValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimatableIntegerValue f22103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnimatableFloatValue f22104f;
    public final AnimatableFloatValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AnimatableFloatValue f22105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnimatableFloatValue f22106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnimatableFloatValue f22107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnimatableFloatValue f22108k;
    public final AnimatableFloatValue l;
    public boolean m;

    public AnimatableTransform(AnimatablePathValue animatablePathValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableScaleValue animatableScaleValue, AnimatableFloatValue animatableFloatValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6, AnimatableFloatValue animatableFloatValue7, AnimatableFloatValue animatableFloatValue8) {
        this.m = false;
        this.f22100a = animatablePathValue;
        this.f22101b = animatableValue;
        this.f22102c = animatableScaleValue;
        this.d = animatableFloatValue;
        this.f22103e = animatableIntegerValue;
        this.f22108k = animatableFloatValue2;
        this.l = animatableFloatValue3;
        this.f22104f = animatableFloatValue4;
        this.g = animatableFloatValue5;
        this.f22105h = animatableFloatValue6;
        this.f22106i = animatableFloatValue7;
        this.f22107j = animatableFloatValue8;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return null;
    }

    public AnimatableTransform(AnimatablePathValue animatablePathValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableScaleValue animatableScaleValue, AnimatableFloatValue animatableFloatValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5) {
        this(animatablePathValue, animatableValue, animatableScaleValue, animatableFloatValue, animatableIntegerValue, animatableFloatValue2, animatableFloatValue3, animatableFloatValue4, animatableFloatValue5, null, null, null);
    }

    public AnimatableTransform() {
        this(null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
