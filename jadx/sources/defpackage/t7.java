package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.batch.android.j1.b;
import com.batch.android.j1.c;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.d;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t7 implements Function, c, ObjectConstructor, Continuation, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79988c;

    public /* synthetic */ t7(String str, int i2) {
        this.f79987b = i2;
        this.f79988c = str;
    }

    @Override // com.batch.android.j1.c
    public void a(b bVar) {
        bVar.a(this.f79988c);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) throws Exception {
        String str;
        int i2 = this.f79987b;
        char c2 = 1;
        int i3 = 0;
        int i4 = 3;
        String str2 = this.f79988c;
        switch (i2) {
            case 0:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Log.e("ApplyEffectUtility", "[newLookUpdateFirstStrategySingle] Query look metadata failed. lookGuid=" + str2, (Throwable) obj);
                return Optional.a();
            case 1:
                Map map = (Map) obj;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                if (map.isEmpty() || map.get(str2) == null) {
                    throw new Exception(tr.g("get metadata from server failed, guid=", str2));
                }
                return (h) map.get(str2);
            case 2:
                Map map2 = (Map) obj;
                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                if (map2.isEmpty() || map2.get(str2) == null) {
                    throw new Exception(tr.g("get background metadata from server failed, guid=", str2));
                }
                return (h) map2.get(str2);
            case 3:
                Map map3 = (Map) obj;
                ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                if (map3.isEmpty() || map3.get(str2) == null) {
                    throw new Exception(tr.g("get metadata from server failed, guid=", str2));
                }
                return (h) map3.get(str2);
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 16:
            default:
                Pair pair = (Pair) obj;
                AtomicInteger atomicInteger = j.f41498a;
                if (pair != null) {
                    try {
                        DBUtility.i(YMKDatabase.b(), new g91(pair, c2 == true ? 1 : 0));
                    } catch (Throwable th) {
                        Log.e("IdSystemDataHelper", "idc result insert to database failed", th);
                        throw th;
                    }
                    break;
                }
                return Single.h(str2);
            case 11:
                Log.e("ContentPreloader", "Preload mapping table failed. type=" + str2, (Throwable) obj);
                return Observable.empty();
            case 13:
                Log.g(3, "ProductMappingUtility", "type: " + str2 + ", query from network succeed");
                return new Pair(str2, ((a) obj).a());
            case 14:
                a.v(3, "[checkNeedToUpdate] query product list from DB for featureType=", str2, "ProductMaskHelper");
                List listE = d.d.e(YMKDatabase.b(), "featureType", str2);
                List<e.a> listA = ((e) obj).a();
                if (listE.size() == listA.size()) {
                    Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] compare modified date for featureType=".concat(str2));
                    Map map4 = (Map) Observable.fromIterable(listE).collectInto(new HashMap(), new no0(9)).c();
                    for (e.a aVar : listA) {
                        com.perfectcorp.perfectlib.ph.database.ymk.sku.c cVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.c) map4.get(aVar.a());
                        if (cVar == null) {
                            str = "[checkNeedToUpdate] have the same product count but contains different GUID for featureType=";
                        } else if (cVar.f41287b < aVar.b()) {
                            str = "[checkNeedToUpdate] have outdated product for featureType=";
                        }
                    }
                    Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] products are up-to-date for featureType=".concat(str2));
                    return Boolean.FALSE;
                }
                str = "[checkNeedToUpdate] product count is different between server and DB. featureType=";
                Log.g(3, "ProductMaskHelper", str.concat(str2));
                return Boolean.TRUE;
            case 15:
                e eVar = (e) obj;
                a.v(3, "[syncServer] collect all product GUIDs for featureType=", str2, "ProductMaskHelper");
                List listE2 = d.d.e(YMKDatabase.b(), "featureType", str2);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                ImmutableMap.Builder builder = new ImmutableMap.Builder();
                for (Object obj2 : listE2) {
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.c cVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.sku.c) obj2;
                    Objects.requireNonNull(cVar2);
                    String str3 = cVar2.f41286a;
                    concurrentLinkedQueue.add(str3);
                    builder.b(str3, obj2);
                }
                try {
                    ImmutableMap immutableMapA = builder.a();
                    Log.g(3, "ProductMaskHelper", "[syncServer] has " + eVar.a().size() + " products in featureType=" + str2);
                    Single list = Observable.fromIterable(eVar.a()).filter(new p3(immutableMapA, concurrentLinkedQueue, 22)).map(new no0(8)).toList();
                    cq0 cq0Var = new cq0(str2, concurrentLinkedQueue, eVar, i3);
                    list.getClass();
                    return new m(list, cq0Var);
                } catch (IllegalArgumentException e2) {
                    a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
                    return null;
                }
            case 17:
                RequestTask.Response response = (RequestTask.Response) obj;
                int i5 = response.f39357a;
                Object obj3 = response.f39358b;
                if (i5 == 304) {
                    Log.g(3, "SkuHandler", "[getBackgroundIDs] Get sku tree returned with HTTP status code 304. type=".concat(str2));
                    return new Triple(Integer.valueOf(i5), "", new HashSet(SkuDao.h(YMKDatabase.b(), str2)));
                }
                Log.g(3, "SkuHandler", "[getBackgroundIDs] Get sku tree returned with response. type=" + str2 + ", responseCode=" + i5);
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b bVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b) obj3;
                Objects.requireNonNull(bVar);
                List listB = bVar.b();
                Log.g(3, "SkuHandler", "[getBackgroundIDs] Get background tree returned background.size()=" + listB.size());
                Map mapF = SkuDao.f(YMKDatabase.b(), str2);
                ImmutableSet immutableSetQ = FluentIterable.n(listB).r(new xx0(2)).q();
                ImmutableList immutableListP = FluentIterable.n(mapF.keySet()).i(new uw(2, immutableSetQ)).p();
                com.perfectcorp.perfectlib.ph.database.ymk.background.b bVar2 = com.perfectcorp.perfectlib.ph.database.ymk.background.b.d;
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                bVar2.getClass();
                Threads.b();
                Objects.requireNonNull(immutableListP);
                HashSet hashSet = new HashSet(immutableListP);
                try {
                    sQLiteDatabaseC.execSQL("UPDATE " + YMKDatabase.a(sQLiteDatabaseC, bVar2.f40266b) + " SET isDeleted=1 WHERE guid" + DBUtility.b(hashSet));
                    break;
                } catch (Throwable th2) {
                    Log.e("BackgroundInfoDao", "[setDeleted] failed. isDeleted=true, guids=" + hashSet, th2);
                }
                Log.g(3, "SkuHandler", "[getBackgroundIDs] retiredIdList.size()=" + immutableListP.size() + ", toBeDownloadedSkuIds.size()=" + FluentIterable.n(listB).i(new dy0(mapF, 0)).r(new xx0(i4)).q().size());
                return new Triple(Integer.valueOf(i5), bVar.a(), immutableSetQ);
            case 18:
                int i6 = ((RequestTask.Response) obj).f39357a;
                Log.g(3, "SkuHandler", "[checkSkuTreeNeedToUpdate] featureType=" + str2 + ", responseCode=" + i6);
                return Boolean.valueOf(i6 != 304);
            case 19:
                List<SkuSetInfo> list2 = (List) obj;
                for (SkuSetInfo skuSetInfo : list2) {
                    if (Objects.equals(str2, skuSetInfo.getGuid())) {
                        return Collections.singletonList(skuSetInfo);
                    }
                }
                return list2;
            case 20:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.d.b bVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.d.b) obj;
                return Observable.fromIterable(bVar3.b().a()).map(new gy0(bVar3, str2, 10));
            case 21:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.c cVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.c) ((RequestTask.Response) obj).f39358b;
                LinkedList linkedList = new LinkedList();
                for (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.c.a aVar2 : cVar3.a()) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b.a aVar3 = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b.a();
                    aVar3.f41429c = aVar2.downloadURL;
                    aVar3.d = aVar2.downloadCheckSum;
                    aVar3.f41427a = aVar2.guid;
                    aVar3.f41428b = com.perfectcorp.perfectlib.ph.database.ymk.background.c.a(aVar2.usageType);
                    aVar3.f41430e = aVar2.expiredDate;
                    linkedList.add(new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b(aVar3));
                }
                if (!linkedList.isEmpty()) {
                    return (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b) linkedList.get(0);
                }
                md.k(tr.g("Can't find metadata from server. guid=", str2));
                return null;
            case 22:
                e.a aVar4 = (e.a) obj;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.c.a aVar5 = new com.perfectcorp.perfectlib.ph.database.ymk.sku.c.a();
                String strA = aVar4.a();
                Objects.requireNonNull(strA);
                aVar5.f41289a = strA;
                aVar5.f41290b = aVar4.b();
                Objects.requireNonNull(str2);
                aVar5.f41291c = str2;
                return new com.perfectcorp.perfectlib.ph.database.ymk.sku.c(aVar5);
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        int i2 = this.f79987b;
        String str = this.f79988c;
        switch (i2) {
            case 5:
                return ConstructorConstructor.lambda$newUnsafeAllocator$20(str);
            case 6:
                return ConstructorConstructor.lambda$newDefaultConstructor$7(str);
            case 7:
                return ConstructorConstructor.lambda$newDefaultConstructor$8(str);
            case 8:
                return ConstructorConstructor.lambda$get$2(str);
            case 9:
                return ConstructorConstructor.lambda$get$3(str);
            default:
                return ConstructorConstructor.lambda$get$4(str);
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) throws ExecutionException {
        if (!task.isSuccessful()) {
            throw new ExecutionException(task.getException());
        }
        String str = (String) task.getResult();
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.f79988c;
            if (str.endsWith(str2)) {
                return str2;
            }
        }
        throw new ExecutionException(new IllegalArgumentException("Unexpected Error: FID NOT matching!"));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        return this.f79988c.equalsIgnoreCase(((IdRow) obj).f41150e);
    }
}
