package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GradientStroke implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GradientType f22124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimatableGradientColorValue f22125c;
    public final AnimatableIntegerValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimatablePointValue f22126e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnimatablePointValue f22127f;
    public final AnimatableFloatValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ShapeStroke.LineCapType f22128h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShapeStroke.LineJoinType f22129i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f22130j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f22131k;
    public final AnimatableFloatValue l;
    public final boolean m;

    public GradientStroke(String str, GradientType gradientType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f2, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.f22123a = str;
        this.f22124b = gradientType;
        this.f22125c = animatableGradientColorValue;
        this.d = animatableIntegerValue;
        this.f22126e = animatablePointValue;
        this.f22127f = animatablePointValue2;
        this.g = animatableFloatValue;
        this.f22128h = lineCapType;
        this.f22129i = lineJoinType;
        this.f22130j = f2;
        this.f22131k = list;
        this.l = animatableFloatValue2;
        this.m = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }
}
