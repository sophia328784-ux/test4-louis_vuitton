package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AnimatableValue<K, A> {
    BaseKeyframeAnimation a();

    List b();

    boolean isStatic();
}
