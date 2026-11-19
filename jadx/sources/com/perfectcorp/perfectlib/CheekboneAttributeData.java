package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.CheekbonePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class CheekboneAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39513c;

    public CheekboneAttributeData(CheekbonePredictResult cheekbonePredictResult, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39511a = set.contains("cheekbones") ? cheekbonePredictResult.left.name : null;
        this.f39512b = set.contains("cheekbones") ? cheekbonePredictResult.right.name : null;
        this.f39513c = set.contains("cheekbones") ? cheekbonePredictResult.overall.name : null;
    }

    public final String getLeft() {
        return this.f39511a;
    }

    public final String getOverall() {
        return this.f39513c;
    }

    public final String getRight() {
        return this.f39512b;
    }
}
