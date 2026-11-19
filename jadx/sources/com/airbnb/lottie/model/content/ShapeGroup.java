package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeGroup implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f22165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f22166c;

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.f22164a = str;
        this.f22165b = list;
        this.f22166c = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this, lottieComposition);
    }

    public final String toString() {
        return "ShapeGroup{name='" + this.f22164a + "' Shapes: " + Arrays.toString(this.f22165b.toArray()) + '}';
    }
}
