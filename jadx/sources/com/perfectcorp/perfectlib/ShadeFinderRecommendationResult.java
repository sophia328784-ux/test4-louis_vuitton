package com.perfectcorp.perfectlib;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderRecommendationResult implements RecommendationResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f39877a;

    public ShadeFinderRecommendationResult(List list) {
        this.f39877a = list;
    }

    public final List<ShadeFinderProductSet> getProductSets() {
        return this.f39877a;
    }
}
