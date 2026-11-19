package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.camera.panel.a;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qx0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79184c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79186f;

    public /* synthetic */ qx0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f79183b = i2;
        this.f79184c = obj;
        this.d = obj2;
        this.f79185e = obj3;
        this.f79186f = obj4;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f79183b;
        int i3 = 3;
        int i4 = 1;
        Object obj = this.f79186f;
        Object obj2 = this.f79185e;
        Object obj3 = this.d;
        Object obj4 = this.f79184c;
        switch (i2) {
            case 0:
                Multimap multimap = (Multimap) obj3;
                Multimap multimap2 = (Multimap) obj2;
                ((AtomicInteger) obj4).set(multimap2.size() + multimap.size());
                PfCommons.c(new px0((ProgressCallback) obj, 3));
                return Observable.fromIterable(multimap.keySet()).flatMap(new vw0(multimap, i4)).mergeWith(Observable.fromIterable(multimap2.keySet()).flatMap(new vw0(multimap2, 2)));
            case 1:
                Multimap multimap3 = (Multimap) obj3;
                Multimap multimap4 = (Multimap) obj2;
                ((AtomicInteger) obj4).set(multimap4.size() + multimap3.size());
                PfCommons.c(new px0((ProgressCallback) obj, 7));
                return Observable.fromIterable(multimap3.keySet()).flatMap(new vw0(multimap3, i3)).mergeWith(Observable.fromIterable(multimap4.keySet()).flatMap(new vw0(multimap4, 4)));
            default:
                c.C0166c c0166cA = a.a((b) obj3);
                DownloadCacheStrategy downloadCacheStrategy = DownloadCacheStrategy.CACHE_FIRST;
                Objects.requireNonNull(downloadCacheStrategy);
                c0166cA.f41468j = downloadCacheStrategy;
                Configuration.ImageSource imageSource = ((LookHandler) obj4).f39665b;
                Objects.requireNonNull(imageSource);
                c0166cA.f41469k = imageSource;
                c0166cA.l = (DownloadTaskCancelable) obj2;
                NetworkTaskManager.TaskPriority taskPriority = NetworkTaskManager.TaskPriority.LOW;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                c0166cA.d = taskPriority;
                return ((BaseDownloadHandle) c0166cA.b()).d(new ma0((LookHandler.DownloadCallback) obj, 1), null).k();
        }
    }
}
