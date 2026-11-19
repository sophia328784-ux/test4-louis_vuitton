package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.appsflyer.sdk_base.referrer.Payload;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$b;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ArrayListMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimaps;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.a;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a8;
import defpackage.az0;
import defpackage.bz0;
import defpackage.c8;
import defpackage.d20;
import defpackage.e5;
import defpackage.et;
import defpackage.ez0;
import defpackage.f8;
import defpackage.fc;
import defpackage.fy0;
import defpackage.g8;
import defpackage.hn0;
import defpackage.ho0;
import defpackage.ix0;
import defpackage.iy0;
import defpackage.jx0;
import defpackage.kx0;
import defpackage.ky0;
import defpackage.m7;
import defpackage.n7;
import defpackage.na0;
import defpackage.o7;
import defpackage.ox0;
import defpackage.p7;
import defpackage.pv0;
import defpackage.rw0;
import defpackage.rx0;
import defpackage.s40;
import defpackage.sa0;
import defpackage.t7;
import defpackage.ta0;
import defpackage.tw0;
import defpackage.tx0;
import defpackage.ux0;
import defpackage.va0;
import defpackage.wm;
import defpackage.xw;
import defpackage.y81;
import defpackage.yw0;
import defpackage.zy0;
import java.io.File;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class SkuHandler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f39933f = new Object();
    public static volatile SkuHandler g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration.ImageSource f39935b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositeDisposable f39934a = new CompositeDisposable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f39936c = new AtomicReference();
    public final Map d = Collections.synchronizedMap(new EnumMap(PerfectEffect.class));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Disposable f39937e = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkuHandler$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f39939b;

        static {
            int[] iArr = new int[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.values().length];
            f39939b = iArr;
            try {
                iArr[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39939b[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.NOT_SUPPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PerfectEffect.values().length];
            f39938a = iArr2;
            try {
                iArr2[PerfectEffect.EARRINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39938a[PerfectEffect.NECKLACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39938a[PerfectEffect.RING.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39938a[PerfectEffect.BRACELET.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f39938a[PerfectEffect.WATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public interface CheckNeedToUpdateCallback {
        void onFailure(Throwable th);

        void onSuccess(boolean z);
    }

    public interface CheckNeedToUpdateWithGuidsCallback {
        void onFailure(Throwable th);

        void onSuccess(Map<String, MakeupItemStatus> map);
    }

    @FunctionalInterface
    public interface ClearCallback {
        void onCleared();
    }

    public interface DeleteProductsCallback {
        void onComplete();
    }

    public interface DeleteSkuSetsCallback {
        void onComplete();
    }

    public interface DownloadProductsCallback {
        void onComplete(Map<String, ProductInfo> map, Map<String, Throwable> map2);

        void progress(double d);
    }

    public interface DownloadSkuSetsCallback {
        void onComplete(Map<String, List<SkuSetInfo>> map, Map<String, Throwable> map2);

        void progress(double d);
    }

    public interface GetListCallback {
        void onFailure(Throwable th);

        void onSuccess(List<ProductInfo> list);
    }

    public interface GetProductInfosWithGuidsCallback {
        void onComplete(List<ProductInfo> list);
    }

    public interface GetSkuInfosWithGuidsCallback {
        void onComplete(List<SkuInfo> list);
    }

    public interface GetSkuSetInfosWithGuidsCallback {
        void onComplete(List<SkuSetInfo> list);
    }

    public interface GetSkuSetListCallback {
        void onFailure(Throwable th);

        void onSuccess(List<SkuSetInfo> list);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ListStatus {
        public static final ListStatus MAPPING_INCOMPLETE;
        public static final ListStatus OK;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ListStatus[] f39940a;

        static {
            ListStatus listStatus = new ListStatus(Payload.RESPONSE_OK, 0);
            OK = listStatus;
            ListStatus listStatus2 = new ListStatus("MAPPING_INCOMPLETE", 1);
            MAPPING_INCOMPLETE = listStatus2;
            f39940a = new ListStatus[]{listStatus, listStatus2};
        }

        public static ListStatus valueOf(String str) {
            return (ListStatus) Enum.valueOf(ListStatus.class, str);
        }

        public static ListStatus[] values() {
            return (ListStatus[]) f39940a.clone();
        }
    }

    public interface SyncServerCallback {
        void onFailure(Throwable th);

        void onSuccess();

        void progress(double d);
    }

    public interface UpdateMappingFromServerCallback {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public SkuHandler(Configuration.ImageSource imageSource) {
        this.f39935b = imageSource;
    }

    public static Completable clearAllCompletable() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(CacheCleaner.e(IdUsageDao.Type.SKU), new yw0(28)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new e5(8)));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.j d(Collection collection) {
        int i2 = 14;
        return Observable.fromIterable(collection).subscribeOn(Schedulers.f43170c).flatMapSingle(new yw0(i2)).contains(Boolean.TRUE).f(new pv0(i2));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t e() {
        String string = SkuBeautyMode$FeatureType.BACKGROUND.toString();
        BasicPreferences basicPreferences = SkuHandlerPreferences.f40330a;
        Objects.requireNonNull(string);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new c$b(string, "44.0", SkuHandlerPreferences.f40330a.getString("KEY_LIST_MESSAGE_DIGEST_".concat(string), "")).c(), new t7(string, 17));
    }

    public static List f(ProductInfo productInfo, boolean z) {
        String str;
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        AbstractSet abstractSetM = m(productInfo.f39799e);
        SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
        String str2 = productInfo.f39799e;
        for (com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar : SkuItemDao.b(sQLiteDatabaseC, str2)) {
            String str3 = eVar.f41292a;
            if (z) {
                try {
                    str = ((IdRow) new o7(str2, str3, 7).call()).f41150e;
                    if (!str.equals(EffectId.INVALID_ID)) {
                    }
                } catch (Throwable th) {
                    Log.e("SkuHandler", "[createSkuInfos] query product mapping failed.", th);
                }
            } else {
                str = str3;
            }
            if (abstractSetM.contains(str3)) {
                builder.f(SkuInfo.a(productInfo, str, eVar));
            } else {
                defpackage.a.v(3, "[createSkuInfos] Filter out SKU by product mask. skuGuid=", str3, "SkuHandler");
            }
        }
        return builder.i();
    }

    public static SkuHandler getInstance() {
        SkuHandler skuHandler;
        synchronized (f39933f) {
            skuHandler = g;
        }
        return skuHandler;
    }

    public static void h(DownloadTaskCancelable downloadTaskCancelable) {
        SkuHandler skuHandler = getInstance();
        if (skuHandler != null) {
            Log.g(3, "SkuHandler", "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable + "\" to taskDisposables");
            skuHandler.f39934a.b(Disposables.b(new et(downloadTaskCancelable, 17)));
            return;
        }
        Log.g(3, "SkuHandler", "[cancelOnReleased] cancelable \"" + downloadTaskCancelable + "\" cancel directly");
        downloadTaskCancelable.cancel();
    }

    public static Observable i(List list, boolean z) {
        return z ? new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new sa0(list, 2)).j(Schedulers.f43170c).l().flatMap(new c8(list, 10)) : Observable.fromIterable(list).map(new zy0(9));
    }

    public static void init(Configuration.ImageSource imageSource) {
        Log.g(3, "SkuHandler", "[init] start");
        if (g == null) {
            synchronized (f39933f) {
                try {
                    if (g == null) {
                        g = new SkuHandler(imageSource);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Log.g(3, "SkuHandler", "[init] end");
    }

    public static AbstractSet m(String str) {
        List listE = com.perfectcorp.perfectlib.ph.database.ymk.sku.d.d.e(YMKDatabase.b(), "productGuid", str);
        return (!listE.isEmpty() ? Optional.e((com.perfectcorp.perfectlib.ph.database.ymk.sku.c) listE.get(0)) : Optional.a()).d() ? new HashSet(com.perfectcorp.perfectlib.ph.database.ymk.sku.b.d.h(YMKDatabase.b(), "skuGuid", "productGuid", str)) : (AbstractSet) MoreCollections.f39434a;
    }

    public static void release() {
        Log.g(3, "SkuHandler", "[release] start");
        if (g != null) {
            synchronized (f39933f) {
                try {
                    if (g != null) {
                        g.f39934a.dispose();
                        g = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Log.g(3, "SkuHandler", "[release] end");
    }

    public final Observable a(List list, boolean z) {
        return i(list, z).subscribeOn(Schedulers.f43170c).map(new p7(this, z, 2)).onErrorReturn(new zy0(7)).filter(new d20(7)).map(new zy0(8));
    }

    public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n b(final List list, final DownloadTaskCancelable downloadTaskCancelable, final ProgressCallback progressCallback) {
        int i2 = 3;
        Log.g(3, "SkuHandler", "[syncServerInternal] start. skuTypes=" + list);
        Log.g(3, "SkuHandler", "[syncServerByProtocol] start");
        final AtomicInteger atomicInteger = new AtomicInteger();
        final AtomicInteger atomicInteger2 = new AtomicInteger();
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final Multimap multimapB = Multimaps.b(new ArrayListMultimap());
        final Multimap multimapB2 = Multimaps.b(new ArrayListMultimap());
        final double d = this.f39935b == Configuration.ImageSource.URL ? 0.99609375d : 0.95d;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new va0(downloadTaskCancelable, i2));
        Scheduler scheduler = Schedulers.f43170c;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarE = eVar.i(scheduler).e(new n7(29));
        Observable observableDefer = Observable.defer(new Callable() { // from class: lx0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                downloadTaskCancelable2.c();
                Observable observableFromIterable = Observable.fromIterable(list);
                ProgressCallback progressCallback2 = progressCallback;
                Observable observableFlatMapSingle = observableFromIterable.flatMapSingle(new gy0(downloadTaskCancelable2, progressCallback2, 0));
                ConcurrentHashMap concurrentHashMap2 = concurrentHashMap;
                Multimap multimap = multimapB;
                Multimap multimap2 = multimapB2;
                Completable completableIgnoreElements = observableFlatMapSingle.flatMapSingle(new m7(downloadTaskCancelable2, (Serializable) concurrentHashMap2, (Object) multimap, (Object) multimap2, 4)).ignoreElements();
                Observable observableDefer2 = Observable.defer(new qx0(atomicInteger, multimap, multimap2, progressCallback2, 1));
                completableIgnoreElements.getClass();
                a.b(observableDefer2, "next is null");
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.a(completableIgnoreElements, observableDefer2);
            }
        });
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableDefer, "next is null");
        SingleSource list2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.a(nVarE, observableDefer).toList().i(scheduler), new Function() { // from class: mx0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List list3 = (List) obj;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                downloadTaskCancelable2.c();
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Start download SKUs");
                int size = list3.size();
                if (size <= 0) {
                    return Observable.fromIterable(Collections.EMPTY_LIST);
                }
                p pVar = new p(new wx0(this.f76379b, downloadTaskCancelable2, list3, 1));
                AtomicInteger atomicInteger3 = atomicInteger2;
                ProgressCallback progressCallback2 = progressCallback;
                double d2 = d;
                AtomicInteger atomicInteger4 = atomicInteger;
                return new t(new m(pVar, new yx0(downloadTaskCancelable2, size, atomicInteger3, progressCallback2, d2, atomicInteger4)), new yx0(downloadTaskCancelable2, atomicInteger3, size, progressCallback2, atomicInteger4, d2)).l().observeOn(Schedulers.f43170c);
            }
        }).toList();
        Function function = new Function() { // from class: nx0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                if (this.f76633b.f39935b == Configuration.ImageSource.URL) {
                    return Observable.just(Collections.EMPTY_LIST);
                }
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Start download the images that haven't downloaded");
                List listQ = DownloadImageDao.d.q(YMKDatabase.b(), DownloadImageDao.Type.SKU);
                final AtomicInteger atomicInteger3 = new AtomicInteger(listQ.size());
                final AtomicInteger atomicInteger4 = new AtomicInteger();
                Log.g(3, "SkuHandler", "[syncServerByProtocol] " + atomicInteger3.get() + " images need to be downloaded");
                Observable map = Observable.fromIterable(listQ).map(new yw0(22));
                final DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                final double d2 = d;
                final ProgressCallback progressCallback2 = progressCallback;
                return map.flatMap(new Function() { // from class: zx0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        final DownloadImageHelper.DownloadComponent downloadComponent = (DownloadImageHelper.DownloadComponent) obj2;
                        final DownloadTaskCancelable downloadTaskCancelable3 = downloadTaskCancelable2;
                        final AtomicInteger atomicInteger5 = atomicInteger4;
                        final AtomicInteger atomicInteger6 = atomicInteger3;
                        final double d3 = d2;
                        final ProgressCallback progressCallback3 = progressCallback2;
                        return Observable.fromCallable(new Callable() { // from class: py0
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                final DownloadImageHelper.DownloadComponent downloadComponent2 = downloadComponent;
                                Observable map2 = DownloadImageHelper.a(Collections.singleton(downloadComponent2), NetworkTaskManager.TaskPriority.LOW, downloadTaskCancelable3).doOnError(new o2(downloadComponent2, 18)).map(new yw0(29));
                                final AtomicInteger atomicInteger7 = atomicInteger5;
                                final AtomicInteger atomicInteger8 = atomicInteger6;
                                final double d4 = d3;
                                final ProgressCallback progressCallback4 = progressCallback3;
                                return (File) MoreFutures.b(map2.doOnNext(new Consumer() { // from class: uy0
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                                    public final void accept(Object obj3) {
                                        File file = (File) obj3;
                                        StringBuilder sb = new StringBuilder("[syncServerByProtocol] Download success url=");
                                        DownloadImageHelper.DownloadComponent downloadComponent3 = downloadComponent2;
                                        sb.append(downloadComponent3.f40322b);
                                        Log.g(3, "SkuHandler", sb.toString());
                                        DownloadImageDao.d.s(YMKDatabase.c(), downloadComponent3.f40322b, file.getAbsolutePath(), file.length());
                                        double dIncrementAndGet = ((double) atomicInteger7.incrementAndGet()) / ((double) atomicInteger8.get());
                                        final double d5 = d4;
                                        final double d6 = (1.0d - d5) * dIncrementAndGet;
                                        final ProgressCallback progressCallback5 = progressCallback4;
                                        PfCommons.c(new Runnable() { // from class: wy0
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                progressCallback5.a(d5 + d6);
                                            }
                                        });
                                    }
                                }).toFuture());
                            }
                        }).subscribeOn(FileDownloader.d);
                    }
                }).toList().f(new pv0(15)).l();
            }
        };
        list2.getClass();
        Completable completableIgnoreElements = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(list2, function).ignoreElements();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k kVarA = ProductMappingUtility.a(list);
        completableIgnoreElements.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completableIgnoreElements, kVarA).e(new ox0(progressCallback, concurrentHashMap, 0)).h(new n7(28));
    }

    public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f c(List list, boolean z, ProgressCallback progressCallback, DownloadTaskCancelable downloadTaskCancelable) {
        Log.g(3, "SkuHandler", "[downloadProductsInternal] start. skuGUIDs=" + list);
        Log.g(3, "SkuHandler", "[downloadProductsByProtocol] start");
        HashSet hashSet = new HashSet(list);
        Log.g(3, "SkuHandler", "[downloadProductsByProtocol] skuGUIDs size=" + list.size() + ", after filter duplicate element size=" + hashSet.size());
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        int size = hashSet.size();
        AtomicInteger atomicInteger = new AtomicInteger();
        final int i2 = 0;
        PfCommons.c(new rx0(progressCallback, atomicInteger, size, 0));
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(hashSet);
        Single singleCollectInto = i(linkedList, z).subscribeOn(Schedulers.f43170c).collectInto(new ConcurrentHashMap(), new yw0(17));
        ta0 ta0Var = new ta0(hashSet, atomicInteger, concurrentHashMap2, progressCallback, size, 4);
        singleCollectInto.getClass();
        Single list2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleCollectInto, ta0Var), Functions.f42605a).buffer(30).flatMap(new ix0(this, concurrentHashMap, z, atomicInteger, progressCallback, size, downloadTaskCancelable, concurrentHashMap2)).toList();
        Function function = new Function() { // from class: sx0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                int i3 = i2;
                ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                ConcurrentHashMap concurrentHashMap4 = concurrentHashMap;
                switch (i3) {
                    case 0:
                        break;
                    default:
                        Log.e("SkuHandler", "[downloadProductsByProtocol] failed.", (Throwable) obj);
                        break;
                }
                return Pair.create(concurrentHashMap4, concurrentHashMap3);
            }
        };
        list2.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list2, function);
        final int i3 = 1;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v(tVar, new Function() { // from class: sx0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                int i4 = i3;
                ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                ConcurrentHashMap concurrentHashMap4 = concurrentHashMap;
                switch (i4) {
                    case 0:
                        break;
                    default:
                        Log.e("SkuHandler", "[downloadProductsByProtocol] failed.", (Throwable) obj);
                        break;
                }
                return Pair.create(concurrentHashMap4, concurrentHashMap3);
            }
        }, null), new n7(27));
    }

    public final void checkNeedToUpdate(CheckNeedToUpdateCallback checkNeedToUpdateCallback) {
        Objects.requireNonNull(checkNeedToUpdateCallback, "callback can't be null");
        CheckNeedToUpdateCallback checkNeedToUpdateCallback2 = (CheckNeedToUpdateCallback) Proxies.a(CheckNeedToUpdateCallback.class, checkNeedToUpdateCallback);
        Log.g(3, "SkuHandler", "[checkNeedToUpdate] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a8(15)), new zy0(0)), new y(27)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new az0(checkNeedToUpdateCallback2, 0), new az0(checkNeedToUpdateCallback2, 1));
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void checkNeedToUpdateByEffect(PerfectEffect perfectEffect, CheckNeedToUpdateCallback checkNeedToUpdateCallback) {
        Objects.requireNonNull(perfectEffect, "effect can't be null");
        Objects.requireNonNull(checkNeedToUpdateCallback, "callback can't be null");
        CheckNeedToUpdateCallback checkNeedToUpdateCallback2 = (CheckNeedToUpdateCallback) Proxies.a(CheckNeedToUpdateCallback.class, checkNeedToUpdateCallback);
        Log.g(3, "SkuHandler", "[checkNeedToUpdateByEffect] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new o7(perfectEffect, perfectEffect.beautyMode.getFeatureType().toString(), 9)).j(Schedulers.f43170c), new z0(perfectEffect, 7)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new az0(checkNeedToUpdateCallback2, 2), new az0(checkNeedToUpdateCallback2, 3));
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void checkNeedToUpdateWithGuids(List<String> list, CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback) {
        Objects.requireNonNull(list, "skuGUIDs can't be null");
        Objects.requireNonNull(checkNeedToUpdateWithGuidsCallback, "callback can't be null");
        CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback2 = (CheckNeedToUpdateWithGuidsCallback) Proxies.a(CheckNeedToUpdateWithGuidsCallback.class, checkNeedToUpdateWithGuidsCallback);
        Log.g(3, "SkuHandler", "[checkNeedToUpdateWithGuids] start, size=" + list.size());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        Single list2 = i(list, PerfectLib.g.f39519h).subscribeOn(Schedulers.f43170c).map(new f8(concurrentHashMap2, 4)).toList();
        zy0 zy0Var = new zy0(2);
        list2.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list2, zy0Var), new zy0(4)).map(new a0(concurrentHashMap2, concurrentHashMap, 8)).toList().i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new fy0(concurrentHashMap, checkNeedToUpdateWithGuidsCallback2, 1), new iy0(checkNeedToUpdateWithGuidsCallback2, 1));
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void checkNeedToUpdateWithSkuSetGuids(List<String> list, CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback) {
        Objects.requireNonNull(list, "skuSetGUIDs can't be null");
        Objects.requireNonNull(checkNeedToUpdateWithGuidsCallback, "callback can't be null");
        CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback2 = (CheckNeedToUpdateWithGuidsCallback) Proxies.a(CheckNeedToUpdateWithGuidsCallback.class, checkNeedToUpdateWithGuidsCallback);
        Log.g(3, "SkuHandler", "[checkNeedToUpdateWithSkuSetGuids] start, size=" + list.size());
        ImmutableList immutableListU = ImmutableList.u(list);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        Single singleCollectInto = Observable.fromIterable(immutableListU).buffer(30).flatMap(new yw0(21)).collectInto(new ConcurrentHashMap(), new yw0(23));
        y81 y81Var = new y81(immutableListU, concurrentHashMap, concurrentHashMap2, 18);
        singleCollectInto.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(singleCollectInto, y81Var).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new fy0(concurrentHashMap, checkNeedToUpdateWithGuidsCallback2, 0), new iy0(checkNeedToUpdateWithGuidsCallback2, 0));
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void clearAll(ClearCallback clearCallback) {
        Objects.requireNonNull(clearCallback, "clearCallback can't be null");
        ClearCallback clearCallback2 = (ClearCallback) Proxies.a(ClearCallback.class, clearCallback);
        Log.g(3, "SkuHandler", "[clearAll] start");
        Completable completableClearAllCompletable = clearAllCompletable();
        Scheduler schedulerA = AndroidSchedulers.a();
        completableClearAllCompletable.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(completableClearAllCompletable, schedulerA);
        Objects.requireNonNull(clearCallback2);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarH = mVar.h(new xw(clearCallback2, 8));
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new pv0(17), new bz0(0));
        nVarH.a(callbackCompletableObserver);
        this.f39934a.b(callbackCompletableObserver);
    }

    public final void deleteProducts(List<String> list, DeleteProductsCallback deleteProductsCallback) {
        Objects.requireNonNull(list, "productGUIDs can't be null");
        Objects.requireNonNull(deleteProductsCallback, "callback can't be null");
        DeleteProductsCallback deleteProductsCallback2 = (DeleteProductsCallback) Proxies.a(DeleteProductsCallback.class, deleteProductsCallback);
        Log.g(3, "SkuHandler", "[deleteProducts] start, size=" + list.size());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).map(new y(28)).toList().i(AndroidSchedulers.a());
        Objects.requireNonNull(deleteProductsCallback2);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k kVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k(uVarI, new xw(deleteProductsCallback2, 10));
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new pv0(22), new pv0(23));
        kVar.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void deleteSkuSets(List<String> list, DeleteSkuSetsCallback deleteSkuSetsCallback) {
        Objects.requireNonNull(list, "skuSetGUIDs can't be null");
        Objects.requireNonNull(deleteSkuSetsCallback, "callback can't be null");
        DeleteSkuSetsCallback deleteSkuSetsCallback2 = (DeleteSkuSetsCallback) Proxies.a(DeleteSkuSetsCallback.class, deleteSkuSetsCallback);
        Log.g(3, "SkuHandler", "[deleteSkuSets] start, size=" + list.size());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new sa0(list, 1)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        Objects.requireNonNull(deleteSkuSetsCallback2);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k kVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k(uVarI, new xw(deleteSkuSetsCallback2, 9));
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new pv0(20), new pv0(21));
        kVar.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final Cancelable downloadProducts(List<String> list, DownloadProductsCallback downloadProductsCallback) {
        Objects.requireNonNull(list, "productGUIDs can't be null");
        Objects.requireNonNull(downloadProductsCallback, "callback can't be null");
        DownloadProductsCallback downloadProductsCallback2 = (DownloadProductsCallback) Proxies.a(DownloadProductsCallback.class, downloadProductsCallback);
        Log.g(3, "SkuHandler", "[downloadProducts] start, size=" + list.size());
        if (list.isEmpty()) {
            Log.g(3, "SkuHandler", "[downloadProducts] product GUID list is empty.");
            PfCommons.c(new hn0(downloadProductsCallback2, 19));
            return DownloadTaskCancelable.f40351e;
        }
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadProducts");
        h(downloadTaskCancelable);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = c(list, PerfectLib.g.f39519h, new s40(downloadProductsCallback, 5), downloadTaskCancelable).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new defpackage.o2(downloadProductsCallback2, 20), new pv0(16));
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
        return downloadTaskCancelable;
    }

    public final Cancelable downloadSkuSets(List<String> list, final DownloadSkuSetsCallback downloadSkuSetsCallback) {
        Objects.requireNonNull(list, "skuSetGUIDs can't be null");
        Objects.requireNonNull(downloadSkuSetsCallback, "callback can't be null");
        final DownloadSkuSetsCallback downloadSkuSetsCallback2 = (DownloadSkuSetsCallback) Proxies.a(DownloadSkuSetsCallback.class, downloadSkuSetsCallback);
        Log.g(3, "SkuHandler", "[downloadSkuSets] start, size=" + list.size());
        if (list.isEmpty()) {
            Log.g(3, "SkuHandler", "[downloadSkuSets] SKU set GUID list is empty.");
            final int i2 = 0;
            PfCommons.c(new Runnable() { // from class: cz0
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback3 = downloadSkuSetsCallback2;
                    switch (i3) {
                        case 0:
                            Map<String, List<SkuSetInfo>> map = Collections.EMPTY_MAP;
                            downloadSkuSetsCallback3.onComplete(map, map);
                            break;
                        default:
                            downloadSkuSetsCallback3.progress(0.0d);
                            break;
                    }
                }
            });
            return DownloadTaskCancelable.f40351e;
        }
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadSkuSets");
        h(downloadTaskCancelable);
        boolean z = PerfectLib.g.f39519h;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        int size = list.size();
        AtomicInteger atomicInteger = new AtomicInteger();
        final int i3 = 1;
        Single list2 = Observable.fromIterable(ImmutableList.u(list)).subscribeOn(Schedulers.f43170c).map(new zy0(1)).toList();
        ix0 ix0Var = new ix0(this, concurrentHashMap2, downloadSkuSetsCallback, atomicInteger, size, downloadTaskCancelable, z, concurrentHashMap);
        list2.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k kVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(list2, ix0Var).toList().i(AndroidSchedulers.a()), new rw0(downloadSkuSetsCallback2, concurrentHashMap, concurrentHashMap2, i3));
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new pv0(18), new pv0(19));
        kVar.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
        PfCommons.c(new Runnable() { // from class: cz0
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = i3;
                SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback3 = downloadSkuSetsCallback;
                switch (i4) {
                    case 0:
                        Map<String, List<SkuSetInfo>> map = Collections.EMPTY_MAP;
                        downloadSkuSetsCallback3.onComplete(map, map);
                        break;
                    default:
                        downloadSkuSetsCallback3.progress(0.0d);
                        break;
                }
            }
        });
        return downloadTaskCancelable;
    }

    public final Map g(Collection collection, boolean z) {
        Threads.b();
        return (Map) a(new ArrayList(new HashSet(collection)), z).collectInto(new ConcurrentHashMap(), new yw0(25)).c();
    }

    public final void getListByEffect(PerfectEffect perfectEffect, GetListCallback getListCallback) {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar;
        Objects.requireNonNull(perfectEffect, "effect can not be null");
        Objects.requireNonNull(getListCallback, "callback can not be null");
        GetListCallback getListCallback2 = (GetListCallback) Proxies.a(GetListCallback.class, getListCallback);
        Log.g(3, "SkuHandler", "[getListByEffect] start, effect=" + perfectEffect);
        boolean z = PerfectLib.g.f39519h;
        AtomicReference atomicReference = new AtomicReference(ListStatus.OK);
        if (perfectEffect == PerfectEffect.BACKGROUND) {
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new a8(16)).j(Schedulers.f43170c), new c4(this, z, atomicReference));
        } else {
            int i2 = 1;
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i4(perfectEffect, i2)).j(Schedulers.f43170c), new ez0(perfectEffect, i2)), new u1(this, perfectEffect, z, atomicReference));
        }
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.j jVarF = tVar.i(AndroidSchedulers.a()).f(new tw0(this, perfectEffect, atomicReference, 2));
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new na0(perfectEffect, getListCallback2, 8), new defpackage.o2(getListCallback2, 21));
        jVarF.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final ListStatus getListStatusByEffect(PerfectEffect perfectEffect) {
        Log.g(3, "SkuHandler", "[getListStatusByEffect] start");
        ListStatus listStatus = (ListStatus) this.d.get(perfectEffect);
        if (listStatus == null) {
            Log.g(3, "SkuHandler", "[getListStatusByEffect] end. status ok.");
            return ListStatus.OK;
        }
        Log.g(3, "SkuHandler", "[getListStatusByEffect] end. status=" + listStatus);
        return listStatus;
    }

    public final void getProductInfosWithGuids(List<String> list, GetProductInfosWithGuidsCallback getProductInfosWithGuidsCallback) {
        Objects.requireNonNull(list, "productGuids can't be null");
        Objects.requireNonNull(getProductInfosWithGuidsCallback, "callback can't be null");
        final GetProductInfosWithGuidsCallback getProductInfosWithGuidsCallback2 = (GetProductInfosWithGuidsCallback) Proxies.a(GetProductInfosWithGuidsCallback.class, getProductInfosWithGuidsCallback);
        Log.g(3, "SkuHandler", "[getProductInfosWithGuids] start, size=" + list.size() + ", guids=" + list);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = a(list, PerfectLib.g.f39519h).toList().i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: hz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                SkuHandler.GetProductInfosWithGuidsCallback getProductInfosWithGuidsCallback3 = getProductInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<ProductInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getProductInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getProductInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getProductInfosWithGuids] failed.", (Throwable) obj);
                        getProductInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        }, new Consumer() { // from class: hz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SkuHandler.GetProductInfosWithGuidsCallback getProductInfosWithGuidsCallback3 = getProductInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<ProductInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getProductInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getProductInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getProductInfosWithGuids] failed.", (Throwable) obj);
                        getProductInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void getSkuInfosWithGuids(List<String> list, GetSkuInfosWithGuidsCallback getSkuInfosWithGuidsCallback) {
        Objects.requireNonNull(list, "skuGuids can't be null");
        Objects.requireNonNull(getSkuInfosWithGuidsCallback, "callback can't be null");
        final GetSkuInfosWithGuidsCallback getSkuInfosWithGuidsCallback2 = (GetSkuInfosWithGuidsCallback) Proxies.a(GetSkuInfosWithGuidsCallback.class, getSkuInfosWithGuidsCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        Log.g(3, "SkuHandler", "[getSkuInfosWithGuids] start, size=" + immutableListU.size());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ho0(this, PerfectLib.g.f39519h, immutableListU, 2)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: dz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                SkuHandler.GetSkuInfosWithGuidsCallback getSkuInfosWithGuidsCallback3 = getSkuInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<SkuInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getSkuInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getSkuInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getSkuInfosWithGuids] failed.", (Throwable) obj);
                        getSkuInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        }, new Consumer() { // from class: dz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SkuHandler.GetSkuInfosWithGuidsCallback getSkuInfosWithGuidsCallback3 = getSkuInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<SkuInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getSkuInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getSkuInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getSkuInfosWithGuids] failed.", (Throwable) obj);
                        getSkuInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void getSkuSetInfosWithGuids(List<String> list, GetSkuSetInfosWithGuidsCallback getSkuSetInfosWithGuidsCallback) {
        Objects.requireNonNull(list, "skuSetGUIDs can't be null");
        Objects.requireNonNull(getSkuSetInfosWithGuidsCallback, "callback can't be null");
        final GetSkuSetInfosWithGuidsCallback getSkuSetInfosWithGuidsCallback2 = (GetSkuSetInfosWithGuidsCallback) Proxies.a(GetSkuSetInfosWithGuidsCallback.class, getSkuSetInfosWithGuidsCallback);
        fc.z(list, new StringBuilder("[getSkuSetInfosWithGuids] start, size="), 3, "SkuHandler");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromIterable(ImmutableList.u(list)).subscribeOn(Schedulers.f43170c).map(new zy0(5)).flatMap(new wm(PerfectLib.g.f39519h, 6)).toList().i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: gz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                SkuHandler.GetSkuSetInfosWithGuidsCallback getSkuSetInfosWithGuidsCallback3 = getSkuSetInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<SkuSetInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getSkuSetInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getSkuSetInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getSkuSetInfosWithGuids] failed.", (Throwable) obj);
                        getSkuSetInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        }, new Consumer() { // from class: gz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SkuHandler.GetSkuSetInfosWithGuidsCallback getSkuSetInfosWithGuidsCallback3 = getSkuSetInfosWithGuidsCallback2;
                switch (i4) {
                    case 0:
                        List<SkuSetInfo> list2 = (List) obj;
                        fc.z(list2, new StringBuilder("[getSkuSetInfosWithGuids] succeed. size="), 3, "SkuHandler");
                        getSkuSetInfosWithGuidsCallback3.onComplete(list2);
                        break;
                    default:
                        Log.e("SkuHandler", "[getSkuSetInfosWithGuids] failed.", (Throwable) obj);
                        getSkuSetInfosWithGuidsCallback3.onComplete(Collections.EMPTY_LIST);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void getSkuSetListByEffect(PerfectEffect perfectEffect, GetSkuSetListCallback getSkuSetListCallback) {
        Objects.requireNonNull(perfectEffect, "effect can not be null");
        Objects.requireNonNull(getSkuSetListCallback, "callback can not be null");
        final GetSkuSetListCallback getSkuSetListCallback2 = (GetSkuSetListCallback) Proxies.a(GetSkuSetListCallback.class, getSkuSetListCallback);
        Log.g(3, "SkuHandler", "[getSkuSetListByEffect] start");
        boolean z = PerfectLib.g.f39519h;
        final int i2 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new g8(perfectEffect.beautyMode.getFeatureType().toString(), 6)).j(Schedulers.f43170c), new ez0(perfectEffect, i2)), new zy0(3)), Functions.f42605a).flatMap(new wm(z, 5)).toList().i(AndroidSchedulers.a());
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: fz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                SkuHandler.GetSkuSetListCallback getSkuSetListCallback3 = getSkuSetListCallback2;
                switch (i4) {
                    case 0:
                        List<SkuSetInfo> list = (List) obj;
                        fc.z(list, new StringBuilder("[getSkuSetListByEffect] succeed. size="), 3, "SkuHandler");
                        getSkuSetListCallback3.onSuccess(list);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkuHandler", "[getSkuSetListByEffect] failed.", th);
                        getSkuSetListCallback3.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: fz0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SkuHandler.GetSkuSetListCallback getSkuSetListCallback3 = getSkuSetListCallback2;
                switch (i4) {
                    case 0:
                        List<SkuSetInfo> list = (List) obj;
                        fc.z(list, new StringBuilder("[getSkuSetListByEffect] succeed. size="), 3, "SkuHandler");
                        getSkuSetListCallback3.onSuccess(list);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkuHandler", "[getSkuSetListByEffect] failed.", th);
                        getSkuSetListCallback3.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.f39934a.b(consumerSingleObserver);
    }

    public final void j(DownloadTaskCancelable downloadTaskCancelable) {
        Cancelable cancelable = (Cancelable) this.f39936c.getAndSet(downloadTaskCancelable);
        if (cancelable != null) {
            Log.g(3, "SkuHandler", "[setupLastTaskCancelable] cancelable \"" + cancelable + "\" canceled!");
            cancelable.cancel();
        }
    }

    public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n k(final List list, final DownloadTaskCancelable downloadTaskCancelable, final ProgressCallback progressCallback) {
        Log.g(3, "SkuHandler", "[getListBySyncServerInternal] start. skuTypes=" + list);
        Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] start");
        final AtomicInteger atomicInteger = new AtomicInteger();
        AtomicInteger atomicInteger2 = new AtomicInteger();
        final Multimap multimapB = Multimaps.b(new ArrayListMultimap());
        final Multimap multimapB2 = Multimaps.b(new ArrayListMultimap());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new va0(downloadTaskCancelable, 3));
        Scheduler scheduler = Schedulers.f43170c;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarE = eVar.i(scheduler).e(new n7(29));
        Observable observableDefer = Observable.defer(new Callable() { // from class: iz0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                downloadTaskCancelable2.c();
                Observable observableFromIterable = Observable.fromIterable(list);
                Multimap multimap = multimapB;
                Multimap multimap2 = multimapB2;
                Completable completableIgnoreElements = observableFromIterable.flatMapSingle(new y81(downloadTaskCancelable2, multimap, multimap2, 16)).ignoreElements();
                Observable observableDefer2 = Observable.defer(new qx0(atomicInteger, multimap, multimap2, progressCallback, 0));
                completableIgnoreElements.getClass();
                a.b(observableDefer2, "next is null");
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.a(completableIgnoreElements, observableDefer2);
            }
        });
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableDefer, "next is null");
        Completable completableIgnoreElements = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.a(nVarE, observableDefer).toList().i(scheduler), new m7(this, progressCallback, downloadTaskCancelable, atomicInteger2, 6)).ignoreElements();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new z(progressCallback, list, 13));
        completableIgnoreElements.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completableIgnoreElements, eVar2).e(new ox0(progressCallback, concurrentHashMap, 1)).h(new bz0(1));
    }

    public final ProductInfo l(BeautyMode beautyMode, String str, Sku sku, boolean z) {
        ProductInfo productInfo = new ProductInfo(beautyMode, str, sku, this.f39935b);
        productInfo.f39802i.addAll(f(productInfo, z));
        return productInfo;
    }

    public final Cancelable syncServer(SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        Log.g(3, "SkuHandler", "[syncServer] start");
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("syncServer");
        h(downloadTaskCancelable);
        j(downloadTaskCancelable);
        h(downloadTaskCancelable);
        List list = com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(b(list, downloadTaskCancelable, new s40(syncServerCallback, 3)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new va0(downloadTaskCancelable, 2)));
        Log.g(3, "ProductMaskHelper", "[syncServer] start");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(aVar, ProductMaskHelper.b(list)).e(new jx0(this, downloadTaskCancelable, 0)).g(new kx0(this, downloadTaskCancelable, 0)).f(new jx0(this, downloadTaskCancelable, 1)), AndroidSchedulers.a());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new ux0(syncServerCallback2, 0), new tx0(syncServerCallback2, 0));
        mVar.a(callbackCompletableObserver);
        this.f39934a.b(callbackCompletableObserver);
        return downloadTaskCancelable;
    }

    public final Cancelable syncServerByEffect(PerfectEffect perfectEffect, SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("syncServerByEffect");
        h(downloadTaskCancelable);
        SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        Log.g(3, "SkuHandler", "[syncServerByEffect] start");
        s40 s40Var = new s40(syncServerCallback, 3);
        Objects.requireNonNull(perfectEffect, "effect can't be null");
        Log.g(3, "SkuHandler", "[syncServerByEffectImpl] start");
        String string = perfectEffect.beautyMode.getFeatureType().toString();
        DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("syncServerByEffectImpl");
        h(downloadTaskCancelable2);
        j(downloadTaskCancelable2);
        h(downloadTaskCancelable2);
        Pair pairCreate = Pair.create(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(b(Collections.singletonList(string), downloadTaskCancelable2, s40Var), ProductMaskHelper.b(Collections.singletonList(string))).e(new jx0(this, downloadTaskCancelable2, 4)).g(new kx0(this, downloadTaskCancelable2, 1)).f(new jx0(this, downloadTaskCancelable2, 5)), downloadTaskCancelable2);
        Completable completable = (Completable) pairCreate.first;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new ky0(perfectEffect, downloadTaskCancelable, 0));
        completable.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completable, eVar), AndroidSchedulers.a());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new ux0(syncServerCallback2, 1), new tx0(syncServerCallback2, 1));
        mVar.a(callbackCompletableObserver);
        this.f39934a.b(callbackCompletableObserver);
        return (Cancelable) pairCreate.second;
    }

    public final Cancelable syncSkuList(SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("syncSkuList");
        h(downloadTaskCancelable);
        SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        Log.g(3, "SkuHandler", "[syncSkuList] start");
        List list = com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b;
        s40 s40Var = new s40(syncServerCallback, 3);
        Objects.requireNonNull(list, "skuTypes can't be null");
        Log.g(3, "SkuHandler", "[syncAllSkuListImpl] start");
        DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("syncAllSkuListImpl");
        h(downloadTaskCancelable2);
        j(downloadTaskCancelable2);
        h(downloadTaskCancelable2);
        Pair pairCreate = Pair.create(k(list, downloadTaskCancelable2, s40Var), downloadTaskCancelable2);
        Completable completable = (Completable) pairCreate.first;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new va0(downloadTaskCancelable, 4));
        completable.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completable, eVar), AndroidSchedulers.a());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new ux0(syncServerCallback2, 2), new tx0(syncServerCallback2, 2));
        mVar.a(callbackCompletableObserver);
        this.f39934a.b(callbackCompletableObserver);
        return (Cancelable) pairCreate.second;
    }

    public final Cancelable syncSkuListByEffect(PerfectEffect perfectEffect, SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("syncSkuListByEffect");
        h(downloadTaskCancelable);
        SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        Log.g(3, "SkuHandler", "[syncSkuListByEffect] start");
        s40 s40Var = new s40(syncServerCallback, 3);
        Objects.requireNonNull(perfectEffect, "effect can't be null");
        Log.g(3, "SkuHandler", "[syncSkuListByEffectImpl] start");
        String string = perfectEffect.beautyMode.getFeatureType().toString();
        DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("syncSkuListByEffectImpl");
        h(downloadTaskCancelable2);
        j(downloadTaskCancelable2);
        h(downloadTaskCancelable2);
        Pair pairCreate = Pair.create(k(Collections.singletonList(string), downloadTaskCancelable2, s40Var), downloadTaskCancelable2);
        Completable completable = (Completable) pairCreate.first;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e eVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new ky0(perfectEffect, downloadTaskCancelable, 1));
        completable.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completable, eVar), AndroidSchedulers.a());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new ux0(syncServerCallback2, 3), new tx0(syncServerCallback2, 3));
        mVar.a(callbackCompletableObserver);
        this.f39934a.b(callbackCompletableObserver);
        return (Cancelable) pairCreate.second;
    }

    public final void updateMappingFromServer(UpdateMappingFromServerCallback updateMappingFromServerCallback) {
        PerfectLib.c();
        Threads.a();
        Objects.requireNonNull(updateMappingFromServerCallback, "callback can't be null");
        final UpdateMappingFromServerCallback updateMappingFromServerCallback2 = (UpdateMappingFromServerCallback) Proxies.a(UpdateMappingFromServerCallback.class, updateMappingFromServerCallback);
        this.f39937e.dispose();
        final int i2 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarF = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(ProductMappingUtility.a(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b).i(Schedulers.f43170c), AndroidSchedulers.a()).f(new Action() { // from class: yy0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
            public final void run() {
                switch (i2) {
                    case 0:
                        Log.g(5, "SkuHandler", "previous product mapping updating task was cancelled by a new one");
                        updateMappingFromServerCallback2.onFailure(new CancellationException("previous product mapping updating task was cancelled by a new one"));
                        break;
                    default:
                        Log.g(3, "SkuHandler", "product mapping updated.");
                        updateMappingFromServerCallback2.onSuccess();
                        break;
                }
            }
        });
        final int i3 = 1;
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new defpackage.o2(updateMappingFromServerCallback2, 19), new Action() { // from class: yy0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
            public final void run() {
                switch (i3) {
                    case 0:
                        Log.g(5, "SkuHandler", "previous product mapping updating task was cancelled by a new one");
                        updateMappingFromServerCallback2.onFailure(new CancellationException("previous product mapping updating task was cancelled by a new one"));
                        break;
                    default:
                        Log.g(3, "SkuHandler", "product mapping updated.");
                        updateMappingFromServerCallback2.onSuccess();
                        break;
                }
            }
        });
        nVarF.a(callbackCompletableObserver);
        this.f39937e = callbackCompletableObserver;
        this.f39934a.b(this.f39937e);
    }
}
