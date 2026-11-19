package com.perfectcorp.perfectlib;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HairAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f39620b;

    public HairAttributeData(FaceAnalysisData.Extra extra, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39619a = set.contains("hairColor") ? extra.d : null;
        this.f39620b = set.contains("hairColor") ? extra.f39595c : null;
    }

    public final Integer getColor() {
        return this.f39620b;
    }

    public final String getColorName() {
        return this.f39619a;
    }
}
