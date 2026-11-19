package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import defpackage.d21;

/* JADX INFO: loaded from: classes.dex */
public class ShapeFill implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f22159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path.FillType f22160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22161c;
    public final AnimatableColorValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimatableIntegerValue f22162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f22163f;

    public ShapeFill(String str, boolean z, Path.FillType fillType, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue, boolean z2) {
        this.f22161c = str;
        this.f22159a = z;
        this.f22160b = fillType;
        this.d = animatableColorValue;
        this.f22162e = animatableIntegerValue;
        this.f22163f = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public final String toString() {
        return d21.q(new StringBuilder("ShapeFill{color=, fillEnabled="), this.f22159a, '}');
    }
}
