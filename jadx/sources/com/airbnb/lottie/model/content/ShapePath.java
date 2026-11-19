package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ShapeContent;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import defpackage.tr;

/* JADX INFO: loaded from: classes.dex */
public class ShapePath implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f22168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimatableShapeValue f22169c;
    public final boolean d;

    public ShapePath(String str, int i2, AnimatableShapeValue animatableShapeValue, boolean z) {
        this.f22167a = str;
        this.f22168b = i2;
        this.f22169c = animatableShapeValue;
        this.d = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ShapeContent(lottieDrawable, baseLayer, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapePath{name=");
        sb.append(this.f22167a);
        sb.append(", index=");
        return tr.k(sb, this.f22168b, '}');
    }
}
