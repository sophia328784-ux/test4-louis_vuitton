package com.perfectcorp.perfectlib;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderRecommendationData implements RecommendationData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShadeFinderData f39867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShadeFinderDeltaE f39868b;

    public ShadeFinderRecommendationData(ShadeFinderData shadeFinderData, ShadeFinderDeltaE shadeFinderDeltaE) {
        Objects.requireNonNull(shadeFinderData, "shadeFinderData can't be null");
        this.f39867a = shadeFinderData;
        Objects.requireNonNull(shadeFinderDeltaE, "shadeFinderDeltaE can't be null");
        this.f39868b = shadeFinderDeltaE;
    }
}
