package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.Eyebrow;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SingleEyebrowAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39883c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39884e;

    public SingleEyebrowAttributeData(Eyebrow eyebrow, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39881a = set.contains("eyebrowShape") ? eyebrow.shape.name : null;
        this.f39882b = set.contains("eyebrowThinness") ? eyebrow.thinness : null;
        this.f39883c = set.contains("eyebrowShortness") ? eyebrow.shortness : null;
        this.d = set.contains("eyebrowThickness") ? eyebrow.bodyThickness.name : null;
        this.f39884e = set.contains("eyebrowThickness") ? eyebrow.tailThickness.name : null;
    }

    public final String getBodyThickness() {
        return this.d;
    }

    public final String getShape() {
        return this.f39881a;
    }

    public final String getShortness() {
        return this.f39883c;
    }

    public final String getTailThickness() {
        return this.f39884e;
    }

    public final String getThinness() {
        return this.f39882b;
    }
}
