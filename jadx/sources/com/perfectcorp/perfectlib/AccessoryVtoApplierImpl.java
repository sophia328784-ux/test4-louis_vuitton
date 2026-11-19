package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AccessoryVtoApplierImpl extends AccessoryVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f39463b;
    public final com.perfectcorp.perfectlib.ph.clflurry.b.a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39465e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39467h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.perfectcorp.perfectlib.ph.utility.a f39470k;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f39466f = new AtomicInteger();
    public DownloadTaskCancelable g = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f39468i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Configuration.ImageSource f39469j = PerfectLib.g.d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PerfectEffect f39464c = PerfectEffect.NECKLACE;

    public interface EffectIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List list);
    }

    public interface ProductIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List list);
    }

    public AccessoryVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39462a = str;
        this.f39463b = compositeDisposable;
        this.d = aVar;
        this.f39465e = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#downloadTaskExecutor"))));
        this.f39467h = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#applyTaskExecutor"))));
    }

    public static Pair b(List list, boolean z) {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar;
        ArrayList arrayList = new ArrayList();
        if (PerfectLib.g.f39519h) {
            Single list2 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(0, arrayList)).toList();
            defpackage.q2 q2Var = new defpackage.q2(0, arrayList);
            list2.getClass();
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list2, q2Var);
        } else {
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ApplyEffectUtility.j(list, z, null), new defpackage.q2(1, arrayList));
        }
        return (Pair) tVar.c();
    }

    public static com.perfectcorp.perfectlib.ph.utility.a c(List list) {
        com.perfectcorp.perfectlib.ph.utility.a aVar;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            VtoSetting vtoSetting = (VtoSetting) it.next();
            Sku skuD = ApplyEffectUtility.d(vtoSetting);
            String str = vtoSetting.f40016c;
            if (SkuTemplateUtils.a(skuD.f41263b) == SkuBeautyMode$FeatureType.NECKLACE) {
                Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str);
                if (optionalD.d()) {
                    YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c()).a().patternGeneral.guid).get(0);
                    com.perfectcorp.perfectlib.ph.utility.a.C0185a c0185a = new com.perfectcorp.perfectlib.ph.utility.a.C0185a(PerfectEffect.NECKLACE, vtoSetting.f40015b, str);
                    String str2 = mask.E;
                    Objects.requireNonNull(str2, "obbPath can't be null");
                    c0185a.d = str2;
                    aVar = new com.perfectcorp.perfectlib.ph.utility.a(c0185a);
                    break;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        md.k("No valid accessory VtoSetting");
        return null;
    }

    public static List e(boolean z, com.perfectcorp.perfectlib.ph.utility.a aVar) {
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (aVar != null) {
            EffectId.Builder builder2 = new EffectId.Builder(PerfectEffect.NECKLACE);
            builder2.f39568c = EffectId.c(aVar.f41730b);
            builder2.d = EffectId.c(aVar.f41731c);
            builder2.m = aVar;
            builder.f(builder2.a());
        }
        ImmutableList immutableListI = builder.i();
        return z ? ProductMappingUtility.c(immutableListI) : immutableListI;
    }

    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier
    public final Cancelable apply(List list, AccessoryVtoApplier.ApplyCallback applyCallback) throws Throwable {
        Threads.a();
        f();
        Objects.requireNonNull(list, "vtoSettings can't be null");
        AccessoryVtoApplier.ApplyCallback applyCallback2 = (AccessoryVtoApplier.ApplyCallback) Proxies.a(AccessoryVtoApplier.ApplyCallback.class, applyCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        int i2 = 0;
        try {
            k();
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            Log.g(3, this.f39462a, "[apply] copiedVtoSettings=" + immutableListU + ", cacheStrategy=" + downloadCacheStrategy);
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new k(this, this.f39468i.incrementAndGet(), immutableListU, i2)).j(this.f39467h).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new j(this, applyCallback2, 4), new j(this, applyCallback2, 5));
                uVarI.a(consumerSingleObserver);
                this.f39463b.b(consumerSingleObserver);
                return DownloadTaskCancelable.f40351e;
            }
            int iIncrementAndGet = this.f39466f.incrementAndGet();
            int iIncrementAndGet2 = this.f39468i.incrementAndGet();
            this.g.cancel();
            DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplySkus");
            this.g = downloadTaskCancelable;
            SkuHandler.h(downloadTaskCancelable);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new m(this, iIncrementAndGet, immutableListU, downloadCacheStrategy, downloadTaskCancelable, 0)).j(this.f39465e).i(this.f39467h), new n(this, iIncrementAndGet2, 0)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new j(this, applyCallback2, 6), new j(this, applyCallback2, 7));
            uVarI2.a(consumerSingleObserver2);
            this.f39463b.b(consumerSingleObserver2);
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new d(this, th, applyCallback2, i2));
        }
    }

    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier
    public final void applyEffectIds(List list, AccessoryVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        f();
        Objects.requireNonNull(list, "effectIds can't be null");
        AccessoryVtoApplier.ApplyCallback applyCallback2 = (AccessoryVtoApplier.ApplyCallback) Proxies.a(AccessoryVtoApplier.ApplyCallback.class, applyCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        int i2 = 2;
        try {
            k();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new k(this, this.f39468i.incrementAndGet(), immutableListU, 1)).j(this.f39467h).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new j(this, applyCallback2, i2), new j(this, applyCallback2, 3));
            uVarI.a(consumerSingleObserver);
            this.f39463b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d(this, th, applyCallback2, i2));
        }
    }

    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier
    public final void clearAllEffects(AccessoryVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        f();
        AccessoryVtoApplier.ApplyCallback applyCallback2 = (AccessoryVtoApplier.ApplyCallback) Proxies.a(AccessoryVtoApplier.ApplyCallback.class, applyCallback);
        int i2 = 1;
        try {
            k();
            int i3 = 0;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(this, i3)).j(this.f39467h).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new j(this, applyCallback2, i3), new j(this, applyCallback2, i2));
            uVarI.a(consumerSingleObserver);
            this.f39463b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d(this, th, applyCallback2, i2));
        }
    }

    public abstract ListenableFuture d(com.perfectcorp.perfectlib.ph.utility.a aVar);

    public abstract void f();

    public final void g(int i2) {
        int i3 = this.f39466f.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
        }
    }

    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier
    public final void getEffectIds(AccessoryVtoApplier.EffectIdCallback effectIdCallback) {
        Threads.a();
        f();
        Objects.requireNonNull(effectIdCallback, "callback can't be null");
        final EffectIdCallback effectIdCallback2 = (EffectIdCallback) Proxies.a(EffectIdCallback.class, effectIdCallback);
        final int i2 = 0;
        try {
            k();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new g(this, PerfectLib.g.f39519h, i2)).j(this.f39467h).i(AndroidSchedulers.a());
            final int i3 = 1;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.h

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AccessoryVtoApplierImpl f40181b;

                {
                    this.f40181b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    AccessoryVtoApplierImpl.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40181b;
                    switch (i4) {
                        case 0:
                            Log.g(3, accessoryVtoApplierImpl.f39462a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = accessoryVtoApplierImpl.f39462a;
                            if (!z) {
                                Log.e(str, "[getEffectIds] failed", th);
                                effectIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getEffectIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.h

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AccessoryVtoApplierImpl f40181b;

                {
                    this.f40181b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    AccessoryVtoApplierImpl.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40181b;
                    switch (i4) {
                        case 0:
                            Log.g(3, accessoryVtoApplierImpl.f39462a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = accessoryVtoApplierImpl.f39462a;
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
            this.f39463b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, effectIdCallback2, i2));
        }
    }

    @Override // com.perfectcorp.perfectlib.AccessoryVtoApplier
    public final void getProductIds(AccessoryVtoApplier.ProductIdCallback productIdCallback) {
        Threads.a();
        f();
        Objects.requireNonNull(productIdCallback, "callback can't be null");
        final ProductIdCallback productIdCallback2 = (ProductIdCallback) Proxies.a(ProductIdCallback.class, productIdCallback);
        final int i2 = 1;
        try {
            k();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new g(this, PerfectLib.g.f39519h, i2)).j(this.f39467h).i(AndroidSchedulers.a());
            final int i3 = 0;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.e

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AccessoryVtoApplierImpl f40118b;

                {
                    this.f40118b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    AccessoryVtoApplierImpl.ProductIdCallback productIdCallback3 = productIdCallback2;
                    AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40118b;
                    switch (i4) {
                        case 0:
                            Log.g(3, accessoryVtoApplierImpl.f39462a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = accessoryVtoApplierImpl.f39462a;
                            if (!z) {
                                Log.e(str, "[getProductIds] failed", th);
                                productIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getProductIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.e

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AccessoryVtoApplierImpl f40118b;

                {
                    this.f40118b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    AccessoryVtoApplierImpl.ProductIdCallback productIdCallback3 = productIdCallback2;
                    AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40118b;
                    switch (i4) {
                        case 0:
                            Log.g(3, accessoryVtoApplierImpl.f39462a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = accessoryVtoApplierImpl.f39462a;
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
            this.f39463b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, productIdCallback2, i2));
        }
    }

    public abstract ListenableFuture h();

    public final void i(int i2) {
        int i3 = this.f39468i.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }

    public final void j(com.perfectcorp.perfectlib.ph.utility.a aVar) {
        com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Necklace, this.d);
        String str = aVar.f41731c;
        bVar.p(null, aVar.f41730b);
        bVar.r(null, str);
        bVar.s(null, str);
        bVar.b();
    }

    public void k() {
    }
}
