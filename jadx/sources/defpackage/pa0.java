package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.camera.panel.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pa0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78804b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LookHandler f78805c;
    public final /* synthetic */ DownloadTaskCancelable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f78806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LookHandler.DownloadLooksCallback f78807f;
    public final /* synthetic */ AtomicInteger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f78808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f78809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Serializable f78810j;

    public /* synthetic */ pa0(LookHandler lookHandler, LookHandler.DownloadLooksCallback downloadLooksCallback, int i2, List list, ConcurrentHashMap concurrentHashMap, AtomicInteger atomicInteger, DownloadTaskCancelable downloadTaskCancelable, ConcurrentHashMap concurrentHashMap2) {
        this.f78805c = lookHandler;
        this.f78807f = downloadLooksCallback;
        this.f78808h = i2;
        this.f78809i = list;
        this.f78806e = concurrentHashMap;
        this.g = atomicInteger;
        this.d = downloadTaskCancelable;
        this.f78810j = concurrentHashMap2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f78804b;
        Serializable serializable = this.f78810j;
        DownloadTaskCancelable downloadTaskCancelable = this.d;
        Object obj = this.f78809i;
        LookHandler lookHandler = this.f78805c;
        switch (i2) {
            case 0:
                ConcurrentHashMap concurrentHashMap = this.f78806e;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) serializable;
                LookHandler.DownloadLooksCallback downloadLooksCallback = this.f78807f;
                int i3 = this.f78808h;
                PfCommons.c(new t6(downloadLooksCallback, i3, 5));
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) obj).iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    AtomicInteger atomicInteger = this.g;
                    if (!zHasNext) {
                        if (arrayList.isEmpty()) {
                            return Observable.empty();
                        }
                        downloadTaskCancelable.c();
                        return new o(new v(LookHandler.a(arrayList).j(Schedulers.f43170c), new ta0(arrayList, concurrentHashMap2, downloadLooksCallback, atomicInteger, i3, 0), null), new ua0(downloadTaskCancelable, 0));
                    }
                    String str = (String) it.next();
                    try {
                        Optional optionalF = lookHandler.f(str);
                        if (optionalF.d()) {
                            concurrentHashMap.put(str, (LookInfo) optionalF.c());
                            LookHandler.b(downloadLooksCallback, atomicInteger, i3);
                        } else {
                            arrayList.add(str);
                        }
                    } catch (Throwable th) {
                        Log.e("LookHandler", "Query local look failed. guid=" + str, th);
                    }
                }
                break;
            default:
                b bVar = (b) obj;
                String str2 = (String) serializable;
                c.C0166c c0166cA = a.a(bVar);
                DownloadCacheStrategy downloadCacheStrategy = DownloadCacheStrategy.CACHE_FIRST;
                Objects.requireNonNull(downloadCacheStrategy);
                c0166cA.f41468j = downloadCacheStrategy;
                Configuration.ImageSource imageSource = lookHandler.f39665b;
                Objects.requireNonNull(imageSource);
                c0166cA.f41469k = imageSource;
                c0166cA.l = downloadTaskCancelable;
                NetworkTaskManager.TaskPriority taskPriority = NetworkTaskManager.TaskPriority.LOW;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                c0166cA.d = taskPriority;
                Single singleD = ((BaseDownloadHandle) c0166cA.b()).d(null, null);
                b8 b8Var = new b8(bVar, 2);
                singleD.getClass();
                return new v(new t(singleD, b8Var), new ta0(str2, this.f78806e, this.f78807f, this.g, this.f78808h, 1), null).k();
        }
    }

    public /* synthetic */ pa0(LookHandler lookHandler, b bVar, DownloadTaskCancelable downloadTaskCancelable, String str, ConcurrentHashMap concurrentHashMap, LookHandler.DownloadLooksCallback downloadLooksCallback, AtomicInteger atomicInteger, int i2) {
        this.f78805c = lookHandler;
        this.f78809i = bVar;
        this.d = downloadTaskCancelable;
        this.f78810j = str;
        this.f78806e = concurrentHashMap;
        this.f78807f = downloadLooksCallback;
        this.g = atomicInteger;
        this.f78808h = i2;
    }
}
