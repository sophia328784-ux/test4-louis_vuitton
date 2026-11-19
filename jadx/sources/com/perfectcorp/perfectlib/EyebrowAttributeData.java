package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.EyebrowPredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EyebrowAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SingleEyebrowAttributeData f39580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleEyebrowAttributeData f39581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39582c;
    public final Integer d;

    public EyebrowAttributeData(EyebrowPredictResult eyebrowPredictResult, FaceAnalysisData.Extra extra, FaceAttributeAnalyzer.Condition condition) {
        this.f39580a = new SingleEyebrowAttributeData(eyebrowPredictResult.left, condition);
        this.f39581b = new SingleEyebrowAttributeData(eyebrowPredictResult.right, condition);
        Set set = condition.f39604a;
        this.f39582c = set.contains("eyebrowDistance") ? eyebrowPredictResult.gap : null;
        this.d = set.contains("eyebrowColor") ? extra.f39594b : null;
    }

    public final Integer getColor() {
        return this.d;
    }

    public final String getGapClassName() {
        return this.f39582c;
    }

    public final SingleEyebrowAttributeData getLeft() {
        return this.f39580a;
    }

    public final SingleEyebrowAttributeData getRight() {
        return this.f39581b;
    }
}
