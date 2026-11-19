package com.airbnb.lottie.animation.content;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TrimPathContent implements Content, BaseKeyframeAnimation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f21878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f21879b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeTrimPath.Type f21880c;
    public final FloatKeyframeAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FloatKeyframeAnimation f21881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FloatKeyframeAnimation f21882f;

    public TrimPathContent(BaseLayer baseLayer, ShapeTrimPath shapeTrimPath) {
        shapeTrimPath.getClass();
        this.f21878a = shapeTrimPath.f22183e;
        this.f21880c = shapeTrimPath.f22180a;
        FloatKeyframeAnimation floatKeyframeAnimationA = shapeTrimPath.f22181b.a();
        this.d = floatKeyframeAnimationA;
        FloatKeyframeAnimation floatKeyframeAnimationA2 = shapeTrimPath.f22182c.a();
        this.f21881e = floatKeyframeAnimationA2;
        FloatKeyframeAnimation floatKeyframeAnimationA3 = shapeTrimPath.d.a();
        this.f21882f = floatKeyframeAnimationA3;
        baseLayer.h(floatKeyframeAnimationA);
        baseLayer.h(floatKeyframeAnimationA2);
        baseLayer.h(floatKeyframeAnimationA3);
        floatKeyframeAnimationA.a(this);
        floatKeyframeAnimationA2.a(this);
        floatKeyframeAnimationA3.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21879b;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation.AnimationListener) arrayList.get(i2)).a();
            i2++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
    }

    public final void e(BaseKeyframeAnimation.AnimationListener animationListener) {
        this.f21879b.add(animationListener);
    }
}
