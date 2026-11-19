package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.PolystarContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* JADX INFO: loaded from: classes.dex */
public class PolystarShape implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f22139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimatableFloatValue f22140c;
    public final AnimatableValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimatableFloatValue f22141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnimatableFloatValue f22142f;
    public final AnimatableFloatValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AnimatableFloatValue f22143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnimatableFloatValue f22144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f22145j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f22146k;

    public enum Type {
        STAR(1),
        POLYGON(2);

        private final int value;

        Type(int i2) {
            this.value = i2;
        }

        public static Type a(int i2) {
            for (Type type : values()) {
                if (type.value == i2) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6, boolean z, boolean z2) {
        this.f22138a = str;
        this.f22139b = type;
        this.f22140c = animatableFloatValue;
        this.d = animatableValue;
        this.f22141e = animatableFloatValue2;
        this.f22142f = animatableFloatValue3;
        this.g = animatableFloatValue4;
        this.f22143h = animatableFloatValue5;
        this.f22144i = animatableFloatValue6;
        this.f22145j = z;
        this.f22146k = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new PolystarContent(lottieDrawable, baseLayer, this);
    }
}
