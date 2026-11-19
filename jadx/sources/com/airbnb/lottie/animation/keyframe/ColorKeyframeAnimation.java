package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.md;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ColorKeyframeAnimation extends KeyframeAnimation<Integer> {
    public ColorKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        return Integer.valueOf(m(keyframe, f2));
    }

    public final int m(Keyframe keyframe, float f2) {
        float f3;
        Float f4;
        Object obj = keyframe.f22317b;
        Object obj2 = keyframe.f22317b;
        if (obj == null || keyframe.f22318c == null) {
            md.k("Missing values for keyframe.");
            return 0;
        }
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback == null || (f4 = keyframe.f22321h) == null) {
            f3 = f2;
        } else {
            f3 = f2;
            Integer num = (Integer) lottieValueCallback.b(keyframe.g, f4.floatValue(), (Integer) obj2, (Integer) keyframe.f22318c, f3, e(), this.d);
            if (num != null) {
                return num.intValue();
            }
        }
        return GammaEvaluator.c(((Integer) obj2).intValue(), ((Integer) keyframe.f22318c).intValue(), MiscUtils.b(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
    }
}
