package defpackage;

import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ua0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f80272c;

    public /* synthetic */ ua0(DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f80271b = i2;
        this.f80272c = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f80271b;
        DownloadTaskCancelable downloadTaskCancelable = this.f80272c;
        switch (i2) {
            case 0:
                List list = (List) obj;
                downloadTaskCancelable.c();
                return list;
            case 1:
                return new p(new ny0(downloadTaskCancelable, (SkuDataForProtocol.DownloadComponent) obj, 0)).j(FileDownloader.d);
            case 2:
                return new p(new ny0(downloadTaskCancelable, (SkuDataForProtocol.DownloadComponent) obj, 1)).j(FileDownloader.d);
            default:
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                return downloadComponent.a("", NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).j(downloadComponent.a());
        }
    }
}
