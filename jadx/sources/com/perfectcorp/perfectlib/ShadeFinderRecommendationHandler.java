package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.jniproxy.CUIShadeFinder;
import com.perfectcorp.perfectlib.makeupcam.camera.ColorLab32f;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDbHelper;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.cr0;
import defpackage.kt0;
import defpackage.o7;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
final class ShadeFinderRecommendationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f39869a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f39870b = new AtomicBoolean();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ShadeFinderRecommendationHandler$1, reason: invalid class name */
    class AnonymousClass1 implements RecommendationHandler.SyncServerCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ Pair f39871a;

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void onFailure(Throwable th) {
        }

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void onSuccess() {
        }

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void progress(double d) {
            ((EventPublisher) this.f39871a.second).a(RecommendationHandler.SyncServerCallback.class, new kt0(d, 2), CallingThread.MAIN);
        }
    }

    public static final class ShadeFinderSingleton {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CUIShadeFinder f39872a = new CUIShadeFinder(IO.d(PfCommonsJni.a()).concat("libvenus_shadefinder.so"));
    }

    public static final class Singleton {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShadeFinderRecommendationHandler f39873a = new ShadeFinderRecommendationHandler();
    }

    public static final class SkuData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final transient ProductInfo f39874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final transient SkuInfo f39875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final transient ColorLab32f f39876c;
        public final transient com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.c d;
        float distance;
        int order;

        public SkuData(ProductInfo productInfo, SkuInfo skuInfo, ColorLab32f colorLab32f, com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.c cVar) {
            this.f39874a = productInfo;
            this.f39875b = skuInfo;
            this.f39876c = colorLab32f;
            this.d = cVar;
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("SkuData");
            toStringHelper.b("skuGuid", this.f39874a.f39799e);
            toStringHelper.b("skuItemGuid", this.f39875b.f39943c);
            toStringHelper.b("order", Integer.valueOf(this.order));
            toStringHelper.b("distance", Float.valueOf(this.distance));
            return toStringHelper.toString();
        }
    }

    public static Optional a(String str, String str2, boolean z) {
        String str3;
        if (z) {
            try {
                str3 = ((IdRow) new o7(str, str2, 7).call()).f41149c;
            } catch (Throwable th) {
                Log.e("ShadeFinderRecommendationHandler", "[getProductAndSkuPair] query product mapping failed.", th);
                return Optional.a();
            }
        } else {
            str3 = str;
        }
        SkuHandler skuHandler = SkuHandler.getInstance();
        if (skuHandler == null) {
            Log.d("ShadeFinderRecommendationHandler", "[getProductAndSkuPair] SkuHandler is null.");
            return Optional.a();
        }
        Optional optionalA = SkuDao.a(YMKDatabase.b(), str, false);
        if (optionalA.d()) {
            Sku sku = (Sku) optionalA.c();
            ProductInfo productInfoL = skuHandler.l(SkuTemplateUtils.c(sku.f41263b), str3, sku, z);
            for (SkuInfo skuInfo : productInfoL.getSkus()) {
                if (str2.equalsIgnoreCase(skuInfo.f39943c)) {
                    return Optional.e(Pair.create(productInfoL, skuInfo));
                }
            }
        }
        Log.d("ShadeFinderRecommendationHandler", "[getProductAndSkuPair] No matched product info and sku info. skuGuid=" + str + ", skuItemGuid=" + str2);
        return Optional.a();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    /* JADX WARN: Code duplicated, block: B:9:0x0026  */
    public static Optional b(String str, boolean z, ShadeFinderProduct.Type type) {
        Optional optionalA;
        Optional optionalA2;
        String strSubstring;
        if (!TextUtils.isEmpty(str)) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf >= 0) {
                strSubstring = str.substring(0, iLastIndexOf);
                if (SkuDao.a(YMKDatabase.b(), strSubstring, false).d()) {
                    optionalA2 = a(strSubstring, str, z);
                } else {
                    optionalA = SkuDbHelper.a(str);
                    if (optionalA.d()) {
                        strSubstring = ((Sku) optionalA.c()).f41266f;
                        optionalA2 = a(strSubstring, str, z);
                    } else {
                        Log.g(3, "ShadeFinderRecommendationHandler", "[getProductAndSkuPair] No SKU can be found.");
                        optionalA2 = Optional.a();
                    }
                }
            } else {
                optionalA = SkuDbHelper.a(str);
                if (optionalA.d()) {
                    strSubstring = ((Sku) optionalA.c()).f41266f;
                    optionalA2 = a(strSubstring, str, z);
                } else {
                    Log.g(3, "ShadeFinderRecommendationHandler", "[getProductAndSkuPair] No SKU can be found.");
                    optionalA2 = Optional.a();
                }
            }
            if (optionalA2.d()) {
                return Optional.e(new ShadeFinderProduct((ProductInfo) ((Pair) optionalA2.c()).first, (SkuInfo) ((Pair) optionalA2.c()).second, type));
            }
        }
        return Optional.a();
    }

    public static Optional c(List list, int i2, float f2, float f3, ShadeFinderProduct.Type type) {
        if (f2 <= f3 && i2 >= 0) {
            SkuData skuData = (SkuData) list.get(i2);
            return Optional.e(new ShadeFinderProduct(skuData.f39874a, skuData.f39875b, type));
        }
        return Optional.a();
    }

    public static void d(RecommendationData recommendationData, final RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback) {
        Objects.requireNonNull(recommendationData, "recommendationData can't be null");
        Objects.requireNonNull(getRecommendedResultCallback, "callback can't be null");
        Log.g(3, "ShadeFinderRecommendationHandler", "[getRecommendedResult] start");
        if (!(recommendationData instanceof ShadeFinderRecommendationData)) {
            PfCommons.c(new cr0(getRecommendedResultCallback, 2));
            return;
        }
        ShadeFinderRecommendationData shadeFinderRecommendationData = (ShadeFinderRecommendationData) recommendationData;
        final ShadeFinderData shadeFinderData = shadeFinderRecommendationData.f39867a;
        final ShadeFinderDeltaE shadeFinderDeltaE = shadeFinderRecommendationData.f39868b;
        final PerfectEffect perfectEffect = PerfectEffect.FOUNDATION;
        final boolean z = PerfectLib.g.f39519h;
        final AtomicReference atomicReference = new AtomicReference(SkuHandler.ListStatus.OK);
        ApplyEffectUtility.z(new Callable() { // from class: uv0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i2 = 1;
                u uVarI = new m(new c(new a8(14)).j(Schedulers.f43170c), new uc0(1, perfectEffect, atomicReference, shadeFinderData, shadeFinderDeltaE, z)).f(new pv0(i2)).i(AndroidSchedulers.a());
                RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback2 = getRecommendedResultCallback;
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new tv0(getRecommendedResultCallback2, 0), new tv0(getRecommendedResultCallback2, i2));
                uVarI.a(consumerSingleObserver);
                return consumerSingleObserver;
            }
        });
    }

    public final RecommendationHandler.SyncingTask e() {
        Pair pairCreate = Pair.create(new DownloadTaskCancelable("ShadeFinderRecommendationHandler#syncServer"), new EventPublisher());
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.f(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new i(this, pairCreate)), AndroidSchedulers.a()), new x3(this, 0)));
        while (true) {
            AtomicReference atomicReference = this.f39869a;
            RecommendationHandler.SyncingTask syncingTask = (RecommendationHandler.SyncingTask) atomicReference.get();
            if (syncingTask != null) {
                return syncingTask;
            }
            RecommendationHandler.SyncingTask syncingTask2 = new RecommendationHandler.SyncingTask((DownloadTaskCancelable) pairCreate.first, (EventPublisher) pairCreate.second, bVar);
            while (!atomicReference.compareAndSet(null, syncingTask2)) {
                if (atomicReference.get() != null) {
                }
            }
            return syncingTask2;
        }
    }
}
