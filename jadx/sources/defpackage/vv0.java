package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.y3;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vv0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.SyncServerCallback f80668b;

    public /* synthetic */ vv0(RecommendationHandler.SyncServerCallback syncServerCallback, int i2) {
        this.f80667a = i2;
        this.f80668b = syncServerCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f80667a;
        RecommendationHandler.SyncServerCallback syncServerCallback = this.f80668b;
        switch (i2) {
            case 0:
                PfCommons.c(new y3(syncServerCallback, 0));
                Log.g(3, "ShadeFinderRecommendationHandler", "[syncServerInternal] succeeded");
                break;
            case 1:
                Log.g(3, "ShadeFinderRecommendationHandler", "[syncServer] succeed");
                syncServerCallback.onSuccess();
                break;
            default:
                Log.g(3, "SkinCare3RecommendationHandler", "[syncServer] succeed");
                syncServerCallback.onSuccess();
                break;
        }
    }
}
