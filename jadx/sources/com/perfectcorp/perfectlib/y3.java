package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.SyncServerCallback f41931c;

    public /* synthetic */ y3(RecommendationHandler.SyncServerCallback syncServerCallback, int i2) {
        this.f41930b = i2;
        this.f41931c = syncServerCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f41930b;
        RecommendationHandler.SyncServerCallback syncServerCallback = this.f41931c;
        switch (i2) {
            case 0:
                ((ShadeFinderRecommendationHandler.AnonymousClass1) syncServerCallback).progress(1.0d);
                break;
            case 1:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.0d);
                break;
            case 2:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.1d);
                break;
            case 3:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(1.0d);
                break;
            case 4:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.2d);
                break;
            case 5:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.30000000000000004d);
                break;
            case 6:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.6000000000000001d);
                break;
            default:
                ((SkinCare3RecommendationHandler.AnonymousClass1) syncServerCallback).progress(0.4d);
                break;
        }
    }
}
