package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class SplitDimensionPathKeyframeAnimation extends BaseKeyframeAnimation<PointF, PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f21913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PointF f21914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BaseKeyframeAnimation f21915k;
    public final BaseKeyframeAnimation l;
    public LottieValueCallback m;
    public LottieValueCallback n;

    public SplitDimensionPathKeyframeAnimation(BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation, BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2) {
        super(Collections.EMPTY_LIST);
        this.f21913i = new PointF();
        this.f21914j = new PointF();
        this.f21915k = baseKeyframeAnimation;
        this.l = baseKeyframeAnimation2;
        j(this.d);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object f() {
        return m();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final /* bridge */ /* synthetic */ Object g(Keyframe keyframe, float f2) {
        return m();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final void j(float f2) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.f21915k;
        baseKeyframeAnimation.j(f2);
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.l;
        baseKeyframeAnimation2.j(f2);
        this.f21913i.set(((Float) baseKeyframeAnimation.f()).floatValue(), ((Float) baseKeyframeAnimation2.f()).floatValue());
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21883a;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation.AnimationListener) arrayList.get(i2)).a();
            i2++;
        }
    }

    public final PointF m() {
        Float f2;
        BaseKeyframeAnimation baseKeyframeAnimation;
        Keyframe keyframeB;
        BaseKeyframeAnimation baseKeyframeAnimation2;
        Keyframe keyframeB2;
        Float f3 = null;
        if (this.m == null || (keyframeB2 = (baseKeyframeAnimation2 = this.f21915k).b()) == null) {
            f2 = null;
        } else {
            Float f4 = keyframeB2.f22321h;
            LottieValueCallback lottieValueCallback = this.m;
            float f5 = keyframeB2.g;
            f2 = (Float) lottieValueCallback.b(f5, f4 == null ? f5 : f4.floatValue(), (Float) keyframeB2.f22317b, (Float) keyframeB2.f22318c, baseKeyframeAnimation2.d(), baseKeyframeAnimation2.e(), baseKeyframeAnimation2.d);
        }
        if (this.n != null && (keyframeB = (baseKeyframeAnimation = this.l).b()) != null) {
            Float f6 = keyframeB.f22321h;
            LottieValueCallback lottieValueCallback2 = this.n;
            float f7 = keyframeB.g;
            f3 = (Float) lottieValueCallback2.b(f7, f6 == null ? f7 : f6.floatValue(), (Float) keyframeB.f22317b, (Float) keyframeB.f22318c, baseKeyframeAnimation.d(), baseKeyframeAnimation.e(), baseKeyframeAnimation.d);
        }
        PointF pointF = this.f21913i;
        PointF pointF2 = this.f21914j;
        if (f2 == null) {
            pointF2.set(pointF.x, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        } else {
            pointF2.set(f2.floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        if (f3 == null) {
            pointF2.set(pointF2.x, pointF.y);
            return pointF2;
        }
        pointF2.set(pointF2.x, f3.floatValue());
        return pointF2;
    }
}
