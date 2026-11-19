package com.perfectcorp.perfectlib;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SkinCareRecommendationResult implements RecommendationResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f39903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39904b;

    public SkinCareRecommendationResult(String str, ArrayList arrayList) {
        this.f39903a = arrayList;
        this.f39904b = str;
    }

    public final String getExtraInfo() {
        return this.f39904b;
    }

    public final List<SkinCareProduct> getProducts() {
        return this.f39903a;
    }
}
