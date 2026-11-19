package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.jniproxy.faceshape.NoseFeaturePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class NoseAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39734b;

    public NoseAttributeData(NoseFeaturePredictResult noseFeaturePredictResult, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39733a = set.contains("noseWidth") ? noseFeaturePredictResult.widthName : null;
        this.f39734b = set.contains("noseLength") ? noseFeaturePredictResult.lengthName : null;
    }

    public final String getLength() {
        return this.f39734b;
    }

    public final String getWidth() {
        return this.f39733a;
    }
}
