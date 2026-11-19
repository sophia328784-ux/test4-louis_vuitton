package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jx0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler f71492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f71493c;

    public /* synthetic */ jx0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f71491a = i2;
        this.f71492b = skuHandler;
        this.f71493c = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f71491a;
        DownloadTaskCancelable downloadTaskCancelable = this.f71493c;
        SkuHandler skuHandler = this.f71492b;
        switch (i2) {
            case 0:
                AtomicReference atomicReference = skuHandler.f39936c;
                while (!atomicReference.compareAndSet(downloadTaskCancelable, null) && atomicReference.get() == downloadTaskCancelable) {
                }
                break;
            case 1:
                AtomicReference atomicReference2 = skuHandler.f39936c;
                while (!atomicReference2.compareAndSet(downloadTaskCancelable, null) && atomicReference2.get() == downloadTaskCancelable) {
                }
                break;
            case 2:
                AtomicReference atomicReference3 = skuHandler.f39936c;
                while (!atomicReference3.compareAndSet(downloadTaskCancelable, null) && atomicReference3.get() == downloadTaskCancelable) {
                }
                break;
            case 3:
                AtomicReference atomicReference4 = skuHandler.f39936c;
                while (!atomicReference4.compareAndSet(downloadTaskCancelable, null) && atomicReference4.get() == downloadTaskCancelable) {
                }
                break;
            case 4:
                Log.g(3, "SkuHandler", "[syncServerByEffectImpl] complete");
                AtomicReference atomicReference5 = skuHandler.f39936c;
                while (!atomicReference5.compareAndSet(downloadTaskCancelable, null) && atomicReference5.get() == downloadTaskCancelable) {
                }
                break;
            default:
                AtomicReference atomicReference6 = skuHandler.f39936c;
                while (!atomicReference6.compareAndSet(downloadTaskCancelable, null) && atomicReference6.get() == downloadTaskCancelable) {
                }
                break;
        }
    }
}
