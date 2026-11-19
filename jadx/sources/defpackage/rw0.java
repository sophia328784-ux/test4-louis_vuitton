package defpackage;

import android.content.SharedPreferences;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.y3;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rw0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f79633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79634c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rw0(Object obj, Object obj2, Object obj3, int i2) {
        this.f79632a = i2;
        this.f79633b = obj;
        this.f79634c = obj2;
        this.d = obj3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f79632a;
        Object obj = this.d;
        Object obj2 = this.f79634c;
        Object obj3 = this.f79633b;
        switch (i2) {
            case 0:
                SharedPreferences.Editor editor = (SharedPreferences.Editor) obj2;
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj;
                Action action = (Action) ((AtomicReference) obj3).get();
                if (action != null) {
                    action.run();
                }
                editor.commit();
                PfCommons.c(new y3(syncServerCallback, 3));
                break;
            default:
                ((SkuHandler.DownloadSkuSetsCallback) obj3).onComplete((ConcurrentHashMap) obj2, (ConcurrentHashMap) obj);
                break;
        }
    }
}
