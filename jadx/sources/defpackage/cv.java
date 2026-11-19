package defpackage;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.network.DownloadTaskHelper$FileDownloader;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.DownloadPriority;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.io.File;
import java.net.URI;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cv implements Function, SynchronizationGuard.CriticalSection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68336c;
    public final /* synthetic */ Object d;

    public /* synthetic */ cv(Object obj, Object obj2, int i2) {
        this.f68336c = obj;
        this.d = obj2;
        this.f68335b = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.f68336c;
        NetworkTaskManager.TaskPriority taskPriority = (NetworkTaskManager.TaskPriority) this.d;
        DownloadImageHelper.DownloadComponent downloadComponent = (DownloadImageHelper.DownloadComponent) obj;
        AtomicInteger atomicInteger = DownloadImageHelper.f40320a;
        downloadTaskCancelable.c();
        DownloadTaskHelper$FileDownloader downloadTaskHelper$FileDownloader = new DownloadTaskHelper$FileDownloader();
        URI uriD = NetworkManager.d(downloadComponent.f40322b);
        Objects.requireNonNull(uriD);
        downloadTaskHelper$FileDownloader.f39333a = uriD;
        downloadTaskHelper$FileDownloader.g = DownloadStateMonitors.f41988a;
        Objects.requireNonNull(taskPriority, "priority can't be null");
        downloadTaskHelper$FileDownloader.f39336e = taskPriority;
        downloadTaskHelper$FileDownloader.d = DownloadPriority.a();
        downloadTaskHelper$FileDownloader.f39334b = new File(downloadComponent.a());
        DownloadHandle downloadHandleA = downloadTaskHelper$FileDownloader.a(NetworkTaskManagerHolder.a());
        downloadTaskCancelable.a(Collections.singletonList(Disposables.b(new et(downloadHandleA, 5))));
        Log.g(3, "DownloadImageHelper", "[#" + this.f68335b + "] #getDownloadImageObservable(); DownloadHandle#startDownload()");
        return ((BaseDownloadHandle) downloadHandleA).d(null, null);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        Uploader uploader = (Uploader) this.f68336c;
        uploader.d.a((TransportContext) this.d, this.f68335b + 1);
        return null;
    }
}
