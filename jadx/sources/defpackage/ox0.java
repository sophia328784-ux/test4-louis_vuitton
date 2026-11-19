package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ox0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProgressCallback f78683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f78684c;

    public /* synthetic */ ox0(ProgressCallback progressCallback, ConcurrentHashMap concurrentHashMap, int i2) {
        this.f78682a = i2;
        this.f78683b = progressCallback;
        this.f78684c = concurrentHashMap;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f78682a;
        ConcurrentHashMap concurrentHashMap = this.f78684c;
        ProgressCallback progressCallback = this.f78683b;
        switch (i2) {
            case 0:
                PfCommons.c(new px0(progressCallback, 4));
                SkuHandlerPreferences.a(concurrentHashMap);
                Log.g(3, "SkuHandler", "[syncServerByProtocol] message digest saved. messageDigests=" + concurrentHashMap);
                break;
            default:
                PfCommons.c(new px0(progressCallback, 0));
                SkuHandlerPreferences.a(concurrentHashMap);
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] message digest saved. messageDigests=" + concurrentHashMap);
                break;
        }
    }
}
