package defpackage;

import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cx0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f68353c;
    public final /* synthetic */ NetworkTaskManager.TaskPriority d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f68354e;

    public /* synthetic */ cx0(h hVar, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f68352b = i2;
        this.f68353c = hVar;
        this.d = taskPriority;
        this.f68354e = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f68352b;
        DownloadTaskCancelable downloadTaskCancelable = this.f68354e;
        NetworkTaskManager.TaskPriority taskPriority = this.d;
        h hVar = this.f68353c;
        switch (i2) {
            case 0:
                return Observable.fromIterable(((SkuDataForProtocol) obj).f39919j).flatMapSingle(new cx0(hVar, taskPriority, downloadTaskCancelable, 1)).toList();
            default:
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                return downloadComponent.a(hVar.skuGUID, taskPriority, downloadTaskCancelable).j(downloadComponent.a());
        }
    }
}
