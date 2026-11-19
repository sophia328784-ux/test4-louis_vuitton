package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.md;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntegerKeyframeAnimation extends KeyframeAnimation<Integer> {
    public IntegerKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        int i2;
        float f3;
        int iIntValue;
        Object obj = keyframe.f22317b;
        if (obj == null) {
            md.k("Missing values for keyframe.");
            return null;
        }
        Object obj2 = keyframe.f22318c;
        if (obj2 == null) {
            if (keyframe.f22324k == 784923401) {
                keyframe.f22324k = ((Integer) obj).intValue();
            }
            i2 = keyframe.f22324k;
        } else {
            if (keyframe.l == 784923401) {
                keyframe.l = ((Integer) obj2).intValue();
            }
            i2 = keyframe.l;
        }
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback != null) {
            f3 = f2;
            Integer num = (Integer) lottieValueCallback.b(keyframe.g, keyframe.f22321h.floatValue(), (Integer) obj, Integer.valueOf(i2), f3, e(), this.d);
            if (num != null) {
                iIntValue = num.intValue();
            }
            return Integer.valueOf(iIntValue);
        }
        f3 = f2;
        if (keyframe.f22324k == 784923401) {
            keyframe.f22324k = ((Integer) obj).intValue();
        }
        int i3 = keyframe.f22324k;
        PointF pointF = MiscUtils.f22298a;
        iIntValue = (int) ((f3 * (i2 - i3)) + i3);
        return Integer.valueOf(iIntValue);
    }
}
