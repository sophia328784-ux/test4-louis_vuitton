package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.az;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
abstract class HandVtoApplierImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f39634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PerfectEffect f39635c;
    public final com.perfectcorp.perfectlib.ph.clflurry.b.a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39636e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39638h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f39637f = new AtomicInteger();
    public DownloadTaskCancelable g = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f39639i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Configuration.ImageSource f39640j = PerfectLib.g.d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f39641k = new ArrayList();

    public interface ApplyCallback {
        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface EffectIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List list);
    }

    public interface ProductIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List list);
    }

    public HandVtoApplierImpl(String str, CompositeDisposable compositeDisposable, PerfectEffect perfectEffect, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39633a = str;
        this.f39634b = compositeDisposable;
        this.f39635c = perfectEffect;
        this.d = aVar;
        this.f39636e = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#downloadTaskExecutor"))));
        this.f39638h = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#applyTaskExecutor"))));
    }

    public static Pair a(List list) {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 3;
        if (PerfectLib.g.f39519h) {
            Single list2 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(i2, arrayList)).toList();
            defpackage.q2 q2Var = new defpackage.q2(2, arrayList);
            list2.getClass();
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list2, q2Var);
        } else {
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ApplyEffectUtility.j(list, false, null), new defpackage.q2(3, arrayList));
        }
        return (Pair) tVar.c();
    }

    public static com.perfectcorp.perfectlib.ph.utility.b e(ArrayList arrayList, PerfectEffect perfectEffect) {
        String str;
        String str2;
        String str3;
        if (arrayList.isEmpty()) {
            return null;
        }
        Iterator it = arrayList.iterator();
        String string = "";
        String string2 = string;
        String string3 = string2;
        String str4 = string3;
        String str5 = str4;
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            StringBuilder sbT = n00.t(string);
            if (TextUtils.isEmpty(string)) {
                str = bVar.f41737c;
            } else {
                str = "^" + bVar.f41737c;
            }
            sbT.append(str);
            string = sbT.toString();
            StringBuilder sbT2 = n00.t(string2);
            if (TextUtils.isEmpty(string2)) {
                str2 = bVar.d;
            } else {
                str2 = "^" + bVar.d;
            }
            sbT2.append(str2);
            string2 = sbT2.toString();
            StringBuilder sbT3 = n00.t(string3);
            if (TextUtils.isEmpty(string3)) {
                str3 = bVar.d;
            } else {
                str3 = "^" + bVar.d;
            }
            sbT3.append(str3);
            string3 = sbT3.toString();
            if (TextUtils.isEmpty(str4) && !TextUtils.isEmpty(bVar.f41736b)) {
                str4 = bVar.f41736b;
            }
            if (TextUtils.isEmpty(str5) && !TextUtils.isEmpty(bVar.f41738e)) {
                str5 = bVar.f41738e;
            }
        }
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
            return null;
        }
        com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(perfectEffect, string, string2);
        aVar.f41748f = "";
        if (!TextUtils.isEmpty(str4)) {
            Objects.requireNonNull(str4, "skuSetId can't be null");
            aVar.f41745b = str4;
        }
        if (!TextUtils.isEmpty(str5)) {
            Objects.requireNonNull(str5, "lookGuid can't be null");
            aVar.f41746c = str5;
        }
        return new com.perfectcorp.perfectlib.ph.utility.b(aVar);
    }

    public static void p(List list, ArrayList arrayList, ArrayList arrayList2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            PerfectEffect perfectEffect = bVar.f41735a;
            if (perfectEffect == PerfectEffect.RING) {
                arrayList.add(bVar);
            } else if (perfectEffect == PerfectEffect.BRACELET || perfectEffect == PerfectEffect.WATCH) {
                arrayList2.add(bVar);
            }
        }
    }

    public abstract EffectId b(com.perfectcorp.perfectlib.ph.utility.b bVar);

    public final DownloadTaskCancelable c(List list, ApplyCallback applyCallback) throws Throwable {
        final DownloadTaskCancelable downloadTaskCancelable;
        ConsumerSingleObserver consumerSingleObserver;
        Threads.a();
        i();
        Objects.requireNonNull(list, "vtoSettings can't be null");
        final ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        int i2 = 2;
        try {
            w();
            final DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            Log.g(3, this.f39633a, "[apply] copiedVtoSettings=" + immutableListU + ", cacheStrategy=" + downloadCacheStrategy);
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new o0(this, this.f39639i.incrementAndGet(), immutableListU, 0)).j(this.f39638h).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new g0(this, applyCallback2, 4), new g0(this, applyCallback2, 5));
                uVarI.a(consumerSingleObserver2);
                this.f39634b.b(consumerSingleObserver2);
                return DownloadTaskCancelable.f40351e;
            }
            final int iIncrementAndGet = this.f39637f.incrementAndGet();
            final int iIncrementAndGet2 = this.f39639i.incrementAndGet();
            this.g.cancel();
            DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("downloadAndApplySkus");
            this.g = downloadTaskCancelable2;
            SkuHandler.h(downloadTaskCancelable2);
            ImmutableList immutableListU2 = ImmutableList.u(immutableListU);
            Log.g(3, this.f39633a, "[downloadAndApplySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU2)));
            if (PerfectLib.g.f39519h) {
                downloadTaskCancelable = downloadTaskCancelable2;
                ArrayList arrayList = new ArrayList();
                Single list2 = Observable.fromIterable(immutableListU2).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(i2, arrayList)).toList();
                n0 n0Var = new n0(this, arrayList, iIncrementAndGet, iIncrementAndGet2, downloadCacheStrategy, applyCallback2, downloadTaskCancelable);
                m0 m0Var = new m0(this, immutableListU2, applyCallback2, 2);
                list2.getClass();
                consumerSingleObserver = new ConsumerSingleObserver(n0Var, m0Var);
                list2.a(consumerSingleObserver);
            } else {
                downloadTaskCancelable = downloadTaskCancelable2;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Single singleJ = ApplyEffectUtility.j(immutableListU2, true, Schedulers.f43170c);
                consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: com.perfectcorp.perfectlib.p0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        List list3 = (List) obj;
                        HandVtoApplierImpl handVtoApplierImpl = this.f41102a;
                        Log.g(3, handVtoApplierImpl.f39633a, "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings=".concat(Iterables.c(list3)));
                        handVtoApplierImpl.k(iIncrementAndGet, iIncrementAndGet2, list3, downloadCacheStrategy, applyCallback2, downloadTaskCancelable, false);
                    }
                }, new m0(this, immutableListU2, applyCallback2, 3));
                singleJ.a(consumerSingleObserver);
            }
            downloadTaskCancelable.a(Collections.singletonList(consumerSingleObserver));
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new f0(this, th, applyCallback2, 2));
        }
    }

    public final DownloadTaskCancelable d(List list, final List list2, ApplyCallback applyCallback) throws Throwable {
        DownloadTaskCancelable downloadTaskCancelable;
        ConsumerSingleObserver consumerSingleObserver;
        Threads.a();
        i();
        Objects.requireNonNull(list, "effectIds can't be null");
        ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EffectId effectId = (EffectId) it.next();
            arrayList.add((Objects.equals(effectId.getSkuSetGuid(), EffectId.INVALID_ID) ? VtoSetting.builder().setProductGuid(effectId.getProductGuid()).setSkuGuid(effectId.getSkuGuid()) : VtoSetting.builder().setSkuSetGuid(effectId.getSkuSetGuid())).build());
        }
        final ImmutableList immutableListU = ImmutableList.u(arrayList);
        int i2 = 1;
        try {
            w();
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            Log.g(3, this.f39633a, "[apply] copiedVtoSettings=" + immutableListU + ", cacheStrategy=" + downloadCacheStrategy);
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                final int iIncrementAndGet = this.f39639i.incrementAndGet();
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.perfectlib.j0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        com.perfectcorp.perfectlib.ph.utility.b bVarE;
                        com.perfectcorp.perfectlib.ph.utility.b bVarE2;
                        HandVtoApplierImpl handVtoApplierImpl = this.f40377b;
                        handVtoApplierImpl.s(iIncrementAndGet);
                        List<com.perfectcorp.perfectlib.ph.utility.b> listH = handVtoApplierImpl.h((List) HandVtoApplierImpl.a(immutableListU).first, list2);
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        for (com.perfectcorp.perfectlib.ph.utility.b bVar : listH) {
                            PerfectEffect perfectEffect = bVar.f41735a;
                            if (perfectEffect == PerfectEffect.RING) {
                                arrayList3.add(bVar);
                            } else if (perfectEffect == PerfectEffect.BRACELET) {
                                arrayList4.add(bVar);
                            } else {
                                arrayList2.add(bVar);
                            }
                        }
                        if (!arrayList3.isEmpty() && (bVarE2 = HandVtoApplierImpl.e(arrayList3, PerfectEffect.RING)) != null) {
                            arrayList2.add(bVarE2);
                        }
                        if (!arrayList4.isEmpty() && (bVarE = HandVtoApplierImpl.e(arrayList4, PerfectEffect.BRACELET)) != null) {
                            arrayList2.add(bVarE);
                        }
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            handVtoApplierImpl.t((com.perfectcorp.perfectlib.ph.utility.b) it2.next());
                        }
                        return handVtoApplierImpl.v(listH);
                    }
                }).j(this.f39638h).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new g0(this, applyCallback2, 2), new g0(this, applyCallback2, 3));
                uVarI.a(consumerSingleObserver2);
                this.f39634b.b(consumerSingleObserver2);
                return DownloadTaskCancelable.f40351e;
            }
            int iIncrementAndGet2 = this.f39637f.incrementAndGet();
            int iIncrementAndGet3 = this.f39639i.incrementAndGet();
            this.g.cancel();
            DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("downloadAndApplySkus");
            this.g = downloadTaskCancelable2;
            SkuHandler.h(downloadTaskCancelable2);
            ImmutableList immutableListU2 = ImmutableList.u(immutableListU);
            Log.g(3, this.f39633a, "[downloadAndApplySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU2)));
            if (PerfectLib.g.f39519h) {
                ArrayList arrayList2 = new ArrayList();
                Single list3 = Observable.fromIterable(immutableListU2).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(i2, arrayList2)).toList();
                downloadTaskCancelable = downloadTaskCancelable2;
                l0 l0Var = new l0(this, arrayList2, iIncrementAndGet2, iIncrementAndGet3, downloadCacheStrategy, applyCallback2, downloadTaskCancelable, list2);
                m0 m0Var = new m0(this, immutableListU2, applyCallback2, 0);
                list3.getClass();
                consumerSingleObserver = new ConsumerSingleObserver(l0Var, m0Var);
                list3.a(consumerSingleObserver);
            } else {
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Single singleJ = ApplyEffectUtility.j(immutableListU2, true, Schedulers.f43170c);
                downloadTaskCancelable = downloadTaskCancelable2;
                consumerSingleObserver = new ConsumerSingleObserver(new n0(this, iIncrementAndGet2, iIncrementAndGet3, downloadCacheStrategy, applyCallback2, downloadTaskCancelable2, list2), new m0(this, immutableListU2, applyCallback2, 1));
                singleJ.a(consumerSingleObserver);
            }
            downloadTaskCancelable.a(Collections.singletonList(consumerSingleObserver));
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new f0(this, th, applyCallback2, 1));
        }
    }

    public abstract ListenableFuture f(ArrayList arrayList);

    public final List g(ArrayList arrayList, boolean z) {
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.utility.b bVar = (com.perfectcorp.perfectlib.ph.utility.b) it.next();
            if (bVar != null) {
                PerfectEffect perfectEffect = bVar.f41735a;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(bVar.f41736b)) {
                    if (!hashSet.contains(perfectEffect)) {
                        hashSet.add(perfectEffect);
                    }
                }
                builder.f(b(bVar));
            }
        }
        ImmutableList immutableListI = builder.i();
        return z ? ProductMappingUtility.c(immutableListI) : immutableListI;
    }

    public abstract List h(List list, List list2);

    public abstract void i();

    public final void j(int i2) {
        int i3 = this.f39637f.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
        }
    }

    public final void k(int i2, int i3, List list, DownloadCacheStrategy downloadCacheStrategy, ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, boolean z) {
        Log.g(3, this.f39633a, "[downloadAndApplySkusInternal] Start download. vtoSettings=".concat(Iterables.c(list)));
        ArrayList arrayList = new ArrayList();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Observable.fromIterable(list).groupBy(new az(21)).flatMapSingle(new r0(this, i2, arrayList, downloadCacheStrategy, downloadTaskCancelable, z, 0)).toList().i(this.f39638h), new s0(this, i3, arrayList, 0)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g0(this, applyCallback, 8), new g0(this, applyCallback, 9));
        uVarI.a(consumerSingleObserver);
        this.f39634b.b(consumerSingleObserver);
    }

    public final void l(int i2, int i3, List list, DownloadCacheStrategy downloadCacheStrategy, ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, boolean z, List list2) {
        Log.g(3, this.f39633a, "[downloadAndApplySkusInternal] Start download. vtoSettings=".concat(Iterables.c(list)));
        ArrayList arrayList = new ArrayList();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Observable.fromIterable(list).groupBy(new az(22)).flatMapSingle(new r0(this, i2, arrayList, downloadCacheStrategy, downloadTaskCancelable, z, 1)).toList().i(this.f39638h), new t0(i3, 0, this, arrayList, list2)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g0(this, applyCallback, 10), new g0(this, applyCallback, 11));
        uVarI.a(consumerSingleObserver);
        this.f39634b.b(consumerSingleObserver);
    }

    public final void m(ApplyCallback applyCallback) {
        Threads.a();
        i();
        ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
        try {
            w();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new k0(this, this.f39639i.incrementAndGet(), 0)).j(this.f39638h).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g0(this, applyCallback2, 6), new g0(this, applyCallback2, 7));
            uVarI.a(consumerSingleObserver);
            this.f39634b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f0(this, th, applyCallback2, 0));
        }
    }

    public final void n(EffectIdCallback effectIdCallback) {
        Threads.a();
        i();
        Objects.requireNonNull(effectIdCallback, "callback can't be null");
        final EffectIdCallback effectIdCallback2 = (EffectIdCallback) Proxies.a(EffectIdCallback.class, effectIdCallback);
        try {
            w();
            final int i2 = 1;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new h0(this, PerfectLib.g.f39519h, i2)).j(this.f39638h).i(AndroidSchedulers.a());
            final int i3 = 0;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.x0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ HandVtoApplierImpl f41914b;

                {
                    this.f41914b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    HandVtoApplierImpl.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    HandVtoApplierImpl handVtoApplierImpl = this.f41914b;
                    switch (i4) {
                        case 0:
                            Log.g(3, handVtoApplierImpl.f39633a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = handVtoApplierImpl.f39633a;
                            if (!z) {
                                Log.e(str, "[getEffectIds] failed", th);
                                effectIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getEffectIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.x0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ HandVtoApplierImpl f41914b;

                {
                    this.f41914b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    HandVtoApplierImpl.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    HandVtoApplierImpl handVtoApplierImpl = this.f41914b;
                    switch (i4) {
                        case 0:
                            Log.g(3, handVtoApplierImpl.f39633a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = handVtoApplierImpl.f39633a;
                            if (!z) {
                                Log.e(str, "[getEffectIds] failed", th);
                                effectIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getEffectIds] task canceled", th);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            this.f39634b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, effectIdCallback2, 3));
        }
    }

    public final void o(ProductIdCallback productIdCallback) {
        Threads.a();
        i();
        Objects.requireNonNull(productIdCallback, "callback can't be null");
        final ProductIdCallback productIdCallback2 = (ProductIdCallback) Proxies.a(ProductIdCallback.class, productIdCallback);
        try {
            w();
            final int i2 = 0;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new h0(this, PerfectLib.g.f39519h, i2)).j(this.f39638h).i(AndroidSchedulers.a());
            final int i3 = 1;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.i0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ HandVtoApplierImpl f40334b;

                {
                    this.f40334b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    HandVtoApplierImpl.ProductIdCallback productIdCallback3 = productIdCallback2;
                    HandVtoApplierImpl handVtoApplierImpl = this.f40334b;
                    switch (i4) {
                        case 0:
                            Log.g(3, handVtoApplierImpl.f39633a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = handVtoApplierImpl.f39633a;
                            if (!z) {
                                Log.e(str, "[getProductIds] failed", th);
                                productIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getProductIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.i0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ HandVtoApplierImpl f40334b;

                {
                    this.f40334b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    HandVtoApplierImpl.ProductIdCallback productIdCallback3 = productIdCallback2;
                    HandVtoApplierImpl handVtoApplierImpl = this.f40334b;
                    switch (i4) {
                        case 0:
                            Log.g(3, handVtoApplierImpl.f39633a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = handVtoApplierImpl.f39633a;
                            if (!z) {
                                Log.e(str, "[getProductIds] failed", th);
                                productIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getProductIds] task canceled", th);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            this.f39634b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, productIdCallback2, 2));
        }
    }

    public abstract ListenableFuture q();

    public abstract ArrayList r(List list);

    public final void s(int i2) {
        int i3 = this.f39639i.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }

    public final void t(com.perfectcorp.perfectlib.ph.utility.b bVar) {
        List listSingletonList;
        Boolean bool;
        Objects.requireNonNull(bVar, "handParameter can't be null");
        PerfectEffect perfectEffect = bVar.f41735a;
        com.perfectcorp.perfectlib.ph.clflurry.b bVar2 = new com.perfectcorp.perfectlib.ph.clflurry.b(this.f39635c.eventFeature, this.d);
        com.perfectcorp.perfectlib.ph.clflurry.c.g(bVar, bVar2);
        String str = bVar.f41736b;
        if (TextUtils.isEmpty(str)) {
            listSingletonList = Collections.singletonList(perfectEffect.beautyMode);
            bool = Boolean.FALSE;
        } else {
            bVar2.q(str);
            listSingletonList = Collections.singletonList(perfectEffect.beautyMode);
            bool = Boolean.TRUE;
        }
        bVar2.l(listSingletonList, null, Collections.singletonList(bool));
        bVar2.b();
    }

    public final void u(List list, ApplyCallback applyCallback) {
        Threads.a();
        i();
        Objects.requireNonNull(list, "effectIds can't be null");
        ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        try {
            w();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new o0(this, this.f39639i.incrementAndGet(), immutableListU, 1)).j(this.f39638h).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g0(this, applyCallback2, 0), new g0(this, applyCallback2, 1));
            uVarI.a(consumerSingleObserver);
            this.f39634b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f0(this, th, applyCallback2, 3));
        }
    }

    public final Optional v(List list) {
        ArrayList arrayList = this.f39641k;
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        p(listUnmodifiableList, arrayList2, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        p(list, arrayList4, arrayList5);
        ArrayList arrayList6 = new ArrayList();
        if (!MoreCollections.a(arrayList4)) {
            arrayList2 = arrayList4;
        }
        arrayList6.addAll(arrayList2);
        if (!MoreCollections.a(arrayList5)) {
            arrayList3 = arrayList5;
        }
        arrayList6.addAll(arrayList3);
        Bitmap bitmap = (Bitmap) MoreFutures.b(f(arrayList6));
        arrayList.clear();
        arrayList.addAll(arrayList6);
        return Optional.b(bitmap);
    }

    public abstract void w();
}
