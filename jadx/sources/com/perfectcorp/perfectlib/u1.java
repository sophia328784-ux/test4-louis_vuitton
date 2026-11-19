package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.generictag.f;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimaps;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import defpackage.f7;
import defpackage.hy0;
import defpackage.ln0;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.px0;
import defpackage.rx0;
import defpackage.sw0;
import defpackage.xx0;
import java.io.File;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f41872c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f41874f;

    public /* synthetic */ u1(SkuHandler skuHandler, PerfectEffect perfectEffect, boolean z, AtomicReference atomicReference) {
        this.f41871b = 1;
        this.d = skuHandler;
        this.f41873e = perfectEffect;
        this.f41872c = z;
        this.f41874f = atomicReference;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2;
        String str;
        YMKPrimitiveData.Pattern patternW;
        Sku sku;
        Single singleH;
        Optional optionalA;
        int i3 = this.f41871b;
        ProductMappingUtility.SkuToProductMapperInterface skuToProductMapper = ProductMappingUtility.SkuToProductMapperInterface.f39807a;
        boolean z = this.f41872c;
        Object obj2 = this.f41874f;
        Object obj3 = this.f41873e;
        Object obj4 = this.d;
        switch (i3) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.h((ApplyEffectCtrl) obj4, (LiveSettingCtrl) obj3, (BeautyMode) ((GroupedObservable) obj2).f43162b, (List) obj, z);
            case 1:
                SkuHandler skuHandler = (SkuHandler) obj4;
                PerfectEffect perfectEffect = (PerfectEffect) obj3;
                AtomicReference atomicReference = (AtomicReference) obj2;
                List<Sku> list = (List) obj;
                if (perfectEffect.beautyMode.isAccessory() && (i2 = SkuHandler.AnonymousClass1.f39938a[perfectEffect.ordinal()]) != 1 && i2 != 2 && i2 != 3 && i2 != 4 && i2 != 5) {
                    LinkedList linkedList = new LinkedList();
                    for (Sku sku2 : list) {
                        Iterator it = SkuItemDao.b(YMKDatabase.c(), sku2.f41266f).iterator();
                        do {
                            if (!it.hasNext()) {
                                linkedList.add(sku2);
                            }
                            com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) it.next();
                            if (perfectEffect == PerfectEffect.EYEWEAR_3D) {
                                com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = eVar.a();
                                if (bVarA == null || TextUtils.isEmpty(bVarA.pattern.guid)) {
                                    md.k(n00.r(eVar.f41292a, "'", new StringBuilder("No pattern GUID can be found in SKU '")));
                                    return null;
                                }
                                str = bVarA.pattern.guid;
                            } else {
                                str = eVar.f41292a;
                            }
                            patternW = TemplateUtils.w(str);
                            if (patternW != null) {
                            }
                            break;
                        } while (patternW.g.b());
                    }
                    list = linkedList;
                }
                if (z) {
                    skuToProductMapper = new ProductMappingUtility.SkuToProductMapper(perfectEffect.beautyMode.getFeatureType());
                }
                LinkedList linkedList2 = new LinkedList();
                for (Sku sku3 : list) {
                    String str2 = sku3.f41266f;
                    String strA = skuToProductMapper.a(str2);
                    if (strA.equals(EffectId.INVALID_ID)) {
                        atomicReference.set(SkuHandler.ListStatus.MAPPING_INCOMPLETE);
                    } else {
                        ProductInfo productInfo = new ProductInfo(perfectEffect, strA, sku3, skuHandler.f39935b);
                        List<com.perfectcorp.perfectlib.ph.database.ymk.sku.e> listB = SkuItemDao.b(YMKDatabase.c(), str2);
                        if (listB.isEmpty()) {
                            SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                            Threads.b();
                            listB = com.perfectcorp.perfectlib.ph.database.ymk.sku.g.c(sQLiteDatabaseC, Contract.SkuItemOnly.f40245a, "skuGuid=? AND isDeleted=?", new String[]{str2, ContentTree.ROOT_ID});
                        }
                        AbstractSet abstractSetM = SkuHandler.m(str2);
                        ArrayList arrayList = new ArrayList();
                        for (com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar2 : listB) {
                            String str3 = eVar2.f41292a;
                            SkuHandler skuHandler2 = skuHandler;
                            String strA2 = skuToProductMapper.a(str2, str3);
                            if (strA2.equals(EffectId.INVALID_ID)) {
                                atomicReference.set(SkuHandler.ListStatus.MAPPING_INCOMPLETE);
                            } else if (abstractSetM.contains(str3)) {
                                arrayList.add(SkuInfo.a(productInfo, strA2, eVar2));
                            } else {
                                defpackage.a.v(3, "[transformMetadataToInfo] Filter out SKU by product mask. skuGuid=", str3, "SkuHandler");
                            }
                            skuHandler = skuHandler2;
                        }
                        SkuHandler skuHandler3 = skuHandler;
                        if (arrayList.isEmpty()) {
                            Log.g(3, "SkuHandler", "[transformMetadataToInfo] Filter out product since it has no SKUs. productGuid=".concat(str2));
                        } else {
                            productInfo.f39802i.addAll(arrayList);
                            Log.g(3, "SkuHandler", "[transformMetadataToInfo] productGuid=" + str2 + ", skuInfos.size()=" + arrayList.size());
                            linkedList2.add(productInfo);
                        }
                        skuHandler = skuHandler3;
                    }
                }
                return ImmutableList.u(linkedList2);
            case 2:
                PerfectEffect perfectEffect2 = (PerfectEffect) obj4;
                AtomicReference atomicReference2 = (AtomicReference) obj3;
                ImmutableSet immutableSet = (ImmutableSet) obj2;
                List<com.perfectcorp.perfectlib.ph.database.ymk.sku.e> list2 = (List) obj;
                if (z) {
                    skuToProductMapper = new ProductMappingUtility.SkuToProductMapper(perfectEffect2.beautyMode.getFeatureType());
                }
                HashMap map = new HashMap();
                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar3 : list2) {
                    String str4 = eVar3.f41293b;
                    List arrayList2 = (List) map.get(str4);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(str4, arrayList2);
                    }
                    arrayList2.add(eVar3);
                }
                List<Sku> listG = SkuDao.g(YMKDatabase.b(), perfectEffect2.beautyMode.getFeatureType().toString(), ItemSubType.NONE);
                HashMap map2 = new HashMap();
                for (Sku sku4 : listG) {
                    map2.put(sku4.f41266f, sku4);
                }
                LinkedList linkedList3 = new LinkedList();
                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar4 : list2) {
                    String str5 = eVar4.f41293b;
                    String strA3 = skuToProductMapper.a(str5);
                    if (strA3.equals(EffectId.INVALID_ID)) {
                        atomicReference2.set(SkuHandler.ListStatus.MAPPING_INCOMPLETE);
                    } else if (immutableSet.contains(eVar4.f41292a) && (sku = (Sku) map2.get(str5)) != null) {
                        ProductInfo productInfo2 = new ProductInfo(perfectEffect2, strA3, sku, Configuration.ImageSource.URL);
                        List<com.perfectcorp.perfectlib.ph.database.ymk.sku.e> list3 = (List) map.get(sku.f41266f);
                        if (list3 != null && !list3.isEmpty()) {
                            ArrayList arrayList3 = new ArrayList();
                            for (com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar5 : list3) {
                                PerfectEffect perfectEffect3 = perfectEffect2;
                                String strA4 = skuToProductMapper.a(str5, eVar5.f41292a);
                                if (strA4.equals(EffectId.INVALID_ID)) {
                                    atomicReference2.set(SkuHandler.ListStatus.MAPPING_INCOMPLETE);
                                } else {
                                    arrayList3.add(SkuInfo.a(productInfo2, strA4, eVar5));
                                }
                                perfectEffect2 = perfectEffect3;
                            }
                            PerfectEffect perfectEffect4 = perfectEffect2;
                            if (arrayList3.isEmpty()) {
                                defpackage.a.v(3, "[transformMetadataToInfo] Filter out product since it has no SKUs. productGuid=", str5, "SkuHandler");
                            } else {
                                productInfo2.f39802i.addAll(arrayList3);
                                linkedList3.add(productInfo2);
                            }
                            perfectEffect2 = perfectEffect4;
                        }
                    }
                }
                return ImmutableList.u(linkedList3);
            default:
                final TagHandler.Type type = (TagHandler.Type) obj4;
                final ProgressCallback progressCallback = (ProgressCallback) obj3;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj2;
                RequestTask.Response response = (RequestTask.Response) obj;
                if (response.f39357a == 304) {
                    Log.g(3, "TagHandler", "[syncServer] type=" + type + " up-to-date");
                    PfCommons.c(new px0(progressCallback, 10));
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
                downloadTaskCancelable.c();
                PfCommons.c(new px0(progressCallback, 11));
                final com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a) response.f39358b;
                Objects.requireNonNull(aVar);
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a c0174aA = aVar.a();
                final List listV = pq0.v();
                final List<com.perfectcorp.perfectlib.ph.database.ymk.generictag.f> listV2 = pq0.v();
                List listSynchronizedList = Collections.synchronizedList(new ArrayList());
                Log.g(3, "TagHandler", "[convertResponseToDbInfos] start");
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.C0175a c0175aB = c0174aA.b();
                Iterator it2 = c0174aA.a().iterator();
                while (it2.hasNext()) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b bVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b) it2.next();
                    String strA5 = bVar.a();
                    List listC = bVar.c();
                    Iterator it3 = bVar.b().iterator();
                    while (it3.hasNext()) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b.C0176a c0176a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b.C0176a) it3.next();
                        com.perfectcorp.perfectlib.ph.database.ymk.generictag.c.a aVar2 = new com.perfectcorp.perfectlib.ph.database.ymk.generictag.c.a();
                        Objects.requireNonNull(strA5);
                        aVar2.f41178a = strA5;
                        boolean z2 = z;
                        aVar2.f41179b = c0176a.a();
                        String strB = c0176a.b();
                        Objects.requireNonNull(strB);
                        aVar2.f41180c = strB;
                        aVar2.d = c0176a.c();
                        listV.add(new com.perfectcorp.perfectlib.ph.database.ymk.generictag.c(aVar2));
                        Iterator it4 = c0176a.d().iterator();
                        while (it4.hasNext()) {
                            com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b.C0176a.C0177a c0177a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a.C0174a.b.C0176a.C0177a) it4.next();
                            com.perfectcorp.perfectlib.ph.database.ymk.generictag.f.a aVar3 = new com.perfectcorp.perfectlib.ph.database.ymk.generictag.f.a();
                            aVar3.f41193a = strA5;
                            Iterator it5 = it4;
                            aVar3.f41194b = c0177a.a();
                            String strB2 = c0177a.b();
                            Objects.requireNonNull(strB2);
                            aVar3.f41195c = strB2;
                            String strD = c0177a.d();
                            Objects.requireNonNull(strD);
                            aVar3.d = strD;
                            aVar3.f41196e = c0176a.a();
                            listV2.add(new com.perfectcorp.perfectlib.ph.database.ymk.generictag.f(aVar3));
                            for (String str6 : c0177a.c()) {
                                com.perfectcorp.perfectlib.ph.database.ymk.generictag.e.a aVar4 = new com.perfectcorp.perfectlib.ph.database.ymk.generictag.e.a();
                                aVar4.f41185a = strA5;
                                Iterator it6 = it2;
                                String str7 = (String) c0175aB.a(str6).f("");
                                Objects.requireNonNull(str7);
                                aVar4.f41186b = str7;
                                aVar4.f41187c = c0177a.a();
                                aVar4.d = listC.contains(str6);
                                Objects.requireNonNull(str6);
                                aVar4.f41188e = str6;
                                listSynchronizedList.add(new com.perfectcorp.perfectlib.ph.database.ymk.generictag.e(aVar4));
                                strA5 = strA5;
                                it3 = it3;
                                it2 = it6;
                                c0175aB = c0175aB;
                            }
                            it4 = it5;
                        }
                        z = z2;
                    }
                    downloadTaskCancelable.c();
                }
                boolean z3 = z;
                Log.g(3, "TagHandler", "[convertResponseToDbInfos] end");
                PfCommons.c(new px0(progressCallback, 12));
                Log.g(3, "TagHandler", "[downloadImages] start");
                HashMap map3 = new HashMap();
                for (com.perfectcorp.perfectlib.ph.database.ymk.generictag.f fVar : listV2) {
                    map3.put(Long.valueOf(fVar.f41190b), fVar);
                }
                Collection collectionValues = map3.values();
                int size = collectionValues.size();
                AtomicInteger atomicInteger = new AtomicInteger();
                HashMap map4 = new HashMap();
                ArrayList arrayList4 = new ArrayList();
                Iterator it7 = collectionValues.iterator();
                while (it7.hasNext()) {
                    final com.perfectcorp.perfectlib.ph.database.ymk.generictag.f fVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.generictag.f) it7.next();
                    String str8 = fVar2.d;
                    if (TextUtils.isEmpty(str8)) {
                        PfCommons.c(new rx0(progressCallback, atomicInteger, size, 8));
                    } else {
                        DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
                        builder.f40310a = str8;
                        Iterator it8 = it7;
                        List list4 = listSynchronizedList;
                        builder.f40312c = Long.toString(fVar2.f41190b);
                        builder.d = type.f39992e;
                        if (z3) {
                            if (map4.containsKey(str8)) {
                                DownloadImageInfo downloadImageInfo = (DownloadImageInfo) map4.get(str8);
                                Objects.requireNonNull(downloadImageInfo);
                                optionalA = Optional.e(downloadImageInfo);
                            } else {
                                List listE = DownloadImageDao.d.e(YMKDatabase.b(), ConfigurationName.DOWNLOAD_PLUGIN_URL, str8);
                                if (listE.isEmpty()) {
                                    optionalA = Optional.a();
                                } else {
                                    DownloadImageInfo downloadImageInfo2 = (DownloadImageInfo) listE.get(0);
                                    Optional optionalE = Optional.e(downloadImageInfo2);
                                    map4.put(str8, downloadImageInfo2);
                                    optionalA = optionalE;
                                }
                            }
                            if (optionalA.d()) {
                                DownloadImageInfo downloadImageInfo3 = (DownloadImageInfo) optionalA.c();
                                builder.f40311b = downloadImageInfo3.f40307b;
                                builder.f40313e = downloadImageInfo3.f40309e;
                                singleH = Single.h(builder);
                            } else {
                                final String strC = NetworkManager.c(str8);
                                final int i4 = 0;
                                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.j jVarF = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new sw0(strC, downloadTaskCancelable, 3)).j(FileDownloader.d), new ln0(builder, 17)).f(new Consumer() { // from class: t21
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                                    public final void accept(Object obj5) {
                                        int i5 = i4;
                                        String str9 = strC;
                                        f fVar3 = fVar2;
                                        switch (i5) {
                                            case 0:
                                                Log.g(3, "TagHandler", "[downloadImage] Download success tagId=" + fVar3.f41190b + ", url=" + str9);
                                                break;
                                            default:
                                                Log.e("TagHandler", "[downloadImage] Download failed tagId=" + fVar3.f41190b + ", url=" + str9, (Throwable) obj5);
                                                break;
                                        }
                                    }
                                });
                                final int i5 = 1;
                                singleH = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(jVarF, new Consumer() { // from class: t21
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                                    public final void accept(Object obj5) {
                                        int i6 = i5;
                                        String str9 = strC;
                                        f fVar3 = fVar2;
                                        switch (i6) {
                                            case 0:
                                                Log.g(3, "TagHandler", "[downloadImage] Download success tagId=" + fVar3.f41190b + ", url=" + str9);
                                                break;
                                            default:
                                                Log.e("TagHandler", "[downloadImage] Download failed tagId=" + fVar3.f41190b + ", url=" + str9, (Throwable) obj5);
                                                break;
                                        }
                                    }
                                });
                            }
                        } else {
                            singleH = Single.h(builder);
                        }
                        arrayList4.add(singleH.f(new hy0(progressCallback, atomicInteger, size)).l());
                        listSynchronizedList = list4;
                        it7 = it8;
                    }
                }
                final List list5 = listSynchronizedList;
                Log.g(3, "TagHandler", "[downloadImages] end");
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Observable.merge(arrayList4).toList().f(new Consumer() { // from class: com.perfectcorp.perfectlib.l4
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj5) {
                        final Iterable iterable = (Iterable) obj5;
                        ProgressCallback progressCallback2 = progressCallback;
                        PfCommons.c(new px0(progressCallback2, 13));
                        final ArrayList<String> arrayList5 = new ArrayList();
                        Log.g(3, "TagHandler", "[insertToDb] start");
                        final SQLiteDatabase sQLiteDatabaseC2 = YMKDatabase.c();
                        final TagHandler.Type type2 = type;
                        final List list6 = listV2;
                        final List list7 = listV;
                        final List list8 = list5;
                        DBUtility.i(sQLiteDatabaseC2, new Runnable() { // from class: com.perfectcorp.perfectlib.m4
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r8v6, types: [java.util.ArrayList] */
                            /* JADX WARN: Type inference failed for: r8v7, types: [java.util.Collection] */
                            /* JADX WARN: Type inference failed for: r8v8, types: [java.util.List] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                SQLiteDatabase sQLiteDatabase;
                                ?? arrayList6;
                                Log.g(3, "TagHandler", "[insertToDb] enter transaction");
                                xx0 xx0Var = new xx0(12);
                                List list9 = list6;
                                ImmutableSet immutableSetKeySet = Multimaps.a(list9, xx0Var).f42233f.keySet();
                                HashSet hashSet = new HashSet();
                                TagHandler.Type type3 = type2;
                                for (String str9 : type3.d) {
                                    com.perfectcorp.perfectlib.ph.database.ymk.generictag.a aVar5 = com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d;
                                    SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                                    aVar5.getClass();
                                    Objects.requireNonNull(str9);
                                    Threads.b();
                                    Cursor cursorA = null;
                                    try {
                                        cursorA = aVar5.a(sQLiteDatabaseB, "Type", str9, new String[]{"Id"});
                                        if (DBUtility.f(cursorA)) {
                                            arrayList6 = new ArrayList();
                                            do {
                                                arrayList6.add(Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("Id"))));
                                            } while (cursorA.moveToNext());
                                        } else {
                                            arrayList6 = Collections.EMPTY_LIST;
                                        }
                                        IO.b(cursorA);
                                        hashSet.addAll(new LinkedHashSet((Collection) arrayList6));
                                    } catch (Throwable th) {
                                        try {
                                            Log.e(aVar5.f40265a, "[getTextColumnByTextColumn] failed", th);
                                            throw th;
                                        } catch (Throwable th2) {
                                            IO.b(cursorA);
                                            throw th2;
                                        }
                                    }
                                }
                                Set setD = Sets.d(hashSet, new f7(immutableSetKeySet, 2));
                                ArrayList<DownloadImageInfo> arrayList7 = new ArrayList();
                                Iterator it9 = setD.iterator();
                                while (true) {
                                    boolean zHasNext = it9.hasNext();
                                    sQLiteDatabase = sQLiteDatabaseC2;
                                    if (!zHasNext) {
                                        break;
                                    }
                                    String string = Long.toString(((Long) it9.next()).longValue());
                                    DownloadImageDao downloadImageDao = DownloadImageDao.d;
                                    List listE2 = downloadImageDao.e(sQLiteDatabase, "referenceId", string);
                                    downloadImageDao.d(sQLiteDatabase, "referenceId", string);
                                    arrayList7.addAll(listE2);
                                }
                                for (DownloadImageInfo.Builder builder2 : iterable) {
                                    DownloadImageDao downloadImageDao2 = DownloadImageDao.d;
                                    builder2.getClass();
                                    downloadImageDao2.i(sQLiteDatabase, new DownloadImageInfo(builder2));
                                }
                                ArrayList arrayList8 = new ArrayList();
                                for (DownloadImageInfo downloadImageInfo4 : arrayList7) {
                                    if (DownloadImageDao.d.e(sQLiteDatabase, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo4.f40306a).isEmpty()) {
                                        arrayList8.add(downloadImageInfo4.f40307b);
                                    }
                                }
                                arrayList5.addAll(arrayList8);
                                com.perfectcorp.perfectlib.ph.database.ymk.generictag.b bVar2 = com.perfectcorp.perfectlib.ph.database.ymk.generictag.b.d;
                                List<String> list10 = type3.d;
                                bVar2.getClass();
                                Objects.requireNonNull(list10);
                                sQLiteDatabase.beginTransaction();
                                try {
                                    Iterator<String> it10 = list10.iterator();
                                    while (it10.hasNext()) {
                                        bVar2.d(sQLiteDatabase, "Type", it10.next());
                                    }
                                    sQLiteDatabase.setTransactionSuccessful();
                                    sQLiteDatabase.endTransaction();
                                    com.perfectcorp.perfectlib.ph.database.ymk.generictag.b.d.k(sQLiteDatabase, list7);
                                    com.perfectcorp.perfectlib.ph.database.ymk.generictag.a aVar6 = com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d;
                                    List<String> list11 = type3.d;
                                    aVar6.getClass();
                                    Objects.requireNonNull(list11);
                                    sQLiteDatabase.beginTransaction();
                                    try {
                                        Iterator<String> it11 = list11.iterator();
                                        while (it11.hasNext()) {
                                            aVar6.d(sQLiteDatabase, "Type", it11.next());
                                        }
                                        sQLiteDatabase.setTransactionSuccessful();
                                        sQLiteDatabase.endTransaction();
                                        com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d.k(sQLiteDatabase, list9);
                                        com.perfectcorp.perfectlib.ph.database.ymk.generictag.d dVar = com.perfectcorp.perfectlib.ph.database.ymk.generictag.d.d;
                                        List<String> list12 = type3.d;
                                        dVar.getClass();
                                        Objects.requireNonNull(list12);
                                        sQLiteDatabase.beginTransaction();
                                        try {
                                            Iterator<String> it12 = list12.iterator();
                                            while (it12.hasNext()) {
                                                dVar.d(sQLiteDatabase, "Type", it12.next());
                                            }
                                            sQLiteDatabase.setTransactionSuccessful();
                                            sQLiteDatabase.endTransaction();
                                            com.perfectcorp.perfectlib.ph.database.ymk.generictag.d.d.k(sQLiteDatabase, list8);
                                            Log.g(3, "TagHandler", "[insertToDb] exit transaction");
                                        } catch (Throwable th3) {
                                            sQLiteDatabase.endTransaction();
                                            throw th3;
                                        }
                                    } catch (Throwable th4) {
                                        sQLiteDatabase.endTransaction();
                                        throw th4;
                                    }
                                } catch (Throwable th5) {
                                    sQLiteDatabase.endTransaction();
                                    throw th5;
                                }
                            }
                        });
                        Log.g(3, "TagHandler", "[insertToDb] end");
                        PfCommons.c(new px0(progressCallback2, 14));
                        Log.g(3, "TagHandler", "[deleteUnusedImages] start");
                        for (String str9 : arrayList5) {
                            if (!TextUtils.isEmpty(str9)) {
                                FileUtils.c(new File(str9));
                            }
                        }
                        Log.g(3, "TagHandler", "[deleteUnusedImages] end");
                        Log.g(3, "TagHandler", "[updateMessageDigest] start");
                        String strB3 = aVar.b();
                        BasicPreferences basicPreferences = TagHandler.Preferences.f39984a;
                        Objects.requireNonNull(type2);
                        TagHandler.Preferences.f39984a.edit().putString(type2 == TagHandler.Type.f39989a ? "SKU_MESSAGE_DIGEST" : "LOOK_MESSAGE_DIGEST", strB3).commit();
                        Log.g(3, "TagHandler", "[updateMessageDigest] end");
                        PfCommons.c(new px0(progressCallback2, 15));
                    }
                }));
        }
    }

    public /* synthetic */ u1(Object obj, Object obj2, Object obj3, boolean z, int i2) {
        this.f41871b = i2;
        this.d = obj;
        this.f41873e = obj2;
        this.f41874f = obj3;
        this.f41872c = z;
    }

    public /* synthetic */ u1(boolean z, PerfectEffect perfectEffect, AtomicReference atomicReference, ImmutableSet immutableSet) {
        this.f41871b = 2;
        this.f41872c = z;
        this.d = perfectEffect;
        this.f41873e = atomicReference;
        this.f41874f = immutableSet;
    }
}
