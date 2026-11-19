package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.guava.FluentFuture;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.BaseDownloadHandle;
import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.DownloadStateMonitor;
import com.perfectcorp.common.network.DownloadTask;
import com.perfectcorp.common.network.DownloadTaskHelper$FileDownloader;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.exceptions.FunStickerNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$g;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.DownloadPriority;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import defpackage.d21;
import defpackage.et;
import defpackage.md;
import defpackage.r81;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41446c;

    final class a extends b {
        public static final /* synthetic */ int J = 0;
        public final ArrayList A;
        public final ArrayList B;
        public volatile double C;
        public final boolean D;
        public final String E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final Consumer I;

        public a(C0166c c0166c) {
            String str;
            super(c0166c);
            ArrayList arrayList = new ArrayList();
            this.A = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.B = arrayList2;
            com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.d dVar = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.d();
            dVar.f41475a = this;
            this.I = dVar;
            arrayList.add(c0166c.f41463c.d);
            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = c0166c.f41463c;
            arrayList2.add(new d(bVar.d, bVar.f41232j));
            for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.a aVar : c0166c.f41463c.l) {
                this.A.add(aVar.f41235b);
                this.B.add(new d(aVar.f41235b, aVar.f41234a));
            }
            if (c0166c.f41462b) {
                this.D = true;
                str = c0166c.f41463c.d;
            } else {
                this.D = false;
                str = "";
            }
            this.E = str;
            this.F = c0166c.g;
            this.G = c0166c.f41466h;
            this.H = c0166c.f41467i;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.b, com.perfectcorp.common.network.DownloadHandle
        public final double c() {
            return this.C;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c.b
        public final void j(NetworkTaskManager networkTaskManager) {
            final int i2 = 0;
            Single list = Observable.fromIterable(Lists.b(30, this.A)).concatMapSingle(new c(this, i2)).flatMapIterable(Functions.f42605a).toList();
            e eVar = new e();
            eVar.f41478c = this;
            eVar.f41477b = networkTaskManager;
            list.getClass();
            final int i3 = 1;
            new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list, eVar).a(new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.m

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ c.a f41518b;

                {
                    this.f41518b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    c.a aVar = this.f41518b;
                    switch (i4) {
                        case 0:
                            int i5 = c.a.J;
                            aVar.f39300c.set((File) ((DownloadReport.CompleteReport) obj).f39309b);
                            break;
                        default:
                            int i6 = c.a.J;
                            aVar.f39300c.setException((Throwable) obj);
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.m

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ c.a f41518b;

                {
                    this.f41518b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    c.a aVar = this.f41518b;
                    switch (i4) {
                        case 0:
                            int i5 = c.a.J;
                            aVar.f39300c.set((File) ((DownloadReport.CompleteReport) obj).f39309b);
                            break;
                        default:
                            int i6 = c.a.J;
                            aVar.f39300c.setException((Throwable) obj);
                            break;
                    }
                }
            }));
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c$c, reason: collision with other inner class name */
    public final class C0166c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f41462b;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public File f41465f;
        public Set m;
        public boolean n;
        public boolean o;
        public File p;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DownloadTask.Key f41461a = DownloadKey.f39305a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.perfectcorp.perfectlib.ph.database.ymk.makeup.b f41463c = com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.r;
        public NetworkTaskManager.TaskPriority d = NetworkTaskManager.TaskPriority.NORMAL;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public DownloadStateMonitor f41464e = DownloadStateMonitors.f41988a;
        public boolean g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f41466h = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f41467i = true;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public DownloadCacheStrategy f41468j = DownloadCacheStrategy.CACHE_FIRST;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Configuration.ImageSource f41469k = Configuration.ImageSource.FILE;
        public DownloadTaskCancelable l = DownloadTaskCancelable.f40351e;

        public static C0166c a(com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar) {
            C0166c c0166c = new C0166c();
            Objects.requireNonNull(bVar, "metadata can't be null");
            c0166c.f41463c = bVar;
            c0166c.f41465f = new File(DownloadFolderHelper.c(bVar));
            return c0166c;
        }

        public final DownloadHandle b() {
            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar;
            b bVar2 = (this.p != null || this.n || (bVar = this.f41463c) == null || (MoreCollections.a(bVar.l) && TextUtils.isEmpty(this.f41463c.o) && !this.f41462b)) ? new b(this) : new a(this);
            bVar2.j(NetworkTaskManagerHolder.a());
            DownloadTaskCancelable downloadTaskCancelable = this.l;
            List listSingletonList = Collections.singletonList(bVar2);
            if (!downloadTaskCancelable.d) {
                Log.g(3, "DownloadTaskCancelable", "[addDownloadHandle] add " + listSingletonList.size() + " handles");
                synchronized (downloadTaskCancelable.f40353b) {
                    try {
                        if (!(downloadTaskCancelable.d ? false : downloadTaskCancelable.f40353b.f42595c)) {
                            downloadTaskCancelable.f40354c.addAll(listSingletonList);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Iterator it = listSingletonList.iterator();
                while (it.hasNext()) {
                    downloadTaskCancelable.f40353b.b(Disposables.b(new et((DownloadHandle) it.next(), 5)));
                }
            }
            return bVar2;
        }
    }

    final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f41471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f41472c = 0.0d;

        public d(String str, long j2) {
            this.f41470a = str;
            this.f41471b = j2;
        }
    }

    public /* synthetic */ c(Object obj, int i2) {
        this.f41445b = i2;
        this.f41446c = obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41445b;
        Object obj2 = this.f41446c;
        switch (i2) {
            case 0:
                a aVar = (a) obj2;
                List list = (List) obj;
                c$g c_g = aVar.D ? new c$g(list, true) : new c$g(list);
                c_g.f42049a = aVar.f41448f;
                return c_g.c();
            default:
                String str = (String) obj2;
                ExecutorService executorService = b.z;
                Log.e("DownloadMakeupHandle", "download sku failed, GUID=" + str, (Throwable) obj);
                return str;
        }
    }

    class b extends BaseDownloadHandle {
        public static final ExecutorService z = Executors.newSingleThreadExecutor(NamedThreadFactory.b("DownloadMakeupHandle"));

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final com.perfectcorp.perfectlib.ph.database.ymk.makeup.b f41447e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final NetworkTaskManager.TaskPriority f41448f;
        public final DownloadTask.Key g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final DownloadStateMonitor f41449h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final URI f41450i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f41451j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f41452k;
        public final boolean l;
        public final DownloadCacheStrategy m;
        public final Configuration.ImageSource n;
        public final DownloadTaskCancelable o;
        public final boolean p;
        public final Set q;
        public final File r;
        public final boolean s;
        public final boolean t;
        public final Object u;
        public boolean v;
        public volatile DownloadTask w;
        public volatile a x;
        public final C0165b y;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c$b$b, reason: collision with other inner class name */
        public final class C0165b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public volatile int f41456a = -1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public volatile int f41457b = -1;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public volatile int f41458c = -1;
            public final AtomicInteger d = new AtomicInteger();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final AtomicInteger f41459e = new AtomicInteger();

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final AtomicInteger f41460f = new AtomicInteger();

            public C0165b() {
            }

            public final double a() {
                double d;
                double d2;
                b bVar = b.this;
                double d3 = 0.0d;
                if (!bVar.s) {
                    if (bVar.w != null) {
                        return b.this.w.getProgress();
                    }
                    return 0.0d;
                }
                if (this.f41456a < 0) {
                    d = 0.0d;
                } else {
                    d = this.d.get() == this.f41456a ? 1.0d : ((double) this.d.get()) / ((double) this.f41456a);
                }
                double d4 = (d * 0.32000000000000006d) + 0.2d;
                if (this.f41457b < 0) {
                    d2 = 0.0d;
                } else {
                    d2 = this.f41459e.get() == this.f41457b ? 1.0d : ((double) this.f41459e.get()) / ((double) this.f41457b);
                }
                double d5 = (d2 * 0.24d) + d4;
                if (this.f41458c >= 0) {
                    d3 = this.f41460f.get() == this.f41458c ? 1.0d : ((double) this.f41460f.get()) / ((double) this.f41458c);
                }
                return (d3 * 0.24d) + d5;
            }

            public final String toString() {
                return "sku progress=" + this.d + "/" + this.f41456a + ", inner files progress=" + this.f41459e + "/" + this.f41457b;
            }
        }

        public b(C0166c c0166c) {
            super(c0166c.f41461a, c0166c.f41465f);
            this.u = new Object();
            this.y = new C0165b();
            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = c0166c.f41463c;
            this.f41447e = bVar;
            this.f41448f = c0166c.d;
            this.g = c0166c.f41461a;
            this.f41449h = c0166c.f41464e;
            if (bVar == null) {
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.r;
            } else if (bVar != com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.r) {
                this.f41450i = URI.create(bVar.f41230h);
                this.f41451j = c0166c.g;
                this.f41452k = c0166c.f41466h;
                this.l = c0166c.f41467i;
                this.m = c0166c.f41468j;
                this.n = c0166c.f41469k;
                this.o = c0166c.l;
                this.p = c0166c.f41462b;
                this.q = c0166c.m;
                this.r = c0166c.p;
                this.s = c0166c.n;
                this.t = c0166c.o;
                return;
            }
            md.n("Didn't provide metadata, or uri for download");
            throw null;
        }

        public static ListenableFuture e(b bVar, com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2) {
            Set set = bVar.q;
            if (set != null) {
                String str = bVar2.o;
                String str2 = bVar2.d;
                if (!TextUtils.isEmpty(str)) {
                    if (set.contains(str)) {
                        return Futures.g(bVar2);
                    }
                    Log.d("DownloadMakeupHandle", "preload look lack of fun sticker item id=" + str + " look guid=" + str2);
                    throw new FunStickerNotFoundException(d21.l("no fun sticker \"", str, "\" for look \"", str2, "\""));
                }
            }
            return Futures.g(bVar2);
        }

        public static FluentFuture f(String str, String str2, String str3, DownloadTaskCancelable downloadTaskCancelable) {
            new File(DownloadFolderHelper.b().concat("/tmp/")).mkdirs();
            downloadTaskCancelable.c();
            DownloadTaskHelper$FileDownloader downloadTaskHelper$FileDownloader = new DownloadTaskHelper$FileDownloader();
            URI uriCreate = URI.create(str);
            Objects.requireNonNull(uriCreate);
            downloadTaskHelper$FileDownloader.f39333a = uriCreate;
            downloadTaskHelper$FileDownloader.f39334b = new File(DownloadFolderHelper.b() + "/tmp/" + str2);
            downloadTaskHelper$FileDownloader.g = DownloadStateMonitors.f41988a;
            downloadTaskHelper$FileDownloader.d = DownloadPriority.a();
            DownloadHandle downloadHandleA = downloadTaskHelper$FileDownloader.a(NetworkTaskManagerHolder.a());
            SettableFuture settableFutureB = ((BaseDownloadHandle) downloadHandleA).b();
            h hVar = new h();
            hVar.f41487a = settableFutureB;
            hVar.f41488b = downloadHandleA;
            Futures.c(settableFutureB, hVar, CallingThread.ANY);
            return FluentFuture.a(settableFutureB).b(new u(str3, 4));
        }

        @Override // com.perfectcorp.common.network.DownloadHandle
        public double c() {
            return this.y.a();
        }

        @Override // com.perfectcorp.common.network.BaseDownloadHandle, com.perfectcorp.common.network.DownloadHandle
        public final boolean cancel() {
            synchronized (this.u) {
                try {
                    if (this.v) {
                        return false;
                    }
                    return super.cancel();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final b0 g(TemplateUtils.c cVar, Configuration.ImageSource imageSource) {
            SettableFuture settableFuture = new SettableFuture();
            Collection collectionA = Collections2.a(cVar.f41602a.v, new a0());
            C0165b c0165b = this.y;
            int size = collectionA.size();
            if (size >= 0) {
                c0165b.f41456a = size;
                return new b0(this, collectionA, imageSource, settableFuture, cVar);
            }
            c0165b.getClass();
            md.n("skuAmount can not be negative!");
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.Map] */
        /* JADX WARN: Type inference failed for: r2v9, types: [java.util.HashMap] */
        public final ListenableFuture h(final TemplateUtils.c cVar, com.perfectcorp.perfectlib.ph.database.ymk.makeup.c cVar2) {
            ?? map;
            if (cVar2 != null) {
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = this.f41447e;
                List<com.perfectcorp.perfectlib.ph.database.ymk.makeup.c.a.C0137a> list = cVar2.makeup.eye_contact;
                map = new HashMap();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Iterator<com.perfectcorp.perfectlib.ph.database.ymk.makeup.c.a.C0137a.b> it2 = ((com.perfectcorp.perfectlib.ph.database.ymk.makeup.c.a.C0137a) it.next()).patterns.iterator();
                    while (it2.hasNext()) {
                        for (com.perfectcorp.perfectlib.ph.template.idc.e eVar : it2.next().pattern) {
                            map.put(eVar.attr_guid, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.d(eVar, DownloadFolderHelper.c(bVar)));
                        }
                    }
                }
            } else {
                map = Collections.EMPTY_MAP;
            }
            if (cVar.f41602a.t.isEmpty() && cVar.f41602a.u.isEmpty() && TextUtils.isEmpty(this.f41447e.f41233k) && map.isEmpty()) {
                return Futures.g(new a(cVar, this.f39299b));
            }
            ArrayList arrayList = new ArrayList();
            HashMap map2 = new HashMap(cVar.f41602a.t);
            if (!this.s) {
                Iterator it3 = this.f41447e.l.iterator();
                while (it3.hasNext()) {
                    map2.remove(((com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.a) it3.next()).f41235b);
                }
            }
            for (TemplateUtils.a aVar : map2.values()) {
                String str = this.f41447e.d;
                SettableFuture settableFuture = new SettableFuture();
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVarC = j.c(Collections.singleton(aVar), str, this.f41448f, this.o);
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new r(settableFuture, 2), new r(settableFuture, 3));
                tVarC.a(consumerSingleObserver);
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                LookHandler lookHandler = LookHandler.getInstance();
                if (lookHandler == null) {
                    md.k("LookHandler is null. SDK might be released.");
                    return null;
                }
                lookHandler.f39664a.b(consumerSingleObserver);
                arrayList.add(settableFuture);
            }
            for (SkuDataForProtocol.DownloadComponent downloadComponent : cVar.f41602a.u.values()) {
                String str2 = this.f41447e.d;
                final SettableFuture settableFuture2 = new SettableFuture();
                Completable completableA = downloadComponent.a(str2, this.f41448f, this.o);
                CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new r(settableFuture2, 4), new Action() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.v
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                    public final void run() {
                        ExecutorService executorService = c.b.z;
                        settableFuture2.set(null);
                    }
                });
                completableA.a(callbackCompletableObserver);
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                LookHandler lookHandler2 = LookHandler.getInstance();
                if (lookHandler2 == null) {
                    md.k("LookHandler is null. SDK might be released.");
                    return null;
                }
                lookHandler2.f39664a.b(callbackCompletableObserver);
                arrayList.add(settableFuture2);
            }
            if (!TextUtils.isEmpty(this.f41447e.f41233k)) {
                for (com.perfectcorp.perfectlib.ph.database.ymk.look.d dVar : ImmutableList.u(cVar.f41602a.f41600j)) {
                    if (this.f41447e.d.equals(dVar.f41203a)) {
                        com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = this.f41447e;
                        arrayList.add(f(bVar2.f41233k, bVar2.d, dVar.f41206e, this.o));
                        break;
                    }
                }
                for (com.perfectcorp.perfectlib.ph.template.m mVar : ImmutableList.u(cVar.f41602a.d)) {
                    if (this.f41447e.d.equals(mVar.f41671a)) {
                        com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar3 = this.f41447e;
                        arrayList.add(f(bVar3.f41233k, bVar3.d, mVar.a(), this.o));
                        break;
                    }
                }
            }
            if (cVar2 != null) {
                ArrayList arrayList2 = new ArrayList();
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    concurrentHashMap.putAll((Map) entry.getValue());
                    Iterator it4 = ((Map) entry.getValue()).values().iterator();
                    while (it4.hasNext()) {
                        arrayList2.add(FluentFuture.a(((BaseDownloadHandle) com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.a((String) entry.getKey(), (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) it4.next(), this.f41448f).a(NetworkTaskManagerHolder.a())).b()).b(new d0(0)));
                    }
                }
                if (!arrayList2.isEmpty()) {
                    arrayList.addAll(arrayList2);
                    arrayList.add(FluentFuture.a(Futures.d(arrayList2)).b(new t(cVar2, cVar, concurrentHashMap, 1)));
                }
            }
            C0165b c0165b = this.y;
            int size = arrayList.size();
            if (size < 0) {
                c0165b.getClass();
                md.n("innerFilesAmount can not be negative!");
                return null;
            }
            c0165b.f41457b = size;
            g gVar = new g(this);
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                MoreFutures.a((ListenableFuture) it5.next(), gVar, CallingThread.MAIN);
            }
            return FluentFuture.a(Futures.d(arrayList)).b(new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.w
                @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
                public final Object apply(Object obj) {
                    ExecutorService executorService = c.b.z;
                    return new c.b.a(cVar, this.f41536b.f39299b);
                }
            });
        }

        public final void i() {
            final a aVar = this.x;
            final SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
            DBUtility.i(sQLiteDatabaseC, new Runnable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.z
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    c.b bVar = this;
                    com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = bVar.f41447e;
                    File file = bVar.f39299b;
                    ExecutorService executorService = c.b.z;
                    c.b.a aVar2 = aVar;
                    TemplateUtils.c cVar = aVar2.f41453a;
                    ArrayList arrayList = cVar.f41602a.f41600j;
                    boolean zA = MoreCollections.a(arrayList);
                    SQLiteDatabase sQLiteDatabase = sQLiteDatabaseC;
                    if (!zA) {
                        com.perfectcorp.perfectlib.ph.database.ymk.look.d dVar = (com.perfectcorp.perfectlib.ph.database.ymk.look.d) arrayList.get(0);
                        long jD = FileUtils.d(file);
                        IdUsageDao.b(sQLiteDatabase, new IdUsageDao.Row(dVar.f41203a, com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL.d.equals(dVar.m) ? IdUsageDao.Type.NAIL_LOOK : com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d.equals(dVar.m) ? IdUsageDao.Type.JEWELRY_LOOK : IdUsageDao.Type.MAKEUP_LOOK, file.getAbsolutePath(), jD));
                        com.perfectcorp.perfectlib.ph.database.ymk.look.d.a aVar3 = new com.perfectcorp.perfectlib.ph.database.ymk.look.d.a(dVar);
                        String str = bVar2.o;
                        if (str == null) {
                            str = "";
                        }
                        aVar3.l = str;
                        arrayList.set(0, new com.perfectcorp.perfectlib.ph.database.ymk.look.d(aVar3));
                    }
                    TemplateUtils.j(cVar);
                    if (!bVar.p) {
                        com.perfectcorp.perfectlib.ph.template.n nVar = new com.perfectcorp.perfectlib.ph.template.n(bVar2.d, Collections.EMPTY_LIST);
                        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                        String str2 = nVar.f41698a;
                        com.perfectcorp.perfectlib.ph.template.n nVarA = com.perfectcorp.perfectlib.ph.database.ymk.makeupitem.a.a(sQLiteDatabaseB, str2);
                        if (nVarA != null) {
                            nVar = new com.perfectcorp.perfectlib.ph.template.n(str2, com.perfectcorp.common.utility.Lists.a(nVarA.f41699b, nVar.f41699b));
                        }
                        com.perfectcorp.perfectlib.ph.database.ymk.makeupitem.a.b(YMKDatabase.c(), nVar);
                    } else if (!bVar2.l.isEmpty()) {
                        AbstractList<com.perfectcorp.perfectlib.ph.template.n> abstractListC = Lists.c(bVar2.l, new u(bVar, 2));
                        bz bzVar = ImmutableList.f42200c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        for (com.perfectcorp.perfectlib.ph.template.n nVar2 : abstractListC) {
                            com.perfectcorp.perfectlib.ph.template.n nVarA2 = com.perfectcorp.perfectlib.ph.database.ymk.makeupitem.a.a(YMKDatabase.b(), nVar2.f41698a);
                            if (nVarA2 != null) {
                                nVar2 = new com.perfectcorp.perfectlib.ph.template.n(nVar2.f41698a, com.perfectcorp.common.utility.Lists.a(nVarA2.f41699b, nVar2.f41699b));
                            }
                            builder.f(nVar2);
                        }
                        bz bzVarListIterator = builder.i().listIterator(0);
                        while (bzVarListIterator.hasNext()) {
                            com.perfectcorp.perfectlib.ph.database.ymk.makeupitem.a.b(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.template.n) bzVarListIterator.next());
                        }
                    }
                    for (TemplateUtils.a aVar4 : cVar.f41602a.t.values()) {
                        if (aVar4.f41590b == TemplateUtils.a.EnumC0180a.f41592a) {
                            com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.c(sQLiteDatabase, new com.perfectcorp.perfectlib.ph.template.a(aVar4.f41589a, bVar2.d, 0L));
                        }
                    }
                    if (!TextUtils.isEmpty(bVar2.o)) {
                        com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.c(sQLiteDatabase, new com.perfectcorp.perfectlib.ph.template.a(bVar2.o, bVar2.d, 0L));
                    }
                    DownloadImageDao.d.k(sQLiteDatabase, aVar2.f41454b);
                }
            });
            this.f41449h.getClass();
        }

        public void j(NetworkTaskManager networkTaskManager) {
            FluentFuture fluentFutureB;
            boolean z2 = this.s;
            final int i2 = 2;
            final int i3 = 1;
            final int i4 = 0;
            ExecutorService executorService = z;
            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = this.f41447e;
            if (z2 && this.p) {
                fluentFutureB = FluentFuture.a(Futures.i(FluentFuture.a(Futures.g(bVar)).c(new n(this, i4)).n, new f0(), executorService)).c(new n(this, i3)).c(new n(this, i2));
            } else {
                final boolean z3 = this.r != null;
                fluentFutureB = FluentFuture.a(Futures.i(FluentFuture.a(Futures.g(bVar)).c(new n(this, i4)).c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.g0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ c.b f41485b;

                    {
                        this.f41485b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                    public final ListenableFuture apply(Object obj) {
                        switch (i4) {
                            case 0:
                                final c.b bVar2 = this.f41485b;
                                if (z3) {
                                    File file = bVar2.r;
                                    Objects.requireNonNull(file, "zipFile can't be null");
                                    final FluentFuture fluentFutureA = FluentFuture.a(Futures.g(file));
                                    ExecutorService executorService2 = c.b.z;
                                    return fluentFutureA.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                        public final ListenableFuture apply(Object obj2) {
                                            ExecutorService executorService3 = c.b.z;
                                            StringBuilder sb = new StringBuilder();
                                            c.b bVar3 = bVar2;
                                            sb.append(bVar3.f39299b.getAbsolutePath());
                                            sb.append("_temp");
                                            FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                            f fVar = new f(bVar3, (File) obj2);
                                            CallingThread callingThread = CallingThread.ANY;
                                            ListenableFuture listenableFuture = fluentFutureB2.n;
                                            MoreFutures.a(listenableFuture, fVar, callingThread);
                                            return FluentFuture.a(listenableFuture);
                                        }
                                    });
                                }
                                URI uri = bVar2.f41450i;
                                File fileE = DownloadFolderHelper.e(bVar2.f41447e.d, uri);
                                if (fileE == null) {
                                    return Futures.f(new IOException("Create zip file failed"));
                                }
                                DownloadTask.Builder builder = new DownloadTask.Builder(uri, fileE);
                                NetworkTaskManager.TaskPriority taskPriority = bVar2.f41448f;
                                Objects.requireNonNull(taskPriority, "priority can't be null");
                                builder.d = taskPriority;
                                builder.f39320c = DownloadPriority.a();
                                DownloadTask.Key key = bVar2.g;
                                Objects.requireNonNull(key, "key can't be null");
                                builder.f39321e = key;
                                builder.f39322f = bVar2.f41449h;
                                bVar2.w = new DownloadTask(builder, (byte) 0);
                                bVar2.w.addProgressCallback(new ProgressCallback() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.y
                                    @Override // com.perfectcorp.common.network.ProgressCallback
                                    public final void a(double d) {
                                        ExecutorService executorService3 = c.b.z;
                                        bVar2.a(d);
                                    }
                                });
                                bVar2.o.c();
                                final FluentFuture fluentFutureA2 = FluentFuture.a(NetworkTaskManagerHolder.a().a(bVar2.w));
                                ExecutorService executorService3 = c.b.z;
                                return fluentFutureA2.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                    public final ListenableFuture apply(Object obj2) {
                                        ExecutorService executorService4 = c.b.z;
                                        StringBuilder sb = new StringBuilder();
                                        c.b bVar3 = bVar2;
                                        sb.append(bVar3.f39299b.getAbsolutePath());
                                        sb.append("_temp");
                                        FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA2, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                        f fVar = new f(bVar3, (File) obj2);
                                        CallingThread callingThread = CallingThread.ANY;
                                        ListenableFuture listenableFuture = fluentFutureB2.n;
                                        MoreFutures.a(listenableFuture, fVar, callingThread);
                                        return FluentFuture.a(listenableFuture);
                                    }
                                });
                            case 1:
                                c.b bVar3 = this.f41485b;
                                boolean z4 = z3;
                                TemplateUtils.c cVar = (TemplateUtils.c) obj;
                                ExecutorService executorService4 = c.b.z;
                                if (z4) {
                                    return Futures.g(cVar);
                                }
                                Objects.requireNonNull(cVar);
                                return (ListenableFuture) bVar3.g(cVar, bVar3.n).call();
                            default:
                                c.b bVar4 = this.f41485b;
                                boolean z5 = z3;
                                TemplateUtils.c cVar2 = (TemplateUtils.c) obj;
                                ExecutorService executorService5 = c.b.z;
                                if (z5) {
                                    return Futures.g(new c.b.a(cVar2, bVar4.f39299b));
                                }
                                Objects.requireNonNull(cVar2);
                                return bVar4.h(cVar2, null);
                        }
                    }
                }).n, new n(this, 3), executorService)).c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.g0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ c.b f41485b;

                    {
                        this.f41485b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                    public final ListenableFuture apply(Object obj) {
                        switch (i3) {
                            case 0:
                                final c.b bVar2 = this.f41485b;
                                if (z3) {
                                    File file = bVar2.r;
                                    Objects.requireNonNull(file, "zipFile can't be null");
                                    final FluentFuture fluentFutureA = FluentFuture.a(Futures.g(file));
                                    ExecutorService executorService2 = c.b.z;
                                    return fluentFutureA.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                        public final ListenableFuture apply(Object obj2) {
                                            ExecutorService executorService4 = c.b.z;
                                            StringBuilder sb = new StringBuilder();
                                            c.b bVar3 = bVar2;
                                            sb.append(bVar3.f39299b.getAbsolutePath());
                                            sb.append("_temp");
                                            FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                            f fVar = new f(bVar3, (File) obj2);
                                            CallingThread callingThread = CallingThread.ANY;
                                            ListenableFuture listenableFuture = fluentFutureB2.n;
                                            MoreFutures.a(listenableFuture, fVar, callingThread);
                                            return FluentFuture.a(listenableFuture);
                                        }
                                    });
                                }
                                URI uri = bVar2.f41450i;
                                File fileE = DownloadFolderHelper.e(bVar2.f41447e.d, uri);
                                if (fileE == null) {
                                    return Futures.f(new IOException("Create zip file failed"));
                                }
                                DownloadTask.Builder builder = new DownloadTask.Builder(uri, fileE);
                                NetworkTaskManager.TaskPriority taskPriority = bVar2.f41448f;
                                Objects.requireNonNull(taskPriority, "priority can't be null");
                                builder.d = taskPriority;
                                builder.f39320c = DownloadPriority.a();
                                DownloadTask.Key key = bVar2.g;
                                Objects.requireNonNull(key, "key can't be null");
                                builder.f39321e = key;
                                builder.f39322f = bVar2.f41449h;
                                bVar2.w = new DownloadTask(builder, (byte) 0);
                                bVar2.w.addProgressCallback(new ProgressCallback() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.y
                                    @Override // com.perfectcorp.common.network.ProgressCallback
                                    public final void a(double d) {
                                        ExecutorService executorService3 = c.b.z;
                                        bVar2.a(d);
                                    }
                                });
                                bVar2.o.c();
                                final FluentFuture fluentFutureA2 = FluentFuture.a(NetworkTaskManagerHolder.a().a(bVar2.w));
                                ExecutorService executorService3 = c.b.z;
                                return fluentFutureA2.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                    public final ListenableFuture apply(Object obj2) {
                                        ExecutorService executorService4 = c.b.z;
                                        StringBuilder sb = new StringBuilder();
                                        c.b bVar3 = bVar2;
                                        sb.append(bVar3.f39299b.getAbsolutePath());
                                        sb.append("_temp");
                                        FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA2, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                        f fVar = new f(bVar3, (File) obj2);
                                        CallingThread callingThread = CallingThread.ANY;
                                        ListenableFuture listenableFuture = fluentFutureB2.n;
                                        MoreFutures.a(listenableFuture, fVar, callingThread);
                                        return FluentFuture.a(listenableFuture);
                                    }
                                });
                            case 1:
                                c.b bVar3 = this.f41485b;
                                boolean z4 = z3;
                                TemplateUtils.c cVar = (TemplateUtils.c) obj;
                                ExecutorService executorService4 = c.b.z;
                                if (z4) {
                                    return Futures.g(cVar);
                                }
                                Objects.requireNonNull(cVar);
                                return (ListenableFuture) bVar3.g(cVar, bVar3.n).call();
                            default:
                                c.b bVar4 = this.f41485b;
                                boolean z5 = z3;
                                TemplateUtils.c cVar2 = (TemplateUtils.c) obj;
                                ExecutorService executorService5 = c.b.z;
                                if (z5) {
                                    return Futures.g(new c.b.a(cVar2, bVar4.f39299b));
                                }
                                Objects.requireNonNull(cVar2);
                                return bVar4.h(cVar2, null);
                        }
                    }
                }).c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.g0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ c.b f41485b;

                    {
                        this.f41485b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                    public final ListenableFuture apply(Object obj) {
                        switch (i2) {
                            case 0:
                                final c.b bVar2 = this.f41485b;
                                if (z3) {
                                    File file = bVar2.r;
                                    Objects.requireNonNull(file, "zipFile can't be null");
                                    final FluentFuture fluentFutureA = FluentFuture.a(Futures.g(file));
                                    ExecutorService executorService2 = c.b.z;
                                    return fluentFutureA.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                        public final ListenableFuture apply(Object obj2) {
                                            ExecutorService executorService4 = c.b.z;
                                            StringBuilder sb = new StringBuilder();
                                            c.b bVar3 = bVar2;
                                            sb.append(bVar3.f39299b.getAbsolutePath());
                                            sb.append("_temp");
                                            FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                            f fVar = new f(bVar3, (File) obj2);
                                            CallingThread callingThread = CallingThread.ANY;
                                            ListenableFuture listenableFuture = fluentFutureB2.n;
                                            MoreFutures.a(listenableFuture, fVar, callingThread);
                                            return FluentFuture.a(listenableFuture);
                                        }
                                    });
                                }
                                URI uri = bVar2.f41450i;
                                File fileE = DownloadFolderHelper.e(bVar2.f41447e.d, uri);
                                if (fileE == null) {
                                    return Futures.f(new IOException("Create zip file failed"));
                                }
                                DownloadTask.Builder builder = new DownloadTask.Builder(uri, fileE);
                                NetworkTaskManager.TaskPriority taskPriority = bVar2.f41448f;
                                Objects.requireNonNull(taskPriority, "priority can't be null");
                                builder.d = taskPriority;
                                builder.f39320c = DownloadPriority.a();
                                DownloadTask.Key key = bVar2.g;
                                Objects.requireNonNull(key, "key can't be null");
                                builder.f39321e = key;
                                builder.f39322f = bVar2.f41449h;
                                bVar2.w = new DownloadTask(builder, (byte) 0);
                                bVar2.w.addProgressCallback(new ProgressCallback() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.y
                                    @Override // com.perfectcorp.common.network.ProgressCallback
                                    public final void a(double d) {
                                        ExecutorService executorService3 = c.b.z;
                                        bVar2.a(d);
                                    }
                                });
                                bVar2.o.c();
                                final FluentFuture fluentFutureA2 = FluentFuture.a(NetworkTaskManagerHolder.a().a(bVar2.w));
                                ExecutorService executorService3 = c.b.z;
                                return fluentFutureA2.c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.e0
                                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                                    public final ListenableFuture apply(Object obj2) {
                                        ExecutorService executorService4 = c.b.z;
                                        StringBuilder sb = new StringBuilder();
                                        c.b bVar3 = bVar2;
                                        sb.append(bVar3.f39299b.getAbsolutePath());
                                        sb.append("_temp");
                                        FluentFuture fluentFutureB2 = FluentFuture.a(UnzipHelper.b(fluentFutureA2, new File(sb.toString()), FileDownloader.f42037a)).b(new u(bVar3, 3));
                                        f fVar = new f(bVar3, (File) obj2);
                                        CallingThread callingThread = CallingThread.ANY;
                                        ListenableFuture listenableFuture = fluentFutureB2.n;
                                        MoreFutures.a(listenableFuture, fVar, callingThread);
                                        return FluentFuture.a(listenableFuture);
                                    }
                                });
                            case 1:
                                c.b bVar3 = this.f41485b;
                                boolean z4 = z3;
                                TemplateUtils.c cVar = (TemplateUtils.c) obj;
                                ExecutorService executorService4 = c.b.z;
                                if (z4) {
                                    return Futures.g(cVar);
                                }
                                Objects.requireNonNull(cVar);
                                return (ListenableFuture) bVar3.g(cVar, bVar3.n).call();
                            default:
                                c.b bVar4 = this.f41485b;
                                boolean z5 = z3;
                                TemplateUtils.c cVar2 = (TemplateUtils.c) obj;
                                ExecutorService executorService5 = c.b.z;
                                if (z5) {
                                    return Futures.g(new c.b.a(cVar2, bVar4.f39299b));
                                }
                                Objects.requireNonNull(cVar2);
                                return bVar4.h(cVar2, null);
                        }
                    }
                }).b(new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.o
                    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
                    public final Object apply(Object obj) throws Throwable {
                        c.b.a aVar = (c.b.a) obj;
                        ExecutorService executorService2 = c.b.z;
                        if (z3) {
                            Objects.requireNonNull(aVar);
                            TemplateUtils.b bVar2 = aVar.f41453a.f41602a;
                            HashMap map = bVar2.t;
                            Completable completableIgnoreElements = Observable.concatArray(Observable.fromIterable(bVar2.d).map(new r81(11)), Observable.fromIterable(bVar2.p).map(new r81(12))).filter(new p()).doOnNext(new x(map, 0)).ignoreElements();
                            completableIgnoreElements.getClass();
                            com.perfectcorp.thirdparty.io.reactivex.internal.observers.d dVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.d();
                            completableIgnoreElements.a(dVar);
                            dVar.a();
                        }
                        return aVar;
                    }
                });
            }
            this.f39300c.setFuture(FluentFuture.a(Futures.a(FluentFuture.a(fluentFutureB.b(new u(this, i4))).n, new u(this, i3), com.perfectcorp.thirdparty.com.google.common.util.concurrent.w.a())));
        }

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final TemplateUtils.c f41453a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final List f41454b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final File f41455c;

            public a(TemplateUtils.c cVar, List list, File file) {
                this.f41453a = cVar;
                this.f41454b = list;
                this.f41455c = file;
            }

            public a(TemplateUtils.c cVar, File file) {
                this(cVar, Collections.EMPTY_LIST, file);
            }
        }
    }
}
