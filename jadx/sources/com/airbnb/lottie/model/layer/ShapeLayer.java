package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeLayer extends BaseLayer {
    public final ContentGroup C;
    public final CompositionLayer D;
    public final DropShadowKeyframeAnimation E;

    public ShapeLayer(LottieDrawable lottieDrawable, Layer layer, CompositionLayer compositionLayer, LottieComposition lottieComposition) {
        super(lottieDrawable, layer);
        this.D = compositionLayer;
        ContentGroup contentGroup = new ContentGroup(lottieDrawable, this, new ShapeGroup("__container", layer.f22196a, false), lottieComposition);
        this.C = contentGroup;
        List list = Collections.EMPTY_LIST;
        contentGroup.b(list, list);
        DropShadowEffect dropShadowEffect = this.p.x;
        if (dropShadowEffect != null) {
            this.E = new DropShadowKeyframeAnimation(this, this, dropShadowEffect);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        super.f(rectF, matrix, z);
        this.C.f(rectF, this.n, z);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        PointF pointF = LottieProperty.f21772a;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.E;
        if (obj == 5 && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21896c.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.E && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.c(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.F && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21897e.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.G && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21898f.k(lottieValueCallback);
        } else {
            if (obj != LottieProperty.H || dropShadowKeyframeAnimation == null) {
                return;
            }
            dropShadowKeyframeAnimation.g.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void k(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.E;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.b(matrix, i2);
        }
        this.C.d(canvas, matrix, i2, dropShadow);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final BlurEffect l() {
        BlurEffect blurEffect = this.p.w;
        return blurEffect != null ? blurEffect : this.D.p.w;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void p(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2) {
        this.C.e(keyPath, i2, arrayList, keyPath2);
    }
}
