package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tx0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.SyncServerCallback f80166b;

    public /* synthetic */ tx0(SkuHandler.SyncServerCallback syncServerCallback, int i2) {
        this.f80165a = i2;
        this.f80166b = syncServerCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        switch (this.f80165a) {
            case 0:
                Log.g(3, "SkuHandler", "[syncServer] succeed");
                this.f80166b.onSuccess();
                break;
            case 1:
                Log.g(3, "SkuHandler", "[syncServerByEffect] end");
                this.f80166b.onSuccess();
                break;
            case 2:
                Log.g(3, "SkuHandler", "[syncSkuList] end");
                this.f80166b.onSuccess();
                break;
            default:
                Log.g(3, "SkuHandler", "[syncSkuListByEffect] end");
                this.f80166b.onSuccess();
                break;
        }
    }
}
