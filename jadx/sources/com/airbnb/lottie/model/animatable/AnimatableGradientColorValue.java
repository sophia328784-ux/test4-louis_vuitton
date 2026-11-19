package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnimatableGradientColorValue extends BaseAnimatableValue<GradientColor, GradientColor> {
    public AnimatableGradientColorValue(List<Keyframe<GradientColor>> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            Keyframe<GradientColor> keyframe = list.get(i2);
            GradientColor gradientColor = (GradientColor) keyframe.f22317b;
            GradientColor gradientColor2 = (GradientColor) keyframe.f22318c;
            if (gradientColor != null && gradientColor2 != null) {
                float[] fArr = gradientColor.f22115a;
                int length = fArr.length;
                float[] fArr2 = gradientColor2.f22115a;
                if (length != fArr2.length) {
                    int length2 = fArr.length + fArr2.length;
                    float[] fArr3 = new float[length2];
                    System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
                    System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
                    Arrays.sort(fArr3);
                    float f2 = Float.NaN;
                    int i3 = 0;
                    for (int i4 = 0; i4 < length2; i4++) {
                        float f3 = fArr3[i4];
                        if (f3 != f2) {
                            fArr3[i3] = f3;
                            i3++;
                            f2 = fArr3[i4];
                        }
                    }
                    float[] fArrCopyOfRange = Arrays.copyOfRange(fArr3, 0, i3);
                    keyframe = new Keyframe<>(gradientColor.b(fArrCopyOfRange), gradientColor2.b(fArrCopyOfRange));
                }
            }
            list.set(i2, keyframe);
        }
        super(list);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final BaseKeyframeAnimation a() {
        return new GradientColorKeyframeAnimation(this.f22109a);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final List b() {
        return this.f22109a;
    }
}
