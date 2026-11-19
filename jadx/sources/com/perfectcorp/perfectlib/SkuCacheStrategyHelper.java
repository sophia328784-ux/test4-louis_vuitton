package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import defpackage.aa0;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
abstract class SkuCacheStrategyHelper {
    public static void a(com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a c0136a) {
        StringBuilder sb;
        String str = c0136a.f41165a;
        Threads.b();
        try {
            Log.g(3, "SkuCacheStrategyHelper", "[updateSkuSetOnSdkInit] start update SKU set guid=" + str);
            com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.C0171b c0171b = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.C0171b) GsonHelper.f39260a.i(c0136a.f41167c, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.C0171b.class);
            SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
            DBUtility.i(sQLiteDatabaseC, new aa0(sQLiteDatabaseC, c0171b, 23));
            sb = new StringBuilder("[updateSkuSetOnSdkInit] remove guid=");
        } catch (Throwable th) {
            try {
                Log.e("SkuCacheStrategyHelper", "[updateSkuSetOnSdkInit] failed while update SKU set data, row=" + c0136a, th);
                sb = new StringBuilder("[updateSkuSetOnSdkInit] remove guid=");
            } catch (Throwable th2) {
                Log.g(3, "SkuCacheStrategyHelper", "[updateSkuSetOnSdkInit] remove guid=" + str + " from CacheStrategyForCacheFirstThenUpdate table");
                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
                throw th2;
            }
        }
        sb.append(str);
        sb.append(" from CacheStrategyForCacheFirstThenUpdate table");
        Log.g(3, "SkuCacheStrategyHelper", sb.toString());
        com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
        defpackage.a.v(3, "[updateSkuSetOnSdkInit] end SKU set guid=", str, "SkuCacheStrategyHelper");
    }

    public static void b(com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a c0136a, Configuration.ImageSource imageSource) {
        StringBuilder sb;
        String str = c0136a.f41165a;
        Threads.b();
        try {
            Log.g(3, "SkuCacheStrategyHelper", "[updateSkuOnSdkInit] start update SKU guid=" + str);
            com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) GsonHelper.f39260a.i(c0136a.f41167c, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.class);
            CacheCleaner.d(hVar.skuGUID, true);
            Log.g(3, "SkuCacheStrategyHelper", "[updateByProtocolMethod] start");
            SkuDataForProtocol skuDataForProtocolI = SkuDataForProtocol.i(Collections.singleton(hVar), imageSource, null, null);
            Log.g(3, "SkuCacheStrategyHelper", "[updateByProtocolMethod] insert content");
            skuDataForProtocolI.k();
            Log.g(3, "SkuCacheStrategyHelper", "[updateByProtocolMethod] end");
            sb = new StringBuilder("[updateSkuOnSdkInit] sremove guid=");
        } catch (Throwable th) {
            try {
                Log.e("SkuCacheStrategyHelper", "[updateSkuOnSdkInit] sfailed while update SKU data, row=" + c0136a, th);
                sb = new StringBuilder("[updateSkuOnSdkInit] sremove guid=");
            } catch (Throwable th2) {
                Log.g(3, "SkuCacheStrategyHelper", "[updateSkuOnSdkInit] sremove guid=" + str + " from CacheStrategyForCacheFirstThenUpdate table");
                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
                throw th2;
            }
        }
        sb.append(str);
        sb.append(" from CacheStrategyForCacheFirstThenUpdate table");
        Log.g(3, "SkuCacheStrategyHelper", sb.toString());
        com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
        defpackage.a.v(3, "[updateSkuOnSdkInit] end SKU guid=", str, "SkuCacheStrategyHelper");
    }

    public static void c(String str) {
        Log.g(3, "SkuCacheStrategyHelper", " remove CacheStrategyForCacheFirstThenUpdate table guid=" + str);
        com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.d(str);
    }
}
