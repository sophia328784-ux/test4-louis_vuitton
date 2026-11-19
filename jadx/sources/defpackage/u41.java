package defpackage;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.layer.BaseLayer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u41 implements BaseKeyframeAnimation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f80226b;

    public /* synthetic */ u41(Object obj, int i2) {
        this.f80225a = i2;
        this.f80226b = obj;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        int i2 = this.f80225a;
        Object obj = this.f80226b;
        switch (i2) {
            case 0:
                ((TransformKeyframeAnimation) obj).f21926k = true;
                break;
            case 1:
                ((TransformKeyframeAnimation) obj).f21926k = true;
                break;
            case 2:
                ((TransformKeyframeAnimation) obj).f21926k = true;
                break;
            default:
                BaseLayer baseLayer = (BaseLayer) obj;
                boolean z = baseLayer.r.m() == 1.0f;
                if (z != baseLayer.x) {
                    baseLayer.x = z;
                    baseLayer.o.invalidateSelf();
                }
                break;
        }
    }
}
