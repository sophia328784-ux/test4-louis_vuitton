package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.y3;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xv0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecommendationHandler.SyncServerCallback f81215b;

    public /* synthetic */ xv0(RecommendationHandler.SyncServerCallback syncServerCallback, int i2) {
        this.f81214a = i2;
        this.f81215b = syncServerCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f81214a;
        RecommendationHandler.SyncServerCallback syncServerCallback = this.f81215b;
        switch (i2) {
            case 0:
                Throwable th = (Throwable) obj;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("ShadeFinderRecommendationHandler", "[syncServer] failed.", th);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th));
                } else {
                    Log.c("ShadeFinderRecommendationHandler", "[syncServer] canceled.", th);
                }
                break;
            case 1:
                Throwable th2 = (Throwable) obj;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("SkinCare3RecommendationHandler", "[syncServer] failed.", th2);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th2));
                } else {
                    Log.c("SkinCare3RecommendationHandler", "[syncServer] canceled.", th2);
                }
                break;
            default:
                PfCommons.c(new y3(syncServerCallback, 2));
                break;
        }
    }
}
