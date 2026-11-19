package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ux0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.SyncServerCallback f80427b;

    public /* synthetic */ ux0(SkuHandler.SyncServerCallback syncServerCallback, int i2) {
        this.f80426a = i2;
        this.f80427b = syncServerCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f80426a;
        SkuHandler.SyncServerCallback syncServerCallback = this.f80427b;
        Throwable th = (Throwable) obj;
        switch (i2) {
            case 0:
                if (th instanceof SkipCallbackException) {
                    Log.c("SkuHandler", "[syncServer] canceled.", th);
                } else {
                    if (th instanceof CompositeException) {
                        for (Throwable th2 : ((CompositeException) th).f42596b) {
                            if (th2 instanceof SkipCallbackException) {
                                Log.c("SkuHandler", "[syncServer] canceled.", th2);
                                break;
                            }
                        }
                    }
                    Log.e("SkuHandler", "[syncServer] failed.", th);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th));
                }
                break;
            case 1:
                if (th instanceof SkipCallbackException) {
                    Log.c("SkuHandler", "[syncServerByEffect] canceled", th);
                } else {
                    Log.e("SkuHandler", "[syncServerByEffect] failed", th);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th));
                }
                break;
            case 2:
                if (th instanceof SkipCallbackException) {
                    Log.c("SkuHandler", "[syncSkuList] canceled", th);
                } else {
                    Log.e("SkuHandler", "[syncSkuList] failed", th);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th));
                }
                break;
            default:
                if (th instanceof SkipCallbackException) {
                    Log.c("SkuHandler", "[syncSkuListByEffect] canceled", th);
                } else {
                    Log.e("SkuHandler", "[syncSkuListByEffect] failed", th);
                    syncServerCallback.onFailure(InternalErrorRetriever.a(th));
                }
                break;
        }
    }
}
