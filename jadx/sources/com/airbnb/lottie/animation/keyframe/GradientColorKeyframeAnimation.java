package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import defpackage.a;
import defpackage.md;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GradientColorKeyframeAnimation extends KeyframeAnimation<GradientColor> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GradientColor f21901i;

    public GradientColorKeyframeAnimation(List<Keyframe<GradientColor>> list) {
        super(list);
        int iMax = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            GradientColor gradientColor = (GradientColor) list.get(i2).f22317b;
            if (gradientColor != null) {
                iMax = Math.max(iMax, gradientColor.f22116b.length);
            }
        }
        this.f21901i = new GradientColor(new float[iMax], new int[iMax]);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        GradientColor gradientColor = (GradientColor) keyframe.f22317b;
        GradientColor gradientColor2 = (GradientColor) keyframe.f22318c;
        GradientColor gradientColor3 = this.f21901i;
        int[] iArr = gradientColor3.f22116b;
        float[] fArr = gradientColor3.f22115a;
        boolean zEquals = gradientColor.equals(gradientColor2);
        int[] iArr2 = gradientColor.f22116b;
        if (zEquals) {
            gradientColor3.a(gradientColor);
            return gradientColor3;
        }
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            gradientColor3.a(gradientColor);
            return gradientColor3;
        }
        if (f2 >= 1.0f) {
            gradientColor3.a(gradientColor2);
            return gradientColor3;
        }
        int length = iArr2.length;
        int[] iArr3 = gradientColor2.f22116b;
        if (length != iArr3.length) {
            StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb.append(iArr2.length);
            sb.append(" vs ");
            md.n(a.i(iArr3.length, ")", sb));
            return null;
        }
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            fArr[i2] = MiscUtils.f(gradientColor.f22115a[i2], gradientColor2.f22115a[i2], f2);
            iArr[i2] = GammaEvaluator.c(iArr2[i2], iArr3[i2], f2);
        }
        for (int length2 = iArr2.length; length2 < fArr.length; length2++) {
            fArr[length2] = fArr[iArr2.length - 1];
            iArr[length2] = iArr[iArr2.length - 1];
        }
        return gradientColor3;
    }
}
