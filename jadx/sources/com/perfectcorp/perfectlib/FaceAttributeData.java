package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.FaceShapePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class FaceAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f39611c;

    public FaceAttributeData(FaceShapePredictResult faceShapePredictResult, FaceAnalysisData.Extra extra, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39609a = set.contains("faceShape") ? faceShapePredictResult.ratio : null;
        this.f39610b = set.contains("faceShape") ? faceShapePredictResult.shape : null;
        this.f39611c = set.contains("skinTone") ? extra.f39593a : null;
    }

    public final String getFaceRatio() {
        return this.f39609a;
    }

    public final String getShape() {
        return this.f39610b;
    }

    public final Integer getSkinTone() {
        return this.f39611c;
    }
}
