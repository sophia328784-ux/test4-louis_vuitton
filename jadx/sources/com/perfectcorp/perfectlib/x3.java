package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x3 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ShadeFinderRecommendationHandler f41921b;

    public /* synthetic */ x3(ShadeFinderRecommendationHandler shadeFinderRecommendationHandler, int i2) {
        this.f41920a = i2;
        this.f41921b = shadeFinderRecommendationHandler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f41920a;
        ShadeFinderRecommendationHandler shadeFinderRecommendationHandler = this.f41921b;
        switch (i2) {
            case 0:
                shadeFinderRecommendationHandler.f39869a.set(null);
                break;
            default:
                shadeFinderRecommendationHandler.f39870b.set(false);
                break;
        }
    }
}
