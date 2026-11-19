package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.EyeFeature;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SingleEyeAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39880c;

    public SingleEyeAttributeData(EyeFeature eyeFeature, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39878a = set.contains("eyeAngle") ? eyeFeature.angle : null;
        this.f39879b = set.contains("eyeShape") ? eyeFeature.shape : null;
        this.f39880c = set.contains("eyelid") ? eyeFeature.lid.name : null;
    }

    public final String getAngle() {
        return this.f39878a;
    }

    public final String getEyelid() {
        return this.f39880c;
    }

    public final String getShape() {
        return this.f39879b;
    }
}
