package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.md;
import defpackage.tr;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PointKeyframeAnimation extends KeyframeAnimation<PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f21908i;

    public PointKeyframeAnimation(List<Keyframe<PointF>> list) {
        super(list);
        this.f21908i = new PointF();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        return h(keyframe, f2, f2, f2);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final PointF h(Keyframe keyframe, float f2, float f3, float f4) {
        Object obj;
        PointF pointF;
        Object obj2 = keyframe.f22317b;
        if (obj2 == null || (obj = keyframe.f22318c) == null) {
            md.k("Missing values for keyframe.");
            return null;
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback != null && (pointF = (PointF) lottieValueCallback.b(keyframe.g, keyframe.f22321h.floatValue(), pointF2, pointF3, f2, e(), this.d)) != null) {
            return pointF;
        }
        float f5 = pointF2.x;
        float fA = tr.a(pointF3.x, f5, f3, f5);
        float f6 = pointF2.y;
        float fA2 = tr.a(pointF3.y, f6, f4, f6);
        PointF pointF4 = this.f21908i;
        pointF4.set(fA, fA2);
        return pointF4;
    }
}
