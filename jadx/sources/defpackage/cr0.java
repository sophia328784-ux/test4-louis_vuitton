package defpackage;

import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.RecommendationType;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cr0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.GetRecommendedResultCallback f68315c;

    public /* synthetic */ cr0(RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback, int i2) {
        this.f68314b = i2;
        this.f68315c = getRecommendedResultCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68314b;
        RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback = this.f68315c;
        switch (i2) {
            case 0:
                getRecommendedResultCallback.onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                break;
            case 1:
                getRecommendedResultCallback.onFailure(new UnsupportedOperationException("Doesn't have a valid license."));
                break;
            case 2:
                getRecommendedResultCallback.onFailure(new IllegalArgumentException("Recommendation type " + RecommendationType.SHADE_FINDER + " needs a ShadeFinderRecommendationData."));
                break;
            case 3:
                getRecommendedResultCallback.onFailure(new IllegalArgumentException("Recommendation type " + RecommendationType.SKIN_CARE + " needs a SkinCareRecommendationData."));
                break;
            default:
                getRecommendedResultCallback.onFailure(new IllegalStateException("clearAll() is running"));
                break;
        }
    }
}
