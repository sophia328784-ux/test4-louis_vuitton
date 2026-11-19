package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a61;
import defpackage.cr0;
import defpackage.ct0;
import defpackage.kt0;
import defpackage.ln0;
import defpackage.pv0;
import defpackage.pw0;
import defpackage.tv0;
import defpackage.xw0;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
final class SkinCare3RecommendationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f39885a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f39886b = new AtomicBoolean();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkinCare3RecommendationHandler$1, reason: invalid class name */
    class AnonymousClass1 implements RecommendationHandler.SyncServerCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ EventPublisher f39887a;

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void onFailure(Throwable th) {
        }

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void onSuccess() {
        }

        @Override // com.perfectcorp.perfectlib.RecommendationHandler.SyncServerCallback
        public final void progress(double d) {
            this.f39887a.a(RecommendationHandler.SyncServerCallback.class, new kt0(d, 3), CallingThread.MAIN);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkinCare3RecommendationHandler$2, reason: invalid class name */
    class AnonymousClass2 implements SkinCareProduct.GetInventoryCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ SingleEmitter f39888a;

        @Override // com.perfectcorp.perfectlib.SkinCareProduct.GetInventoryCallback
        public final void onFailure(Throwable th) {
            Log.e("SkinCare3RecommendationHandler", "[getInventory] failed", th);
            this.f39888a.onError(th);
        }

        @Override // com.perfectcorp.perfectlib.SkinCareProduct.GetInventoryCallback
        public final void onSuccess(List list) {
            this.f39888a.onSuccess(list);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkinCare3RecommendationHandler$3, reason: invalid class name */
    class AnonymousClass3 extends TypeToken<List<EffectType>> {
    }

    public static final class EffectType {
        final String srcType = "";
        final List<ProductOrder> productOrder = Collections.EMPTY_LIST;

        public static final class ProductOrder {
            final long id = -1;
            final long order = -1;
        }
    }

    public static final class Preferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BasicPreferences f39889a = new BasicPreferences(DatabaseSharedPreferences.a("SkinCare3RecommendationPreferences"));
    }

    public static final class RecommendationResult {
        final String status = "";
        final String errorMessage = "";
        final Results results = null;
        final JsonElement extra_info = null;

        public static final class Results {
            final List<Product> products = null;
            final Attrs attrs = null;

            public static final class Attrs {
                final String productOrders = "";
            }

            public static final class Product {
                final long productId = -1;
                final long weight = -1;
                final List<String> srcTypes = null;
            }
        }
    }

    public static final class RecommendationSetting {
        final String productIds = "";
        final String scriptPath = "";

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkinCare3RecommendationHandler$RecommendationSetting$1, reason: invalid class name */
        class AnonymousClass1 extends TypeToken<List<Long>> {
        }
    }

    public static final class Singleton {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SkinCare3RecommendationHandler f39890a = new SkinCare3RecommendationHandler();
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m a(final int i2, List list) {
        Single singleCollectInto = Observable.fromIterable(Lists.b(30, list)).flatMapSingle(new ct0(24)).map(new ct0(25)).flatMapIterable(Functions.f42605a).collectInto(new ConcurrentHashMap(), new ct0(26));
        Function function = new Function() { // from class: com.perfectcorp.perfectlib.g4
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList();
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    for (String str : ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e.a) ((Map.Entry) it.next()).getValue()).b()) {
                        if (!map.containsKey(str)) {
                            arrayList.add(str);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return Single.h(map);
                }
                int i3 = i2;
                if (i3 < 10) {
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(SkinCare3RecommendationHandler.a(i3 + 1, arrayList), new xw0(map, 0));
                }
                Log.g(5, "SkinCare3RecommendationHandler", "Product has recursive reference?");
                return Single.h(map);
            }
        };
        singleCollectInto.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(singleCollectInto, function);
    }

    public static String b(SkinCareRecommendationData skinCareRecommendationData) {
        JsonPrimitive jsonPrimitive;
        String str;
        ImmutableList<SkinAnalysisData> immutableList = skinCareRecommendationData.f39900a;
        JsonObject jsonObject = new JsonObject();
        for (SkinAnalysisData skinAnalysisData : immutableList) {
            String feature = skinAnalysisData.getFeature();
            feature.getClass();
            if (feature.equals("age_spot")) {
                jsonPrimitive = new JsonPrimitive(Integer.valueOf(skinAnalysisData.getScore()));
                str = "spot";
            } else if (feature.equals("dark_circle")) {
                jsonPrimitive = new JsonPrimitive(Integer.valueOf(skinAnalysisData.getScore()));
                str = "darkCircle";
            } else {
                jsonObject.o(skinAnalysisData.getFeature(), new JsonPrimitive(Integer.valueOf(skinAnalysisData.getScore())));
            }
            jsonObject.o(str, jsonPrimitive);
        }
        jsonObject.o("skin_age", new JsonPrimitive(Integer.valueOf(skinCareRecommendationData.f39902c)));
        return GsonHelper.f39260a.k(jsonObject);
    }

    public static ArrayList c(boolean z, Configuration.ImageSource imageSource, List list, int i2) {
        List listC;
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        for (Object obj : com.perfectcorp.perfectlib.rh.database.ymk.skincare.a.d.o(YMKDatabase.b(), list)) {
            com.perfectcorp.perfectlib.rh.database.ymk.skincare.c cVar = (com.perfectcorp.perfectlib.rh.database.ymk.skincare.c) obj;
            Objects.requireNonNull(cVar);
            builder.b(cVar.f41822a, obj);
        }
        try {
            ImmutableMap immutableMapA = builder.a();
            Log.g(3, "SkinCare3RecommendationHandler", "[querySkinCareProducts] match " + immutableMapA.size() + " products from database");
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (((com.perfectcorp.perfectlib.rh.database.ymk.skincare.c) immutableMapA.get(str)) != null) {
                    if (i2 >= 10) {
                        Log.g(5, "SkinCare3RecommendationHandler", "Product has recursive reference?");
                    } else {
                        com.perfectcorp.perfectlib.rh.database.ymk.skincare.b bVar = com.perfectcorp.perfectlib.rh.database.ymk.skincare.b.d;
                        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                        bVar.getClass();
                        Objects.requireNonNull(str);
                        List listH = bVar.h(sQLiteDatabaseB, "ReferencedId", "ProductId", str);
                        if (!listH.isEmpty()) {
                            listC = c(z, imageSource, listH, i2 + 1);
                        }
                        com.perfectcorp.perfectlib.rh.database.ymk.skincare.c cVar2 = (com.perfectcorp.perfectlib.rh.database.ymk.skincare.c) immutableMapA.get(str);
                        Objects.requireNonNull(cVar2);
                        arrayList.add(new SkinCareProduct(cVar2, listC, z, imageSource));
                    }
                    listC = Collections.EMPTY_LIST;
                    com.perfectcorp.perfectlib.rh.database.ymk.skincare.c cVar3 = (com.perfectcorp.perfectlib.rh.database.ymk.skincare.c) immutableMapA.get(str);
                    Objects.requireNonNull(cVar3);
                    arrayList.add(new SkinCareProduct(cVar3, listC, z, imageSource));
                }
            }
            return arrayList;
        } catch (IllegalArgumentException e2) {
            a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
            return null;
        }
    }

    public static void f() {
        SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
        HashSet<String> hashSet = new HashSet();
        DBUtility.i(sQLiteDatabaseC, new pw0(hashSet, sQLiteDatabaseC, 0));
        Preferences.f39889a.edit().clear().apply();
        for (String str : hashSet) {
            if (!TextUtils.isEmpty(str)) {
                FileUtils.c(new File(str));
            }
        }
    }

    public final void d(RecommendationData recommendationData, JsExecutor jsExecutor, String str, RecommendationHandler.GetRecommendedResultCallback getRecommendedResultCallback) {
        Objects.requireNonNull(getRecommendedResultCallback, "callback can't be null");
        int i2 = 3;
        Log.g(3, "SkinCare3RecommendationHandler", "[getRecommendedResult] start");
        if (!(recommendationData instanceof SkinCareRecommendationData)) {
            PfCommons.c(new cr0(getRecommendedResultCallback, 3));
            return;
        }
        SkinCareRecommendationData skinCareRecommendationData = (SkinCareRecommendationData) recommendationData;
        SurveyAnswer surveyAnswer = skinCareRecommendationData.f39901b;
        String strL = surveyAnswer == null ? "{}" : GsonHelper.f39260a.l(surveyAnswer.f39967a, new SurveyAnswer.AnonymousClass1().f42556b);
        int i3 = 4;
        if (this.f39886b.get()) {
            PfCommons.c(new cr0(getRecommendedResultCallback, 4));
            return;
        }
        boolean z = PerfectLib.g.f39519h;
        Configuration.ImageSource imageSource = PerfectLib.g.d;
        int i4 = 11;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p pVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new z(skinCareRecommendationData, strL, i4));
        Scheduler scheduler = Schedulers.f43170c;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(pVar.j(scheduler), new ln0(jsExecutor, i4)).i(scheduler), new c4(this, z, imageSource, str)).f(new pv0(i3)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new tv0(getRecommendedResultCallback, 2), new tv0(getRecommendedResultCallback, i2));
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final RecommendationHandler.SyncingTask e() {
        DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("SkinCare3RecommendationHandler#syncServer");
        EventPublisher eventPublisher = new EventPublisher();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new d4(this, downloadTaskCancelable, eventPublisher)).h(new e4(this, 0)).f(new e4(this, 1)));
        while (true) {
            AtomicReference atomicReference = this.f39885a;
            RecommendationHandler.SyncingTask syncingTask = (RecommendationHandler.SyncingTask) atomicReference.get();
            if (syncingTask != null) {
                return syncingTask;
            }
            RecommendationHandler.SyncingTask syncingTask2 = new RecommendationHandler.SyncingTask(downloadTaskCancelable, eventPublisher, bVar);
            while (!atomicReference.compareAndSet(null, syncingTask2)) {
                if (atomicReference.get() != null) {
                }
            }
            return syncingTask2;
        }
    }
}
