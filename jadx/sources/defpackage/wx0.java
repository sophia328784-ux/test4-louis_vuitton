package defpackage;

import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class wx0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuHandler f80966c;
    public final /* synthetic */ DownloadTaskCancelable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f80967e;

    public /* synthetic */ wx0(SkuHandler skuHandler, DownloadTaskCancelable downloadTaskCancelable, List list, int i2) {
        this.f80965b = i2;
        this.f80966c = skuHandler;
        this.d = downloadTaskCancelable;
        this.f80967e = list;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f80965b;
        List list = this.f80967e;
        DownloadTaskCancelable downloadTaskCancelable = this.d;
        SkuHandler skuHandler = this.f80966c;
        switch (i2) {
            case 0:
                downloadTaskCancelable.c();
                break;
            default:
                downloadTaskCancelable.c();
                break;
        }
        return SkuDataForProtocol.i(list, skuHandler.f39935b, null, null);
    }
}
