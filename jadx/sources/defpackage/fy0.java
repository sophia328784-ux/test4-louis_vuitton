package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fy0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f69231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.CheckNeedToUpdateWithGuidsCallback f69232c;

    public /* synthetic */ fy0(ConcurrentHashMap concurrentHashMap, SkuHandler.CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback, int i2) {
        this.f69230a = i2;
        this.f69231b = concurrentHashMap;
        this.f69232c = checkNeedToUpdateWithGuidsCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f69230a;
        SkuHandler.CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback = this.f69232c;
        ConcurrentHashMap concurrentHashMap = this.f69231b;
        switch (i2) {
            case 0:
                Log.g(3, "SkuHandler", "[checkNeedToUpdateWithSkuSetGuids] succeed. statusMap.size=" + concurrentHashMap.size());
                checkNeedToUpdateWithGuidsCallback.onSuccess(concurrentHashMap);
                break;
            default:
                Log.g(3, "SkuHandler", "[checkNeedToUpdateWithGuids] succeed. statusMap.size=" + concurrentHashMap.size());
                checkNeedToUpdateWithGuidsCallback.onSuccess(concurrentHashMap);
                break;
        }
    }
}
