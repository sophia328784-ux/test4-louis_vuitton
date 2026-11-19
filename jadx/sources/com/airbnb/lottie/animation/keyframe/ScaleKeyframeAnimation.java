package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import defpackage.md;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ScaleKeyframeAnimation extends KeyframeAnimation<ScaleXY> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ScaleXY f21909i;

    public ScaleKeyframeAnimation(List<Keyframe<ScaleXY>> list) {
        super(list);
        this.f21909i = new ScaleXY();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        Object obj;
        float f3;
        Object obj2 = keyframe.f22317b;
        if (obj2 == null || (obj = keyframe.f22318c) == null) {
            md.k("Missing values for keyframe.");
            return null;
        }
        ScaleXY scaleXY = (ScaleXY) obj2;
        ScaleXY scaleXY2 = (ScaleXY) obj;
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback != null) {
            f3 = f2;
            ScaleXY scaleXY3 = (ScaleXY) lottieValueCallback.b(keyframe.g, keyframe.f22321h.floatValue(), scaleXY, scaleXY2, f3, e(), this.d);
            if (scaleXY3 != null) {
                return scaleXY3;
            }
        } else {
            f3 = f2;
        }
        float f4 = MiscUtils.f(scaleXY.f22332a, scaleXY2.f22332a, f3);
        float f5 = MiscUtils.f(scaleXY.f22333b, scaleXY2.f22333b, f3);
        ScaleXY scaleXY4 = this.f21909i;
        scaleXY4.f22332a = f4;
        scaleXY4.f22333b = f5;
        return scaleXY4;
    }
}
