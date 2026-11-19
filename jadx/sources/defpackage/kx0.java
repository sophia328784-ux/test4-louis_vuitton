package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class kx0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f75891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler f75892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f75893c;

    public /* synthetic */ kx0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f75891a = i2;
        this.f75892b = skuHandler;
        this.f75893c = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f75891a;
        DownloadTaskCancelable downloadTaskCancelable = this.f75893c;
        SkuHandler skuHandler = this.f75892b;
        Throwable th = (Throwable) obj;
        switch (i2) {
            case 0:
                AtomicReference atomicReference = skuHandler.f39936c;
                while (!atomicReference.compareAndSet(downloadTaskCancelable, null) && atomicReference.get() == downloadTaskCancelable) {
                }
                break;
            default:
                Log.e("SkuHandler", "[syncServerByEffectImpl] failed", th);
                AtomicReference atomicReference2 = skuHandler.f39936c;
                while (!atomicReference2.compareAndSet(downloadTaskCancelable, null) && atomicReference2.get() == downloadTaskCancelable) {
                }
                break;
        }
    }
}
