package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MaskKeyframeAnimation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f21902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f21903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f21904c;

    public MaskKeyframeAnimation(List<Mask> list) {
        this.f21904c = list;
        this.f21902a = new ArrayList(list.size());
        this.f21903b = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f21902a.add(list.get(i2).f22134b.a());
            this.f21903b.add(list.get(i2).f22135c.a());
        }
    }
}
