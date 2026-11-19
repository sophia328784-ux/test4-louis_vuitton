package defpackage;

import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ny0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f76641c;
    public final /* synthetic */ SkuDataForProtocol.DownloadComponent d;

    public /* synthetic */ ny0(DownloadTaskCancelable downloadTaskCancelable, SkuDataForProtocol.DownloadComponent downloadComponent, int i2) {
        this.f76640b = i2;
        this.f76641c = downloadTaskCancelable;
        this.d = downloadComponent;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f76640b;
        final SkuDataForProtocol.DownloadComponent downloadComponent = this.d;
        DownloadTaskCancelable downloadTaskCancelable = this.f76641c;
        switch (i2) {
            case 0:
                downloadTaskCancelable.c();
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Start download component=" + downloadComponent.a());
                final int i3 = 0;
                return (String) MoreFutures.b(new w(downloadComponent.a("", NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).e(new Action() { // from class: ry0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                    public final void run() {
                        int i4 = i3;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        switch (i4) {
                            case 0:
                                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            case 1:
                                Log.g(3, "SkuHandler", "[syncServerByProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            default:
                                Log.g(3, "SkuHandler", "Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                        }
                    }
                }).g(new Consumer() { // from class: sy0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i4 = i3;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        Throwable th = (Throwable) obj;
                        switch (i4) {
                            case 0:
                                Log.e("SkuHandler", "[getListBySyncServerProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            case 1:
                                Log.e("SkuHandler", "[syncServerByProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            default:
                                Log.e("SkuHandler", "Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                        }
                    }
                }).j(downloadComponent.a()), new Function() { // from class: ty0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        Throwable th = (Throwable) obj;
                        switch (i3) {
                            case 0:
                                break;
                        }
                        return Single.g(th);
                    }
                }).k());
            case 1:
                downloadTaskCancelable.c();
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Start download component=" + downloadComponent.a());
                final int i4 = 1;
                return (String) MoreFutures.b(new w(downloadComponent.a("", NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).e(new Action() { // from class: ry0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                    public final void run() {
                        int i5 = i4;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        switch (i5) {
                            case 0:
                                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            case 1:
                                Log.g(3, "SkuHandler", "[syncServerByProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            default:
                                Log.g(3, "SkuHandler", "Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                        }
                    }
                }).g(new Consumer() { // from class: sy0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i5 = i4;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        Throwable th = (Throwable) obj;
                        switch (i5) {
                            case 0:
                                Log.e("SkuHandler", "[getListBySyncServerProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            case 1:
                                Log.e("SkuHandler", "[syncServerByProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            default:
                                Log.e("SkuHandler", "Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                        }
                    }
                }).j(downloadComponent.a()), new Function() { // from class: ty0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        Throwable th = (Throwable) obj;
                        switch (i4) {
                            case 0:
                                break;
                        }
                        return Single.g(th);
                    }
                }).k());
            default:
                downloadTaskCancelable.c();
                Log.g(3, "SkuHandler", "Start download component=" + downloadComponent.a());
                final int i5 = 2;
                return (String) MoreFutures.b(downloadComponent.a("", NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable).e(new Action() { // from class: ry0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                    public final void run() {
                        int i6 = i5;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        switch (i6) {
                            case 0:
                                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            case 1:
                                Log.g(3, "SkuHandler", "[syncServerByProtocol] Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                            default:
                                Log.g(3, "SkuHandler", "Download success " + downloadComponent2.b() + " component=" + downloadComponent2.a());
                                break;
                        }
                    }
                }).g(new Consumer() { // from class: sy0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i6 = i5;
                        SkuDataForProtocol.DownloadComponent downloadComponent2 = downloadComponent;
                        Throwable th = (Throwable) obj;
                        switch (i6) {
                            case 0:
                                Log.e("SkuHandler", "[getListBySyncServerProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            case 1:
                                Log.e("SkuHandler", "[syncServerByProtocol] Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                            default:
                                Log.e("SkuHandler", "Download failed " + downloadComponent2.b() + " component=" + downloadComponent2.a(), th);
                                break;
                        }
                    }
                }).j(downloadComponent.a()).k());
        }
    }
}
