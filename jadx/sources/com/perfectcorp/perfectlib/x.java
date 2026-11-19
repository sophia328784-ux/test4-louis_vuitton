package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.io.Closeables;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a8;
import defpackage.b8;
import defpackage.bm;
import defpackage.d21;
import defpackage.d8;
import defpackage.g7;
import defpackage.g8;
import defpackage.md;
import defpackage.n00;
import defpackage.n7;
import defpackage.o7;
import defpackage.t7;
import defpackage.tr;
import defpackage.v81;
import defpackage.wp;
import defpackage.xp;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x implements Function, Predicate, SkuDataForProtocol.ExtraInfoImageProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContentPreloader f41912c;

    public /* synthetic */ x(ContentPreloader contentPreloader, int i2) {
        this.f41911b = i2;
        this.f41912c = contentPreloader;
    }

    @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.ExtraInfoImageProcessor
    public void a(String str, String str2) {
        ContentPreloader contentPreloader = this.f41912c;
        contentPreloader.d(contentPreloader.d, str, str2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        String str;
        Object g8Var;
        String str2;
        int i2 = this.f41911b;
        final int i3 = 2;
        final int i4 = 3;
        final ContentPreloader contentPreloader = this.f41912c;
        final int i5 = 1;
        final int i6 = 0;
        switch (i2) {
            case 0:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar : map.values()) {
                    String str3 = bVar.f41227c;
                    String str4 = bVar.d;
                    if ("Look".equalsIgnoreCase(str3) || "NailLook".equalsIgnoreCase(bVar.f41227c)) {
                        boolean z = true;
                        for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.a aVar : bVar.l) {
                            if (!map.containsKey(aVar.f41235b)) {
                                Log.d("ContentPreloader", "[isReferenceElementIdIntegrity] lack of element id=" + aVar.f41235b);
                                z = false;
                            }
                        }
                        if (!z) {
                            String str5 = "preload failed, lack of reference_element, id=" + str4;
                            Log.d("ContentPreloader", str5);
                            contentPreloader.f39539h.a(str4, new ContentIssueException(str5));
                        } else if (bVar.m > LookHandler.e(bVar)) {
                            CacheCleaner.d(str4, true);
                            arrayList2.add(bVar);
                        } else {
                            str = "[preloadLook] pass already in database look, id=";
                            defpackage.a.v(3, str, str4, "ContentPreloader");
                        }
                    } else {
                        contentPreloader.f39541j.add(str4);
                        if (com.perfectcorp.perfectlib.ph.database.ymk.makeupitem.a.a(YMKDatabase.b(), str4) == null) {
                            arrayList.add(bVar);
                        } else {
                            str = "[preloadLook] pass already in database reference_element, id=";
                            defpackage.a.v(3, str, str4, "ContentPreloader");
                        }
                    }
                }
                Log.g(3, "ContentPreloader", "[preloadLook] preload referenceElementList.size()=" + arrayList.size() + ", lookList.size()=" + arrayList2.size());
                ArrayList arrayList3 = new ArrayList(arrayList);
                arrayList3.addAll(arrayList2);
                return Observable.fromIterable(arrayList3);
            case 1:
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z(contentPreloader, bVar2, i5)), new b8(bVar2, i5)), new a0(contentPreloader, bVar2, i5));
            case 2:
                final int i7 = 4;
                int i8 = 5;
                Single list = Observable.fromCallable(new Callable() { // from class: com.perfectcorp.perfectlib.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        float f2;
                        int i9 = i4;
                        ContentPreloader contentPreloader2 = contentPreloader;
                        switch (i9) {
                            case 0:
                                StringBuilder sb = new StringBuilder();
                                String str6 = contentPreloader2.f39537e;
                                String strR = n00.r(str6, "SKU_SET_info.json", sb);
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read versionFilePath=".concat(strR));
                                ContentPreloader.SkuSetIds skuSetIds = (ContentPreloader.SkuSetIds) GsonHelper.f39260a.i(contentPreloader2.f(strR), ContentPreloader.SkuSetIds.class);
                                ArrayList arrayList4 = new ArrayList();
                                for (ContentPreloader.SkuSetIds.SkuSetId skuSetId : skuSetIds.skuSets) {
                                    arrayList4.add(skuSetId.guid);
                                    if (Float.compare(skuSetId.makeupVer, 1.0f) < 0 || Float.compare(9.0f, skuSetId.makeupVer) < 0) {
                                        Log.g(3, "ContentPreloader", "Version of skuSetID : " + skuSetId.guid + " is not supported.");
                                        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                                    }
                                }
                                String strJ = d21.j(str6, "metadata.json");
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read metadataFilePath=".concat(strJ));
                                String strF = contentPreloader2.f(strJ);
                                ArrayList arrayList5 = new ArrayList(arrayList4);
                                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b) GsonHelper.f39260a.i(strF, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.class);
                                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar : (ArrayList) bVar3.b()) {
                                    defpackage.a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "ContentPreloader");
                                    arrayList5.remove(cVar.skuSetId);
                                }
                                if (arrayList5.isEmpty()) {
                                    List listB = bVar3.b();
                                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new v81(listB, true, 0)).i(Schedulers.f43170c);
                                }
                                Log.d("ContentPreloader", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList5);
                                defpackage.x1.n(arrayList5, "Can't get these SKU sets=");
                                return null;
                            case 1:
                                StringBuilder sb2 = new StringBuilder();
                                String str7 = contentPreloader2.f39538f;
                                String strR2 = n00.r(str7, "LOOK_info.json", sb2);
                                Log.g(3, "ContentPreloader", "[preloadLook] read versionFilePath=".concat(strR2));
                                ContentPreloader.LookVersions lookVersions = (ContentPreloader.LookVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR2), ContentPreloader.LookVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadLook] check versions, size=" + lookVersions.looks.size());
                                String str8 = str7 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadLook] read metadataFilePath=".concat(str8));
                                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar2 = new com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a(contentPreloader2.f(str8));
                                Map map2 = (Map) Observable.fromIterable(lookVersions.looks).collect(new a8(3), new y(1)).c();
                                HashMap map3 = new HashMap();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 : aVar2.d) {
                                    String str9 = bVar4.d;
                                    String str10 = bVar4.f41227c;
                                    Float f3 = (Float) map2.get(str9);
                                    if (f3 == null) {
                                        String strJ2 = d21.j(str9, " is only defined in metadata.json, also has to be defined in LOOK_info.json!");
                                        Log.d("ContentPreloader", "[preloadLook] ".concat(strJ2));
                                        contentPreloader2.f39539h.a(str9, new ContentIssueException(strJ2));
                                    } else {
                                        if ("NailLook".equalsIgnoreCase(str10)) {
                                            f2 = 15.0f;
                                        } else if ("Look".equalsIgnoreCase(str10) || "Earrings".equalsIgnoreCase(str10) || "EyeWear".equalsIgnoreCase(str10)) {
                                            f2 = TemplateUtils.f41580a;
                                        }
                                        contentPreloader2.e(map3, bVar4, f3, Float.valueOf(f2));
                                    }
                                }
                                return map3;
                            case 2:
                                String strR3 = n00.r(contentPreloader2.f39536c, "metadata.json", new StringBuilder());
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] read metadataFilePath=".concat(strR3));
                                List<ContentPreloader.FunStickerMetadata.Template> list2 = ((ContentPreloader.FunStickerMetadata) GsonHelper.f39260a.i(contentPreloader2.f(strR3), ContentPreloader.FunStickerMetadata.class)).templates;
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] parse templates, size=" + list2.size());
                                return list2;
                            case 3:
                                String str11 = contentPreloader2.f39535b;
                                String[] list3 = contentPreloader2.f39534a ? new File(str11).list() : PfCommons.b().getAssets().list(str11);
                                Objects.requireNonNull(list3, tr.g("asset folder is invalid, path=", str11));
                                return list3;
                            default:
                                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader2.f39539h;
                                StringBuilder sb3 = new StringBuilder();
                                String str12 = contentPreloader2.d;
                                String strR4 = n00.r(str12, "SKU_info.json", sb3);
                                Log.g(3, "ContentPreloader", "[preloadSku] read versionFilePath=".concat(strR4));
                                ContentPreloader.SkuVersions skuVersions = (ContentPreloader.SkuVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR4), ContentPreloader.SkuVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadSku] check versions, size=" + skuVersions.skus.size());
                                String str13 = str12 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadSku] read metadataFilePath=".concat(str13));
                                Collection<com.perfectcorp.perfectlib.ph.database.ymk.sku.h> collection = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g(contentPreloader2.f(str13)).d;
                                ImmutableList immutableListP = FluentIterable.n(collection).r(new g7(15)).p();
                                HashMap map4 = new HashMap();
                                for (ContentPreloader.SkuVersions.SkuVersion skuVersion : skuVersions.skus) {
                                    map4.put(skuVersion.guid, skuVersion);
                                    if (!immutableListP.contains(skuVersion.guid)) {
                                        String strR5 = n00.r(skuVersion.guid, " only define in file SKU_info.json, also has to define in metadata.json!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR5));
                                        initialCallbackWrapper.a(skuVersion.guid, new ContentIssueException(strR5));
                                    }
                                }
                                ArrayList arrayList6 = new ArrayList();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : collection) {
                                    ContentPreloader.SkuVersions.SkuVersion skuVersion2 = (ContentPreloader.SkuVersions.SkuVersion) map4.get(hVar.skuGUID);
                                    if (skuVersion2 == null) {
                                        String strR6 = n00.r(hVar.skuGUID, " only define in file metadata.json, also has to define in SKU_info.json correctly!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR6));
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(strR6));
                                    } else if (Float.compare(skuVersion2.makeupVer, 1.0f) >= 0 && Float.compare(SkuBeautyMode$FeatureType.a(hVar.type), skuVersion2.makeupVer) >= 0 && Float.compare(skuVersion2.skuFormatVer, 1.0f) >= 0 && Float.compare(4.0f, skuVersion2.skuFormatVer) >= 0) {
                                        arrayList6.add(hVar);
                                    }
                                }
                                Log.g(3, "ContentPreloader", "[preloadSku] preload metadata size=" + collection.size() + ", after version filter size=" + arrayList6.size());
                                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                                return Observable.fromIterable((List) DBUtility.h(writableDatabase, new o7(arrayList6, writableDatabase, 0)));
                        }
                    }
                }).flatMapIterable(new bm(27)).map(new wp(2)).filter(new wp(3)).filter(new x(contentPreloader, i7)).flatMapSingle(new x(contentPreloader, i8)).toList();
                list.getClass();
                int i9 = 8;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarE = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(list), new wp(4)).e(new n7(i9));
                int i10 = 6;
                Single list2 = Observable.fromCallable(new Callable() { // from class: com.perfectcorp.perfectlib.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        float f2;
                        int i11 = i3;
                        ContentPreloader contentPreloader2 = contentPreloader;
                        switch (i11) {
                            case 0:
                                StringBuilder sb = new StringBuilder();
                                String str6 = contentPreloader2.f39537e;
                                String strR = n00.r(str6, "SKU_SET_info.json", sb);
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read versionFilePath=".concat(strR));
                                ContentPreloader.SkuSetIds skuSetIds = (ContentPreloader.SkuSetIds) GsonHelper.f39260a.i(contentPreloader2.f(strR), ContentPreloader.SkuSetIds.class);
                                ArrayList arrayList4 = new ArrayList();
                                for (ContentPreloader.SkuSetIds.SkuSetId skuSetId : skuSetIds.skuSets) {
                                    arrayList4.add(skuSetId.guid);
                                    if (Float.compare(skuSetId.makeupVer, 1.0f) < 0 || Float.compare(9.0f, skuSetId.makeupVer) < 0) {
                                        Log.g(3, "ContentPreloader", "Version of skuSetID : " + skuSetId.guid + " is not supported.");
                                        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                                    }
                                }
                                String strJ = d21.j(str6, "metadata.json");
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read metadataFilePath=".concat(strJ));
                                String strF = contentPreloader2.f(strJ);
                                ArrayList arrayList5 = new ArrayList(arrayList4);
                                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b) GsonHelper.f39260a.i(strF, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.class);
                                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar : (ArrayList) bVar3.b()) {
                                    defpackage.a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "ContentPreloader");
                                    arrayList5.remove(cVar.skuSetId);
                                }
                                if (arrayList5.isEmpty()) {
                                    List listB = bVar3.b();
                                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new v81(listB, true, 0)).i(Schedulers.f43170c);
                                }
                                Log.d("ContentPreloader", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList5);
                                defpackage.x1.n(arrayList5, "Can't get these SKU sets=");
                                return null;
                            case 1:
                                StringBuilder sb2 = new StringBuilder();
                                String str7 = contentPreloader2.f39538f;
                                String strR2 = n00.r(str7, "LOOK_info.json", sb2);
                                Log.g(3, "ContentPreloader", "[preloadLook] read versionFilePath=".concat(strR2));
                                ContentPreloader.LookVersions lookVersions = (ContentPreloader.LookVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR2), ContentPreloader.LookVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadLook] check versions, size=" + lookVersions.looks.size());
                                String str8 = str7 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadLook] read metadataFilePath=".concat(str8));
                                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar2 = new com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a(contentPreloader2.f(str8));
                                Map map2 = (Map) Observable.fromIterable(lookVersions.looks).collect(new a8(3), new y(1)).c();
                                HashMap map3 = new HashMap();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 : aVar2.d) {
                                    String str9 = bVar4.d;
                                    String str10 = bVar4.f41227c;
                                    Float f3 = (Float) map2.get(str9);
                                    if (f3 == null) {
                                        String strJ2 = d21.j(str9, " is only defined in metadata.json, also has to be defined in LOOK_info.json!");
                                        Log.d("ContentPreloader", "[preloadLook] ".concat(strJ2));
                                        contentPreloader2.f39539h.a(str9, new ContentIssueException(strJ2));
                                    } else {
                                        if ("NailLook".equalsIgnoreCase(str10)) {
                                            f2 = 15.0f;
                                        } else if ("Look".equalsIgnoreCase(str10) || "Earrings".equalsIgnoreCase(str10) || "EyeWear".equalsIgnoreCase(str10)) {
                                            f2 = TemplateUtils.f41580a;
                                        }
                                        contentPreloader2.e(map3, bVar4, f3, Float.valueOf(f2));
                                    }
                                }
                                return map3;
                            case 2:
                                String strR3 = n00.r(contentPreloader2.f39536c, "metadata.json", new StringBuilder());
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] read metadataFilePath=".concat(strR3));
                                List<ContentPreloader.FunStickerMetadata.Template> list3 = ((ContentPreloader.FunStickerMetadata) GsonHelper.f39260a.i(contentPreloader2.f(strR3), ContentPreloader.FunStickerMetadata.class)).templates;
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] parse templates, size=" + list3.size());
                                return list3;
                            case 3:
                                String str11 = contentPreloader2.f39535b;
                                String[] list4 = contentPreloader2.f39534a ? new File(str11).list() : PfCommons.b().getAssets().list(str11);
                                Objects.requireNonNull(list4, tr.g("asset folder is invalid, path=", str11));
                                return list4;
                            default:
                                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader2.f39539h;
                                StringBuilder sb3 = new StringBuilder();
                                String str12 = contentPreloader2.d;
                                String strR4 = n00.r(str12, "SKU_info.json", sb3);
                                Log.g(3, "ContentPreloader", "[preloadSku] read versionFilePath=".concat(strR4));
                                ContentPreloader.SkuVersions skuVersions = (ContentPreloader.SkuVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR4), ContentPreloader.SkuVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadSku] check versions, size=" + skuVersions.skus.size());
                                String str13 = str12 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadSku] read metadataFilePath=".concat(str13));
                                Collection<com.perfectcorp.perfectlib.ph.database.ymk.sku.h> collection = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g(contentPreloader2.f(str13)).d;
                                ImmutableList immutableListP = FluentIterable.n(collection).r(new g7(15)).p();
                                HashMap map4 = new HashMap();
                                for (ContentPreloader.SkuVersions.SkuVersion skuVersion : skuVersions.skus) {
                                    map4.put(skuVersion.guid, skuVersion);
                                    if (!immutableListP.contains(skuVersion.guid)) {
                                        String strR5 = n00.r(skuVersion.guid, " only define in file SKU_info.json, also has to define in metadata.json!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR5));
                                        initialCallbackWrapper.a(skuVersion.guid, new ContentIssueException(strR5));
                                    }
                                }
                                ArrayList arrayList6 = new ArrayList();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : collection) {
                                    ContentPreloader.SkuVersions.SkuVersion skuVersion2 = (ContentPreloader.SkuVersions.SkuVersion) map4.get(hVar.skuGUID);
                                    if (skuVersion2 == null) {
                                        String strR6 = n00.r(hVar.skuGUID, " only define in file metadata.json, also has to define in SKU_info.json correctly!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR6));
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(strR6));
                                    } else if (Float.compare(skuVersion2.makeupVer, 1.0f) >= 0 && Float.compare(SkuBeautyMode$FeatureType.a(hVar.type), skuVersion2.makeupVer) >= 0 && Float.compare(skuVersion2.skuFormatVer, 1.0f) >= 0 && Float.compare(4.0f, skuVersion2.skuFormatVer) >= 0) {
                                        arrayList6.add(hVar);
                                    }
                                }
                                Log.g(3, "ContentPreloader", "[preloadSku] preload metadata size=" + collection.size() + ", after version filter size=" + arrayList6.size());
                                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                                return Observable.fromIterable((List) DBUtility.h(writableDatabase, new o7(arrayList6, writableDatabase, 0)));
                        }
                    }
                }).flatMapIterable(Functions.f42605a).filter(new y(i6)).filter(new x(contentPreloader, i10)).flatMapSingle(new x(contentPreloader, i9)).toList();
                list2.getClass();
                int i11 = 9;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(nVarE, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(list2), new wp(5)).e(new n7(i11))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Observable.defer(new Callable() { // from class: com.perfectcorp.perfectlib.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        float f2;
                        int i12 = i7;
                        ContentPreloader contentPreloader2 = contentPreloader;
                        switch (i12) {
                            case 0:
                                StringBuilder sb = new StringBuilder();
                                String str6 = contentPreloader2.f39537e;
                                String strR = n00.r(str6, "SKU_SET_info.json", sb);
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read versionFilePath=".concat(strR));
                                ContentPreloader.SkuSetIds skuSetIds = (ContentPreloader.SkuSetIds) GsonHelper.f39260a.i(contentPreloader2.f(strR), ContentPreloader.SkuSetIds.class);
                                ArrayList arrayList4 = new ArrayList();
                                for (ContentPreloader.SkuSetIds.SkuSetId skuSetId : skuSetIds.skuSets) {
                                    arrayList4.add(skuSetId.guid);
                                    if (Float.compare(skuSetId.makeupVer, 1.0f) < 0 || Float.compare(9.0f, skuSetId.makeupVer) < 0) {
                                        Log.g(3, "ContentPreloader", "Version of skuSetID : " + skuSetId.guid + " is not supported.");
                                        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                                    }
                                }
                                String strJ = d21.j(str6, "metadata.json");
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read metadataFilePath=".concat(strJ));
                                String strF = contentPreloader2.f(strJ);
                                ArrayList arrayList5 = new ArrayList(arrayList4);
                                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b) GsonHelper.f39260a.i(strF, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.class);
                                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar : (ArrayList) bVar3.b()) {
                                    defpackage.a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "ContentPreloader");
                                    arrayList5.remove(cVar.skuSetId);
                                }
                                if (arrayList5.isEmpty()) {
                                    List listB = bVar3.b();
                                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new v81(listB, true, 0)).i(Schedulers.f43170c);
                                }
                                Log.d("ContentPreloader", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList5);
                                defpackage.x1.n(arrayList5, "Can't get these SKU sets=");
                                return null;
                            case 1:
                                StringBuilder sb2 = new StringBuilder();
                                String str7 = contentPreloader2.f39538f;
                                String strR2 = n00.r(str7, "LOOK_info.json", sb2);
                                Log.g(3, "ContentPreloader", "[preloadLook] read versionFilePath=".concat(strR2));
                                ContentPreloader.LookVersions lookVersions = (ContentPreloader.LookVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR2), ContentPreloader.LookVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadLook] check versions, size=" + lookVersions.looks.size());
                                String str8 = str7 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadLook] read metadataFilePath=".concat(str8));
                                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar2 = new com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a(contentPreloader2.f(str8));
                                Map map2 = (Map) Observable.fromIterable(lookVersions.looks).collect(new a8(3), new y(1)).c();
                                HashMap map3 = new HashMap();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 : aVar2.d) {
                                    String str9 = bVar4.d;
                                    String str10 = bVar4.f41227c;
                                    Float f3 = (Float) map2.get(str9);
                                    if (f3 == null) {
                                        String strJ2 = d21.j(str9, " is only defined in metadata.json, also has to be defined in LOOK_info.json!");
                                        Log.d("ContentPreloader", "[preloadLook] ".concat(strJ2));
                                        contentPreloader2.f39539h.a(str9, new ContentIssueException(strJ2));
                                    } else {
                                        if ("NailLook".equalsIgnoreCase(str10)) {
                                            f2 = 15.0f;
                                        } else if ("Look".equalsIgnoreCase(str10) || "Earrings".equalsIgnoreCase(str10) || "EyeWear".equalsIgnoreCase(str10)) {
                                            f2 = TemplateUtils.f41580a;
                                        }
                                        contentPreloader2.e(map3, bVar4, f3, Float.valueOf(f2));
                                    }
                                }
                                return map3;
                            case 2:
                                String strR3 = n00.r(contentPreloader2.f39536c, "metadata.json", new StringBuilder());
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] read metadataFilePath=".concat(strR3));
                                List<ContentPreloader.FunStickerMetadata.Template> list3 = ((ContentPreloader.FunStickerMetadata) GsonHelper.f39260a.i(contentPreloader2.f(strR3), ContentPreloader.FunStickerMetadata.class)).templates;
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] parse templates, size=" + list3.size());
                                return list3;
                            case 3:
                                String str11 = contentPreloader2.f39535b;
                                String[] list4 = contentPreloader2.f39534a ? new File(str11).list() : PfCommons.b().getAssets().list(str11);
                                Objects.requireNonNull(list4, tr.g("asset folder is invalid, path=", str11));
                                return list4;
                            default:
                                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader2.f39539h;
                                StringBuilder sb3 = new StringBuilder();
                                String str12 = contentPreloader2.d;
                                String strR4 = n00.r(str12, "SKU_info.json", sb3);
                                Log.g(3, "ContentPreloader", "[preloadSku] read versionFilePath=".concat(strR4));
                                ContentPreloader.SkuVersions skuVersions = (ContentPreloader.SkuVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR4), ContentPreloader.SkuVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadSku] check versions, size=" + skuVersions.skus.size());
                                String str13 = str12 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadSku] read metadataFilePath=".concat(str13));
                                Collection<com.perfectcorp.perfectlib.ph.database.ymk.sku.h> collection = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g(contentPreloader2.f(str13)).d;
                                ImmutableList immutableListP = FluentIterable.n(collection).r(new g7(15)).p();
                                HashMap map4 = new HashMap();
                                for (ContentPreloader.SkuVersions.SkuVersion skuVersion : skuVersions.skus) {
                                    map4.put(skuVersion.guid, skuVersion);
                                    if (!immutableListP.contains(skuVersion.guid)) {
                                        String strR5 = n00.r(skuVersion.guid, " only define in file SKU_info.json, also has to define in metadata.json!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR5));
                                        initialCallbackWrapper.a(skuVersion.guid, new ContentIssueException(strR5));
                                    }
                                }
                                ArrayList arrayList6 = new ArrayList();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : collection) {
                                    ContentPreloader.SkuVersions.SkuVersion skuVersion2 = (ContentPreloader.SkuVersions.SkuVersion) map4.get(hVar.skuGUID);
                                    if (skuVersion2 == null) {
                                        String strR6 = n00.r(hVar.skuGUID, " only define in file metadata.json, also has to define in SKU_info.json correctly!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR6));
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(strR6));
                                    } else if (Float.compare(skuVersion2.makeupVer, 1.0f) >= 0 && Float.compare(SkuBeautyMode$FeatureType.a(hVar.type), skuVersion2.makeupVer) >= 0 && Float.compare(skuVersion2.skuFormatVer, 1.0f) >= 0 && Float.compare(4.0f, skuVersion2.skuFormatVer) >= 0) {
                                        arrayList6.add(hVar);
                                    }
                                }
                                Log.g(3, "ContentPreloader", "[preloadSku] preload metadata size=" + collection.size() + ", after version filter size=" + arrayList6.size());
                                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                                return Observable.fromIterable((List) DBUtility.h(writableDatabase, new o7(arrayList6, writableDatabase, 0)));
                        }
                    }
                }).flatMapSingle(new x(contentPreloader, i11)).toList().f(new d8(i5))), new bm(26)).e(new n7(i8))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        float f2;
                        int i12 = i6;
                        ContentPreloader contentPreloader2 = contentPreloader;
                        switch (i12) {
                            case 0:
                                StringBuilder sb = new StringBuilder();
                                String str6 = contentPreloader2.f39537e;
                                String strR = n00.r(str6, "SKU_SET_info.json", sb);
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read versionFilePath=".concat(strR));
                                ContentPreloader.SkuSetIds skuSetIds = (ContentPreloader.SkuSetIds) GsonHelper.f39260a.i(contentPreloader2.f(strR), ContentPreloader.SkuSetIds.class);
                                ArrayList arrayList4 = new ArrayList();
                                for (ContentPreloader.SkuSetIds.SkuSetId skuSetId : skuSetIds.skuSets) {
                                    arrayList4.add(skuSetId.guid);
                                    if (Float.compare(skuSetId.makeupVer, 1.0f) < 0 || Float.compare(9.0f, skuSetId.makeupVer) < 0) {
                                        Log.g(3, "ContentPreloader", "Version of skuSetID : " + skuSetId.guid + " is not supported.");
                                        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                                    }
                                }
                                String strJ = d21.j(str6, "metadata.json");
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read metadataFilePath=".concat(strJ));
                                String strF = contentPreloader2.f(strJ);
                                ArrayList arrayList5 = new ArrayList(arrayList4);
                                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b) GsonHelper.f39260a.i(strF, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.class);
                                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar : (ArrayList) bVar3.b()) {
                                    defpackage.a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "ContentPreloader");
                                    arrayList5.remove(cVar.skuSetId);
                                }
                                if (arrayList5.isEmpty()) {
                                    List listB = bVar3.b();
                                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new v81(listB, true, 0)).i(Schedulers.f43170c);
                                }
                                Log.d("ContentPreloader", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList5);
                                defpackage.x1.n(arrayList5, "Can't get these SKU sets=");
                                return null;
                            case 1:
                                StringBuilder sb2 = new StringBuilder();
                                String str7 = contentPreloader2.f39538f;
                                String strR2 = n00.r(str7, "LOOK_info.json", sb2);
                                Log.g(3, "ContentPreloader", "[preloadLook] read versionFilePath=".concat(strR2));
                                ContentPreloader.LookVersions lookVersions = (ContentPreloader.LookVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR2), ContentPreloader.LookVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadLook] check versions, size=" + lookVersions.looks.size());
                                String str8 = str7 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadLook] read metadataFilePath=".concat(str8));
                                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar2 = new com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a(contentPreloader2.f(str8));
                                Map map2 = (Map) Observable.fromIterable(lookVersions.looks).collect(new a8(3), new y(1)).c();
                                HashMap map3 = new HashMap();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 : aVar2.d) {
                                    String str9 = bVar4.d;
                                    String str10 = bVar4.f41227c;
                                    Float f3 = (Float) map2.get(str9);
                                    if (f3 == null) {
                                        String strJ2 = d21.j(str9, " is only defined in metadata.json, also has to be defined in LOOK_info.json!");
                                        Log.d("ContentPreloader", "[preloadLook] ".concat(strJ2));
                                        contentPreloader2.f39539h.a(str9, new ContentIssueException(strJ2));
                                    } else {
                                        if ("NailLook".equalsIgnoreCase(str10)) {
                                            f2 = 15.0f;
                                        } else if ("Look".equalsIgnoreCase(str10) || "Earrings".equalsIgnoreCase(str10) || "EyeWear".equalsIgnoreCase(str10)) {
                                            f2 = TemplateUtils.f41580a;
                                        }
                                        contentPreloader2.e(map3, bVar4, f3, Float.valueOf(f2));
                                    }
                                }
                                return map3;
                            case 2:
                                String strR3 = n00.r(contentPreloader2.f39536c, "metadata.json", new StringBuilder());
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] read metadataFilePath=".concat(strR3));
                                List<ContentPreloader.FunStickerMetadata.Template> list3 = ((ContentPreloader.FunStickerMetadata) GsonHelper.f39260a.i(contentPreloader2.f(strR3), ContentPreloader.FunStickerMetadata.class)).templates;
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] parse templates, size=" + list3.size());
                                return list3;
                            case 3:
                                String str11 = contentPreloader2.f39535b;
                                String[] list4 = contentPreloader2.f39534a ? new File(str11).list() : PfCommons.b().getAssets().list(str11);
                                Objects.requireNonNull(list4, tr.g("asset folder is invalid, path=", str11));
                                return list4;
                            default:
                                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader2.f39539h;
                                StringBuilder sb3 = new StringBuilder();
                                String str12 = contentPreloader2.d;
                                String strR4 = n00.r(str12, "SKU_info.json", sb3);
                                Log.g(3, "ContentPreloader", "[preloadSku] read versionFilePath=".concat(strR4));
                                ContentPreloader.SkuVersions skuVersions = (ContentPreloader.SkuVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR4), ContentPreloader.SkuVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadSku] check versions, size=" + skuVersions.skus.size());
                                String str13 = str12 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadSku] read metadataFilePath=".concat(str13));
                                Collection<com.perfectcorp.perfectlib.ph.database.ymk.sku.h> collection = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g(contentPreloader2.f(str13)).d;
                                ImmutableList immutableListP = FluentIterable.n(collection).r(new g7(15)).p();
                                HashMap map4 = new HashMap();
                                for (ContentPreloader.SkuVersions.SkuVersion skuVersion : skuVersions.skus) {
                                    map4.put(skuVersion.guid, skuVersion);
                                    if (!immutableListP.contains(skuVersion.guid)) {
                                        String strR5 = n00.r(skuVersion.guid, " only define in file SKU_info.json, also has to define in metadata.json!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR5));
                                        initialCallbackWrapper.a(skuVersion.guid, new ContentIssueException(strR5));
                                    }
                                }
                                ArrayList arrayList6 = new ArrayList();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : collection) {
                                    ContentPreloader.SkuVersions.SkuVersion skuVersion2 = (ContentPreloader.SkuVersions.SkuVersion) map4.get(hVar.skuGUID);
                                    if (skuVersion2 == null) {
                                        String strR6 = n00.r(hVar.skuGUID, " only define in file metadata.json, also has to define in SKU_info.json correctly!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR6));
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(strR6));
                                    } else if (Float.compare(skuVersion2.makeupVer, 1.0f) >= 0 && Float.compare(SkuBeautyMode$FeatureType.a(hVar.type), skuVersion2.makeupVer) >= 0 && Float.compare(skuVersion2.skuFormatVer, 1.0f) >= 0 && Float.compare(4.0f, skuVersion2.skuFormatVer) >= 0) {
                                        arrayList6.add(hVar);
                                    }
                                }
                                Log.g(3, "ContentPreloader", "[preloadSku] preload metadata size=" + collection.size() + ", after version filter size=" + arrayList6.size());
                                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                                return Observable.fromIterable((List) DBUtility.h(writableDatabase, new o7(arrayList6, writableDatabase, 0)));
                        }
                    }
                }), new bm(28)).e(new n7(i10))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.perfectlib.w
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        float f2;
                        int i12 = i5;
                        ContentPreloader contentPreloader2 = contentPreloader;
                        switch (i12) {
                            case 0:
                                StringBuilder sb = new StringBuilder();
                                String str6 = contentPreloader2.f39537e;
                                String strR = n00.r(str6, "SKU_SET_info.json", sb);
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read versionFilePath=".concat(strR));
                                ContentPreloader.SkuSetIds skuSetIds = (ContentPreloader.SkuSetIds) GsonHelper.f39260a.i(contentPreloader2.f(strR), ContentPreloader.SkuSetIds.class);
                                ArrayList arrayList4 = new ArrayList();
                                for (ContentPreloader.SkuSetIds.SkuSetId skuSetId : skuSetIds.skuSets) {
                                    arrayList4.add(skuSetId.guid);
                                    if (Float.compare(skuSetId.makeupVer, 1.0f) < 0 || Float.compare(9.0f, skuSetId.makeupVer) < 0) {
                                        Log.g(3, "ContentPreloader", "Version of skuSetID : " + skuSetId.guid + " is not supported.");
                                        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                                    }
                                }
                                String strJ = d21.j(str6, "metadata.json");
                                Log.g(3, "ContentPreloader", "[preloadSkuSet] read metadataFilePath=".concat(strJ));
                                String strF = contentPreloader2.f(strJ);
                                ArrayList arrayList5 = new ArrayList(arrayList4);
                                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b) GsonHelper.f39260a.i(strF, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.class);
                                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar : (ArrayList) bVar3.b()) {
                                    defpackage.a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "ContentPreloader");
                                    arrayList5.remove(cVar.skuSetId);
                                }
                                if (arrayList5.isEmpty()) {
                                    List listB = bVar3.b();
                                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new v81(listB, true, 0)).i(Schedulers.f43170c);
                                }
                                Log.d("ContentPreloader", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList5);
                                defpackage.x1.n(arrayList5, "Can't get these SKU sets=");
                                return null;
                            case 1:
                                StringBuilder sb2 = new StringBuilder();
                                String str7 = contentPreloader2.f39538f;
                                String strR2 = n00.r(str7, "LOOK_info.json", sb2);
                                Log.g(3, "ContentPreloader", "[preloadLook] read versionFilePath=".concat(strR2));
                                ContentPreloader.LookVersions lookVersions = (ContentPreloader.LookVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR2), ContentPreloader.LookVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadLook] check versions, size=" + lookVersions.looks.size());
                                String str8 = str7 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadLook] read metadataFilePath=".concat(str8));
                                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar2 = new com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a(contentPreloader2.f(str8));
                                Map map2 = (Map) Observable.fromIterable(lookVersions.looks).collect(new a8(3), new y(1)).c();
                                HashMap map3 = new HashMap();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar4 : aVar2.d) {
                                    String str9 = bVar4.d;
                                    String str10 = bVar4.f41227c;
                                    Float f3 = (Float) map2.get(str9);
                                    if (f3 == null) {
                                        String strJ2 = d21.j(str9, " is only defined in metadata.json, also has to be defined in LOOK_info.json!");
                                        Log.d("ContentPreloader", "[preloadLook] ".concat(strJ2));
                                        contentPreloader2.f39539h.a(str9, new ContentIssueException(strJ2));
                                    } else {
                                        if ("NailLook".equalsIgnoreCase(str10)) {
                                            f2 = 15.0f;
                                        } else if ("Look".equalsIgnoreCase(str10) || "Earrings".equalsIgnoreCase(str10) || "EyeWear".equalsIgnoreCase(str10)) {
                                            f2 = TemplateUtils.f41580a;
                                        }
                                        contentPreloader2.e(map3, bVar4, f3, Float.valueOf(f2));
                                    }
                                }
                                return map3;
                            case 2:
                                String strR3 = n00.r(contentPreloader2.f39536c, "metadata.json", new StringBuilder());
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] read metadataFilePath=".concat(strR3));
                                List<ContentPreloader.FunStickerMetadata.Template> list3 = ((ContentPreloader.FunStickerMetadata) GsonHelper.f39260a.i(contentPreloader2.f(strR3), ContentPreloader.FunStickerMetadata.class)).templates;
                                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] parse templates, size=" + list3.size());
                                return list3;
                            case 3:
                                String str11 = contentPreloader2.f39535b;
                                String[] list4 = contentPreloader2.f39534a ? new File(str11).list() : PfCommons.b().getAssets().list(str11);
                                Objects.requireNonNull(list4, tr.g("asset folder is invalid, path=", str11));
                                return list4;
                            default:
                                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = contentPreloader2.f39539h;
                                StringBuilder sb3 = new StringBuilder();
                                String str12 = contentPreloader2.d;
                                String strR4 = n00.r(str12, "SKU_info.json", sb3);
                                Log.g(3, "ContentPreloader", "[preloadSku] read versionFilePath=".concat(strR4));
                                ContentPreloader.SkuVersions skuVersions = (ContentPreloader.SkuVersions) GsonHelper.f39260a.i(contentPreloader2.f(strR4), ContentPreloader.SkuVersions.class);
                                Log.g(3, "ContentPreloader", "[preloadSku] check versions, size=" + skuVersions.skus.size());
                                String str13 = str12 + "metadata.json";
                                Log.g(3, "ContentPreloader", "[preloadSku] read metadataFilePath=".concat(str13));
                                Collection<com.perfectcorp.perfectlib.ph.database.ymk.sku.h> collection = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g(contentPreloader2.f(str13)).d;
                                ImmutableList immutableListP = FluentIterable.n(collection).r(new g7(15)).p();
                                HashMap map4 = new HashMap();
                                for (ContentPreloader.SkuVersions.SkuVersion skuVersion : skuVersions.skus) {
                                    map4.put(skuVersion.guid, skuVersion);
                                    if (!immutableListP.contains(skuVersion.guid)) {
                                        String strR5 = n00.r(skuVersion.guid, " only define in file SKU_info.json, also has to define in metadata.json!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR5));
                                        initialCallbackWrapper.a(skuVersion.guid, new ContentIssueException(strR5));
                                    }
                                }
                                ArrayList arrayList6 = new ArrayList();
                                for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : collection) {
                                    ContentPreloader.SkuVersions.SkuVersion skuVersion2 = (ContentPreloader.SkuVersions.SkuVersion) map4.get(hVar.skuGUID);
                                    if (skuVersion2 == null) {
                                        String strR6 = n00.r(hVar.skuGUID, " only define in file metadata.json, also has to define in SKU_info.json correctly!", new StringBuilder("sku id="));
                                        Log.d("ContentPreloader", "[preloadSku] ".concat(strR6));
                                        initialCallbackWrapper.a(hVar.skuGUID, new ContentIssueException(strR6));
                                    } else if (Float.compare(skuVersion2.makeupVer, 1.0f) >= 0 && Float.compare(SkuBeautyMode$FeatureType.a(hVar.type), skuVersion2.makeupVer) >= 0 && Float.compare(skuVersion2.skuFormatVer, 1.0f) >= 0 && Float.compare(4.0f, skuVersion2.skuFormatVer) >= 0) {
                                        arrayList6.add(hVar);
                                    }
                                }
                                Log.g(3, "ContentPreloader", "[preloadSku] preload metadata size=" + collection.size() + ", after version filter size=" + arrayList6.size());
                                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                                SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
                                return Observable.fromIterable((List) DBUtility.h(writableDatabase, new o7(arrayList6, writableDatabase, 0)));
                        }
                    }
                }), new x(contentPreloader, i6)).flatMapSingle(new x(contentPreloader, i5)).toList().f(new d8(i3))), new bm(29)).e(new n7(7))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Observable.fromArray(SkuBeautyMode$FeatureType.values()).filter(new wp(0)).map(new wp(1)).concatMap(new x(contentPreloader, i4)).toList().f(ProductMappingUtility.f39805a)));
            case 3:
                String str6 = (String) obj;
                String str7 = contentPreloader.g;
                if (contentPreloader.f39534a) {
                    File file = new File(str7, d21.j(str6, ".json"));
                    if (!file.exists()) {
                        str2 = "Feature type \"" + str6 + "\" isn't existed.";
                    } else if (file.isFile()) {
                        g8Var = new xp(file, 0);
                    } else {
                        str2 = "Mapping file isn't a file. path=" + file;
                    }
                    Log.g(3, "ContentPreloader", str2);
                    return Observable.empty();
                }
                String strH = tr.h(str7, str6, ".json");
                try {
                    try {
                        InputStream inputStreamC = Apk.c(PfCommons.b(), strH);
                        Logger logger = Closeables.f42370a;
                        if (inputStreamC != null) {
                            try {
                                inputStreamC.close();
                            } catch (IOException e2) {
                                try {
                                    Closeables.f42370a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                                } catch (IOException e3) {
                                    md.h(e3);
                                    return null;
                                }
                            }
                        }
                        g8Var = new g8(strH, i5);
                    } finally {
                        Logger logger2 = Closeables.f42370a;
                    }
                } catch (Throwable unused) {
                    Log.g(3, "ContentPreloader", "Mapping file isn't existed or isn't a file. path=".concat(strH));
                    return Observable.empty();
                }
                break;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new o7(g8Var, str6, i3)).l().onErrorResumeNext(new t7(str6, 11));
            case 4:
            case 6:
            case 7:
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj;
                Log.g(3, "ContentPreloader", "[preloadSku] preload the new SKU, id=" + hVar.skuGUID);
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new z(contentPreloader, hVar, i6)), new a0(contentPreloader, hVar, i6));
            case 5:
                String str8 = (String) obj;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new z(contentPreloader, str8, i3)), new a0(contentPreloader, str8, i3));
            case 8:
                ContentPreloader.FunStickerMetadata.Template template = (ContentPreloader.FunStickerMetadata.Template) obj;
                String str9 = template.guid;
                AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
                File file2 = new File(DownloadFolderHelper.d(), str9);
                ContentPreloader contentPreloader2 = this.f41912c;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new b0(contentPreloader2, str9, template, file2, 0)), new c0(contentPreloader2, file2, str9, i6));
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        int i2 = this.f41911b;
        ContentPreloader contentPreloader = this.f41912c;
        switch (i2) {
            case 4:
                String str = (String) obj;
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                if (com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(sQLiteDatabaseB, str) == null && com.perfectcorp.perfectlib.ph.database.ymk.texture.a.a(sQLiteDatabaseB, str) == null && com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(sQLiteDatabaseB, str) == null) {
                    return true;
                }
                contentPreloader.f39541j.add(str);
                Log.g(3, "ContentPreloader", "[preloadIdSystemContent] pass already in database component, id=" + str);
                return false;
            default:
                String str2 = ((ContentPreloader.FunStickerMetadata.Template) obj).guid;
                if (!com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.b(YMKDatabase.b(), str2).d()) {
                    return true;
                }
                contentPreloader.f39541j.add(str2);
                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] pass already in database component, id=" + str2);
                return false;
        }
    }
}
