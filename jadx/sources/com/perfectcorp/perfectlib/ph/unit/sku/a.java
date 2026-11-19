package com.perfectcorp.perfectlib.ph.unit.sku;

import android.text.TextUtils;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.EffectId;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.com.google.common.collect.HashMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.SetMultimap;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a61;
import defpackage.bz0;
import defpackage.g81;
import defpackage.w7;
import defpackage.zy0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f41721a = Pattern.compile("^(.*)_sp_\\d{2,}$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f41722b = Pattern.compile("^(.*)_ws_\\d{2,}$");

    public static Observable a(List list) {
        return Observable.fromIterable(Lists.b(30, list)).concatMap(new a61(18));
    }

    public static f b(DownloadTaskCancelable downloadTaskCancelable, boolean z) {
        Log.g(3, "SkuSetUnit", "[querySkuSetListAndInsertToDB] start");
        return new f(new k(new m(c(), new w7(downloadTaskCancelable, z, 1))), new bz0(2));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.perfectcorp.perfectlib.ph.utility.networkcache.c$n] */
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f c() {
        Log.g(3, "SkuSetUnit", "[getSkuSetIDListFromServer] start");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f(new t(new Factory.Builder<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.a>() { // from class: com.perfectcorp.perfectlib.ph.utility.networkcache.c$n
            public final Single c() {
                return a(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(2)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new n())));
            }
        }.c(), new a61(17)), new bz0(4));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f d(final List list, final boolean z, final DownloadTaskCancelable downloadTaskCancelable, final boolean z2) {
        Log.g(3, "SkuSetUnit", "[queryAndSyncToDB] start::skuSetIds=" + list + ", removeOtherIds=" + z);
        Single list2 = a(list).concatMapIterable(new zy0(6)).toList();
        Function function = new Function() { // from class: a81
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List<b.c> list3 = (List) obj;
                Pattern pattern = a.f41721a;
                int i2 = 3;
                Log.g(3, "SkuSetUnit", "[queryAndSyncToDB] getSkuSetList::size=" + list3.size());
                ArrayList arrayList = new ArrayList(list);
                HashMultimap hashMultimap = new HashMultimap();
                HashMultimap hashMultimap2 = new HashMultimap();
                for (b.c cVar : list3) {
                    a.A(new StringBuilder("[queryAndSyncToDB] getSkuSetList::skuSetId="), cVar.skuSetId, 3, "SkuSetUnit");
                    arrayList.remove(cVar.skuSetId);
                    BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(cVar.type);
                    if (a.j(beautyModeValueOfSkuFeatureType)) {
                        hashMultimap2.n(cVar.a(), beautyModeValueOfSkuFeatureType);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<JsonObject> it = cVar.supportedPatterns.iterator();
                        while (it.hasNext()) {
                            JsonElement jsonElementR = it.next().r("pattern_guid");
                            if (jsonElementR instanceof JsonPrimitive) {
                                String strN = jsonElementR.n();
                                if (!TextUtils.isEmpty(strN)) {
                                    arrayList2.add(strN);
                                }
                            }
                        }
                        hashMultimap.n(arrayList2, beautyModeValueOfSkuFeatureType);
                    }
                }
                if (!arrayList.isEmpty()) {
                    Log.d("SkuSetUnit", "[queryAndSyncToDB] Can't get these SKU sets=" + arrayList);
                    x1.n(arrayList, "Can't get these SKU sets=");
                    return null;
                }
                boolean z3 = z2;
                boolean z4 = z;
                if (z3) {
                    Log.g(3, "PanelDataCenter", "Start syncSkuSetDBWithServer");
                    return new j(new v81(list3, z4, 1)).i(Schedulers.f43170c).j(list3);
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayListG = a.g(hashMultimap);
                NetworkTaskManager.TaskPriority taskPriority = NetworkTaskManager.TaskPriority.LOW;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                arrayList3.add(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.c(arrayListG, "", taskPriority, downloadTaskCancelable2));
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                Iterator it2 = hashMultimap2.keySet().iterator();
                while (it2.hasNext()) {
                    for (b.a aVar : hashMultimap2.get(it2.next())) {
                        if (!hashSet.contains(aVar.skuGuid)) {
                            hashSet.add(aVar.skuGuid);
                            hashSet2.add(aVar.itemGuid);
                        }
                    }
                }
                h.a.C0179a c0179a = new h.a.C0179a();
                c0179a.d = NetworkTaskManager.TaskPriority.NORMAL;
                c0179a.f41574a = false;
                c0179a.f41575b = false;
                c0179a.f41576c = false;
                Single list4 = new o(h.a(hashSet, 0, new h.a(c0179a)), new a61(13)).map(new ln0(hashSet2, 29)).toList();
                gy0 gy0Var = new gy0((Serializable) arrayList3, downloadTaskCancelable2, 11);
                list4.getClass();
                return new m(new m(list4, gy0Var), new x7(arrayList3, list3, z4, i2));
            }
        };
        list2.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f(new m(list2, function), new bz0(3));
    }

    public static boolean e(BeautyMode beautyMode) {
        int i2 = b.f41723a[beautyMode.ordinal()];
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4;
    }

    public static boolean f(String str) {
        return (TextUtils.isEmpty(str) || EffectId.INVALID_ID.equals(str)) ? false : true;
    }

    public static ArrayList g(SetMultimap setMultimap) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (BeautyMode beautyMode : setMultimap.keySet()) {
            for (String str : setMultimap.get((Object) beautyMode)) {
                if (!hashSet.contains(str)) {
                    hashSet.add(str);
                    arrayList.add(new TemplateUtils.a(str, TemplateUtils.a.EnumC0180a.f41592a, beautyMode, YMKPrimitiveData.SourceType.DOWNLOAD));
                }
            }
        }
        return arrayList;
    }

    public static boolean h(BeautyMode beautyMode) {
        return b.f41723a[beautyMode.ordinal()] == 5;
    }

    public static String i(String str) {
        Matcher matcher = f41721a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        Matcher matcher2 = f41722b.matcher(str);
        if (matcher2.matches()) {
            return matcher2.group(1);
        }
        if (str.contains("_lk_")) {
            String[] strArrSplit = str.split("_lk_");
            if (strArrSplit.length == 2) {
                return strArrSplit[0];
            }
            Log.g(3, "SkuSetUnit", "Unexpected tokens from : ".concat(str));
        }
        return str;
    }

    public static boolean j(BeautyMode beautyMode) {
        switch (b.f41723a[beautyMode.ordinal()]) {
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }
}
