package com.perfectcorp.perfectlib;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z3 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((ShadeFinderRecommendationHandler.SkuData) obj).order - ((ShadeFinderRecommendationHandler.SkuData) obj2).order;
    }
}
