package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e4 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkinCare3RecommendationHandler f40134b;

    public /* synthetic */ e4(SkinCare3RecommendationHandler skinCare3RecommendationHandler, int i2) {
        this.f40133a = i2;
        this.f40134b = skinCare3RecommendationHandler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f40133a;
        SkinCare3RecommendationHandler skinCare3RecommendationHandler = this.f40134b;
        switch (i2) {
            case 0:
                skinCare3RecommendationHandler.f39885a.set(null);
                break;
            case 1:
                skinCare3RecommendationHandler.f39885a.set(null);
                break;
            default:
                skinCare3RecommendationHandler.f39886b.set(false);
                break;
        }
    }
}
