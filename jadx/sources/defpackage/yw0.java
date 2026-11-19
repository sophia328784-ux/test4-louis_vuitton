package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.hc.preferences.SkuHandlerPreferences;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$b;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$o;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$p;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.a;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v;
import java.io.File;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yw0 implements BiConsumer, Function, Predicate, BiFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81454b;

    public /* synthetic */ yw0(int i2) {
        this.f81454b = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f81454b) {
            case 0:
                a.C0191a c0191a = (a.C0191a) obj2;
                ((ConcurrentHashMap) obj).put(c0191a.skuId, c0191a);
                break;
            case 5:
                IdRow idRow = (IdRow) obj2;
                ((HashMap) obj).put(idRow.f41148b, idRow.f41149c);
                break;
            case 6:
                IdRow idRow2 = (IdRow) obj2;
                ((HashMap) obj).put(idRow2.d, idRow2.f41150e);
                break;
            case 12:
                b.c cVar = (b.c) obj2;
                ((Map) obj).put(cVar.skuSetId, cVar);
                break;
            case 16:
                h hVar = (h) obj2;
                ((Map) obj).put(hVar.skuGUID, hVar);
                break;
            case 17:
                Pair pair = (Pair) obj2;
                ((Map) obj).put((String) pair.first, (String) pair.second);
                break;
            case 23:
                b.c cVar2 = (b.c) obj2;
                ((Map) obj).put(cVar2.skuSetId, cVar2);
                break;
            default:
                ProductInfo productInfo = (ProductInfo) obj2;
                ((Map) obj).put(productInfo.f39799e, productInfo);
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        final int i2 = 1;
        int i3 = 6;
        final int i4 = 0;
        switch (this.f81454b) {
            case 1:
                return ((b) obj).a();
            case 2:
                final b.C0171b c0171b = (b.C0171b) obj;
                return new v(new t(Single.h(c0171b), new Function() { // from class: dx0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i5 = i4;
                        b.C0171b c0171b2 = c0171b;
                        switch (i5) {
                            case 0:
                                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c(new com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a(c0171b2.guid, com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU_SET, GsonHelper.f39260a.k(c0171b2), com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b.f41169b));
                                break;
                            default:
                                Log.e("SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] insertSkuSetIfNeed failed", (Throwable) obj2);
                                break;
                        }
                        return c0171b2.payload;
                    }
                }), new Function() { // from class: dx0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i5 = i2;
                        b.C0171b c0171b2 = c0171b;
                        switch (i5) {
                            case 0:
                                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c(new com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a(c0171b2.guid, com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU_SET, GsonHelper.f39260a.k(c0171b2), com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b.f41169b));
                                break;
                            default:
                                Log.e("SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] insertSkuSetIfNeed failed", (Throwable) obj2);
                                break;
                        }
                        return c0171b2.payload;
                    }
                }, null);
            case 3:
                h hVar = (h) obj;
                hVar.getClass();
                return new Sku(hVar);
            case 4:
                return (File) ((List) obj).get(0);
            case 5:
            case 6:
            case 7:
            case 9:
            case 12:
            case 16:
            case 17:
            case 19:
            case 23:
            case 25:
            case 26:
            case 27:
            default:
                return (File) ((List) obj).get(0);
            case 8:
                return com.perfectcorp.perfectlib.ph.unit.sku.a.a((List) obj);
            case 10:
                return Boolean.valueOf(!((List) obj).isEmpty());
            case 11:
                return (String) ((Pair) obj).second;
            case 13:
                e eVar = (e) obj;
                return eVar.f41559a != null ? (Iterable) eVar.a() : new ArrayList();
            case 14:
                String str = (String) obj;
                BasicPreferences basicPreferences = SkuHandlerPreferences.f40330a;
                Objects.requireNonNull(str);
                String string = SkuHandlerPreferences.f40330a.getString("KEY_LIST_MESSAGE_DIGEST_".concat(str), "");
                Log.g(3, "SkuHandler", fc.i("[checkSkuTreeNeedToUpdate] featureType=", str, ", messageDigest=", string));
                return str.equals(SkuBeautyMode$FeatureType.BACKGROUND.toString()) ? new t(new c$b(str, "44.0", string).c(), new t7(str, 18)).f(new h8(str, 5)) : new t(new c$p(str, "").c(), new p3(str, string, 28)).f(new h8(str, i3));
            case 15:
                e eVar2 = (e) obj;
                return eVar2.f41559a != null ? (Iterable) eVar2.a() : Collections.EMPTY_LIST;
            case 18:
                return ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) obj).f41293b;
            case 20:
                return ((b.a) obj).skuGuid;
            case 21:
                return new t(new c$o((List) obj).c(), new zy0(i3)).l().concatMapIterable(Functions.f42605a);
            case 22:
                return new DownloadImageHelper.DownloadComponent((String) obj);
            case 24:
                return (String) ((Map.Entry) obj).getValue();
            case 28:
                return g.f42660b;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        boolean zIsEmpty;
        boolean z;
        int i2 = 0;
        switch (this.f81454b) {
            case 7:
                zIsEmpty = ((List) ((Pair) obj).second).isEmpty();
                break;
            case 9:
                b.c cVar = (b.c) obj;
                Optional optionalE = com.perfectcorp.perfectlib.ph.template.e.C0182e.e(cVar.skuSetId);
                if (optionalE.d() && cVar.lastModified <= ((com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) optionalE.c()).f41331e) {
                    if (!ModuleConfig.v && (cVar.type.equals("bracelet") || cVar.type.equals("ring"))) {
                        return false;
                    }
                    AbstractList abstractListC = Lists.c(cVar.a(), new xx0(i2));
                    SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                    Log.g(3, "SkuDao", "[containsAll] collection size=" + abstractListC.size());
                    HashSet hashSet = new HashSet(abstractListC);
                    Cursor cursorRawQuery = null;
                    try {
                        cursorRawQuery = sQLiteDatabaseB.rawQuery(DBUtility.d("SELECT COUNT(*) FROM Sku WHERE skuGuid" + DBUtility.b(ImmutableList.u(hashSet)) + " AND isDeleted=0"), null);
                        if (DBUtility.f(cursorRawQuery)) {
                            cursorRawQuery.moveToFirst();
                            int i3 = cursorRawQuery.getInt(0);
                            Log.g(3, "SkuDao", "containsAll::ids.size()=" + hashSet.size() + ", count=" + i3);
                            z = hashSet.size() == i3;
                            IO.b(cursorRawQuery);
                        } else {
                            IO.b(cursorRawQuery);
                            z = false;
                        }
                        if (z) {
                            return false;
                        }
                    } catch (Throwable th) {
                        try {
                            Log.e("SkuDao", "containsAll failed", th);
                            throw th;
                        } catch (Throwable th2) {
                            IO.b(cursorRawQuery);
                            throw th2;
                        }
                    }
                }
                return true;
            case 19:
                zIsEmpty = ((List) ((Pair) obj).second).isEmpty();
                break;
            default:
                return ((SkuDataForProtocol.DownloadComponent) obj).c() == SkuDataForProtocol.DownloadType.f39922b;
        }
        return !zIsEmpty;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll((Map) obj);
        concurrentHashMap.putAll((Map) obj2);
        return concurrentHashMap;
    }
}
