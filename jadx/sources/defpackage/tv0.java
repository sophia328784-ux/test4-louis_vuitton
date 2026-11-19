package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.ShadeFinderRecommendationResult;
import com.perfectcorp.perfectlib.SkinCareRecommendationResult;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tv0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.GetRecommendedResultCallback f80158b;

    public /* synthetic */ tv0(RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback, int i2) {
        this.f80157a = i2;
        this.f80158b = getRecommendedResultCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f80157a) {
            case 0:
                Log.g(3, "ShadeFinderRecommendationHandler", "[getRecommendedResult] onSuccess");
                this.f80158b.onSuccess((ShadeFinderRecommendationResult) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                Log.e("ShadeFinderRecommendationHandler", "[getRecommendedResult] failed", th);
                this.f80158b.onFailure(th);
                break;
            case 2:
                Log.g(3, "SkinCare3RecommendationHandler", "[getRecommendedResult] success");
                this.f80158b.onSuccess((SkinCareRecommendationResult) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                Log.e("SkinCare3RecommendationHandler", "[getRecommendedResult] failed", th2);
                this.f80158b.onFailure(th2);
                break;
        }
    }
}
