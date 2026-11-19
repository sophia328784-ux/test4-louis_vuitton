package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.network.DownloadStateMonitor;
import com.perfectcorp.common.network.DownloadTask;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$r;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.DownloadPriority;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import com.perfectcorp.thirdparty.io.reactivex.subjects.PublishSubject;
import defpackage.a61;
import defpackage.f31;
import defpackage.h8;
import defpackage.t7;
import java.net.URI;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f41415c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.a$a, reason: collision with other inner class name */
    public class C0164a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DownloadTask.Key f41416a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41417b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public NetworkTaskManager.TaskPriority f41418c = NetworkTaskManager.TaskPriority.NORMAL;

        public C0164a(DownloadTask.Key key, String str) {
            Objects.requireNonNull(key);
            this.f41416a = key;
            Objects.requireNonNull(str);
            this.f41417b = str;
        }

        public final b a() {
            return new c(this);
        }
    }

    public interface b {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b a();
    }

    final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DownloadTask.Key f41419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NetworkTaskManager.TaskPriority f41420b;
        public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PublishSubject f41421c = new PublishSubject();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CompositeDisposable f41422e = new CompositeDisposable();

        public c(C0164a c0164a) {
            this.f41419a = c0164a.f41416a;
            this.f41420b = c0164a.f41418c;
            AtomicReference atomicReference = new AtomicReference();
            String str = c0164a.f41417b;
            if (str != null) {
                this.d = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b(new n(new m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a(this, str, 0)).i(Schedulers.f43170c), new t7(str, 21)).f(new h8(str, 8)), new h8(str, 9)), new j(this, atomicReference, c0164a)), new j(this, atomicReference)));
            } else {
                a61.h();
                throw null;
            }
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.a.b
        public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b a() {
            return this.d;
        }

        public final void b() {
            if (this.f41422e.f42595c) {
                throw new CancellationException();
            }
        }
    }

    public /* synthetic */ a(c cVar, Object obj, int i2) {
        this.f41414b = i2;
        this.f41415c = cVar;
        this.d = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41414b;
        Object obj = this.d;
        final c cVar = this.f41415c;
        switch (i2) {
            case 0:
                String str = (String) obj;
                defpackage.a.v(3, "[queryMetadata] start. guid=", str, "BackgroundDownloader");
                cVar.f41421c.onNext(Double.valueOf(0.0d));
                return new c$r(Collections.singletonList(str), "2.0").c();
            default:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b bVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b) obj;
                Log.g(3, "BackgroundDownloader", "[createDownloadSingle] start. guid=" + bVar.f41423a);
                URI uri = new URI(bVar.f41425c);
                DownloadTask.Builder builder = new DownloadTask.Builder(uri, DownloadFolderHelper.e(bVar.f41423a, uri));
                builder.f39320c = DownloadPriority.a();
                NetworkTaskManager.TaskPriority taskPriority = cVar.f41420b;
                Objects.requireNonNull(taskPriority, "priority can't be null");
                builder.d = taskPriority;
                DownloadTask.Key key = cVar.f41419a;
                Objects.requireNonNull(key, "key can't be null");
                builder.f39321e = key;
                builder.f39322f = DownloadStateMonitor.f39310a;
                DownloadTask downloadTask = new DownloadTask(builder, (byte) 0);
                downloadTask.addProgressCallback(new ProgressCallback() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.h
                    @Override // com.perfectcorp.common.network.ProgressCallback
                    public final void a(double d) {
                        cVar.f41421c.onNext(Double.valueOf((d * 0.8d) + 0.05d));
                    }
                });
                cVar.f41422e.b(Disposables.b(new f31(downloadTask, 11)));
                cVar.f41421c.onNext(Double.valueOf(0.05d));
                return Singles.a(NetworkTaskManagerHolder.a().a(downloadTask), CallingThread.ANY);
        }
    }
}
