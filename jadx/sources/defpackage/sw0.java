package defpackage;

import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import java.io.File;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sw0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f79892c;
    public final /* synthetic */ String d;

    public /* synthetic */ sw0(DownloadTaskCancelable downloadTaskCancelable, String str, int i2) {
        this.f79891b = i2;
        this.f79892c = downloadTaskCancelable;
        this.d = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f79891b;
        DownloadTaskCancelable downloadTaskCancelable = this.f79892c;
        String str = this.d;
        switch (i2) {
            case 0:
                downloadTaskCancelable.c();
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadSurveyContent] start url=" + str);
                return new Factory.StringResponseBuilder(str, RequestTask.RequestMethod.GET).c();
            case 1:
                downloadTaskCancelable.c();
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadRecommendRule] start url=" + str);
                return new Factory.StringResponseBuilder(str, RequestTask.RequestMethod.GET).c();
            case 2:
                return (File) Uninterruptibles.a(DownloadImageHelper.a(Collections.singletonList(new DownloadImageHelper.DownloadComponent(str)), NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).map(new ct0(27)).toFuture());
            default:
                return (File) Uninterruptibles.a(DownloadImageHelper.a(Collections.singletonList(new DownloadImageHelper.DownloadComponent(str)), NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).map(new b21(2)).toFuture());
        }
    }

    public /* synthetic */ sw0(String str, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f79891b = i2;
        this.d = str;
        this.f79892c = downloadTaskCancelable;
    }
}
