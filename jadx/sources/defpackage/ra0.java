package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ra0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79299a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LookHandler.DownloadLooksCallback f79300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f79301c;
    public final /* synthetic */ ConcurrentHashMap d;

    public /* synthetic */ ra0(LookHandler.DownloadLooksCallback downloadLooksCallback, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2) {
        this.f79300b = downloadLooksCallback;
        this.f79301c = concurrentHashMap;
        this.d = concurrentHashMap2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f79299a;
        ConcurrentHashMap concurrentHashMap = this.d;
        ConcurrentHashMap concurrentHashMap2 = this.f79301c;
        LookHandler.DownloadLooksCallback downloadLooksCallback = this.f79300b;
        switch (i2) {
            case 0:
                Log.g(3, "LookHandler", "[downloadLooks] success, lookInfos.size=" + concurrentHashMap2.size());
                downloadLooksCallback.onComplete(concurrentHashMap2, concurrentHashMap);
                break;
            default:
                Throwable th = (Throwable) obj;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("LookHandler", "[downloadLooks] shouldn't failed!!!", th);
                    downloadLooksCallback.onComplete(concurrentHashMap2, concurrentHashMap);
                } else {
                    Log.c("LookHandler", "[downloadLooks] canceled.", th);
                }
                break;
        }
    }

    public /* synthetic */ ra0(ConcurrentHashMap concurrentHashMap, LookHandler.DownloadLooksCallback downloadLooksCallback, ConcurrentHashMap concurrentHashMap2) {
        this.f79301c = concurrentHashMap;
        this.f79300b = downloadLooksCallback;
        this.d = concurrentHashMap2;
    }
}
