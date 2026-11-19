package defpackage;

import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.RecommendationType;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class dr0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.GetRecommendedResultCallback f68646c;
    public final /* synthetic */ RecommendationType d;

    public /* synthetic */ dr0(RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback, RecommendationType recommendationType, int i2) {
        this.f68645b = i2;
        this.f68646c = getRecommendedResultCallback;
        this.d = recommendationType;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68645b;
        RecommendationType recommendationType = this.d;
        RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback = this.f68646c;
        switch (i2) {
            case 0:
                getRecommendedResultCallback.onFailure(new IllegalArgumentException("Unsupported type=" + recommendationType));
                break;
            default:
                getRecommendedResultCallback.onFailure(new IllegalArgumentException("Unsupported type=" + recommendationType));
                break;
        }
    }
}
