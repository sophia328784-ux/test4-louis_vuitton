package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class SkinCareRecommendationData implements RecommendationData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f39900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SurveyAnswer f39901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39902c;

    public SkinCareRecommendationData(List<SkinAnalysisData> list, int i2, int i3, SurveyAnswer surveyAnswer) {
        Objects.requireNonNull(list, "skinAnalysisData can't be null");
        this.f39900a = ImmutableList.u(list);
        this.f39901b = surveyAnswer;
        this.f39902c = i2;
    }
}
