package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gx0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SQLiteDatabase f69507c;
    public final /* synthetic */ h d;

    public /* synthetic */ gx0(SQLiteDatabase sQLiteDatabase, h hVar, int i2) {
        this.f69506b = i2;
        this.f69507c = sQLiteDatabase;
        this.d = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69506b;
        int i3 = 1;
        h hVar = this.d;
        SQLiteDatabase sQLiteDatabase = this.f69507c;
        int i4 = 3;
        switch (i2) {
            case 0:
                List listSingletonList = Collections.singletonList(hVar.skuGUID);
                Log.g(3, "SkuDbHelper", "[markAsDeleted] start, skuGuids=" + listSingletonList);
                DBUtility.i(sQLiteDatabase, new eq0(sQLiteDatabase, listSingletonList, i3));
                SkuDao.e(sQLiteDatabase, hVar.skuGUID);
                Sku sku = new Sku(hVar);
                Threads.b();
                try {
                    long jReplace = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "Sku"), null, sku.a());
                    if (jReplace < 0) {
                        Log.g(5, "SkuDao", "[insertOrReplace] failed. id: " + jReplace);
                        break;
                    }
                    for (h.d dVar : hVar.items) {
                        String str = dVar.itemGUID;
                        Threads.b();
                        Log.g(3, "SkuItemDao", "[delete] delete id: " + str + ", rowsAffected: " + sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItem"), "itemGuid = ?", new String[]{str}));
                        e eVar = new e(hVar.skuGUID, dVar);
                        Threads.b();
                        try {
                            long jReplace2 = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "SkuItem"), null, eVar.c());
                            if (jReplace2 < 0) {
                                Log.g(5, "SkuItemDao", "[insertOrReplace] failed. id: " + jReplace2);
                            }
                        } catch (Throwable th) {
                            Log.e("SkuItemDao", "[insertOrReplace] error", th);
                            throw th;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    Log.e("SkuDao", "[insertOrReplace] error", th2);
                    throw th2;
                }
            default:
                List listSingletonList2 = Collections.singletonList(hVar.skuGUID);
                Log.g(3, "SkuDbHelper", "[markAsDeleted] start, skuGuids=" + listSingletonList2);
                DBUtility.i(sQLiteDatabase, new eq0(sQLiteDatabase, listSingletonList2, i4));
                String str2 = hVar.skuGUID;
                Threads.b();
                int iDelete = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuOnly"), "skuGuid = ?", new String[]{str2});
                if (iDelete != 1) {
                    Log.g(5, "SkuOnlyDao", "[delete] delete id: " + str2 + ", rowsAffected != 1, rowsAffected: " + iDelete);
                }
                Sku sku2 = new Sku(hVar);
                Threads.b();
                try {
                    long jReplace3 = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "SkuOnly"), null, sku2.a());
                    if (jReplace3 < 0) {
                        Log.g(5, "SkuOnlyDao", "[insertOrReplace] failed. id: " + jReplace3);
                        break;
                    }
                    for (h.d dVar2 : hVar.items) {
                        String str3 = dVar2.itemGUID;
                        Threads.b();
                        Log.g(3, "SkuItemOnlyDao", "[delete] delete id: " + str3 + ", rowsAffected: " + sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItemOnly"), "itemGuid = ?", new String[]{str3}));
                        e eVar2 = new e(hVar.skuGUID, dVar2);
                        Threads.b();
                        try {
                            long jReplace4 = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "SkuItemOnly"), null, eVar2.c());
                            if (jReplace4 < 0) {
                                Log.g(5, "SkuItemOnlyDao", "[insertOrReplace] failed. id: " + jReplace4);
                            }
                        } catch (Throwable th3) {
                            Log.e("SkuItemOnlyDao", "[insertOrReplace] error", th3);
                            throw th3;
                        }
                    }
                    return;
                } catch (Throwable th4) {
                    Log.e("SkuOnlyDao", "[insertOrReplace] error", th4);
                    throw th4;
                }
        }
    }
}
