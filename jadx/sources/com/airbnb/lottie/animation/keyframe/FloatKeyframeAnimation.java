package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.md;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class FloatKeyframeAnimation extends KeyframeAnimation<Float> {
    public FloatKeyframeAnimation(List<Keyframe<Float>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        return Float.valueOf(n(keyframe, f2));
    }

    public final float m() {
        return n(b(), d());
    }

    public final float n(Keyframe keyframe, float f2) {
        float f3;
        Object obj = keyframe.f22317b;
        Object obj2 = keyframe.f22317b;
        if (obj == null || keyframe.f22318c == null) {
            md.k("Missing values for keyframe.");
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback != null) {
            f3 = f2;
            Float f4 = (Float) lottieValueCallback.b(keyframe.g, keyframe.f22321h.floatValue(), (Float) obj2, (Float) keyframe.f22318c, f3, e(), this.d);
            if (f4 != null) {
                return f4.floatValue();
            }
        } else {
            f3 = f2;
        }
        if (keyframe.f22322i == -3987645.8f) {
            keyframe.f22322i = ((Float) obj2).floatValue();
        }
        float f5 = keyframe.f22322i;
        if (keyframe.f22323j == -3987645.8f) {
            keyframe.f22323j = ((Float) keyframe.f22318c).floatValue();
        }
        return MiscUtils.f(f5, keyframe.f22323j, f3);
    }
}
