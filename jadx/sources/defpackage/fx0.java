package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.ph.database.ymk.background.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fx0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SQLiteDatabase f69227c;

    public /* synthetic */ fx0(SQLiteDatabase sQLiteDatabase, int i2) {
        this.f69226b = i2;
        this.f69227c = sQLiteDatabase;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69226b;
        int i3 = 3;
        SQLiteDatabase sQLiteDatabase = this.f69227c;
        switch (i2) {
            case 0:
                Threads.b();
                Iterator it = SkuDao.c(sQLiteDatabase, "isDeleted=?", null, new String[]{"1"}).iterator();
                while (it.hasNext()) {
                    ApplyEffectUtility.cacheCleanerDeleteById(((Sku) it.next()).f41266f, false);
                }
                Threads.b();
                Log.g(3, "SkuItemDao", "[removeIsDeleted] delete " + sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItem"), "isDeleted = ?", new String[]{"1"}) + " rows!");
                return;
            case 1:
                Threads.b();
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "Sku"), null, null);
                Threads.b();
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItem"), null, null);
                Threads.b();
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuOnly"), null, null);
                Threads.b();
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItemOnly"), null, null);
                return;
            case 2:
                Log.g(3, "SkuDbHelper", "[evictAll] start");
                DBUtility.i(sQLiteDatabase, new fx0(sQLiteDatabase, 1));
                Log.g(3, "SkuDbHelper", "[evictAll] end");
                Pattern pattern = a.f41721a;
                Log.g(3, "SkuSetUnit", "[evictAll] start");
                DBUtility.i(sQLiteDatabase, new fx0(sQLiteDatabase, i3));
                Log.g(3, "SkuSetUnit", "[evictAll] end");
                b.d.b(sQLiteDatabase);
                return;
            case 3:
                Pattern pattern2 = a.f41721a;
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSet"), null, null);
                sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSetItem"), null, null);
                Threads.b();
                try {
                    Threads.b();
                    sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSetSupportedPattern"), null, null);
                    Threads.b();
                    try {
                        Threads.b();
                        sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSetWearingStyle"), null, null);
                        return;
                    } catch (Throwable th) {
                        Log.e("SkuSetWearingStyleDao", "[deleteAll] failed", th);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Log.e("SkuSetSupportedPatternDao", "[deleteAll] failed", th2);
                    throw th2;
                }
            default:
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS IdUsage(KeyId TEXT PRIMARY KEY NOT NULL DEFAULT '',ValueTimestamp INTEGER DEFAULT 0,ValueType TEXT NOT NULL DEFAULT '',ValueFolderPath TEXT NOT NULL DEFAULT '',ValueFolderSizeInByte INTEGER DEFAULT 0);");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_id_usage' ON IdUsage(KeyId)");
                for (com.perfectcorp.perfectlib.hc.database.mcsdk.a.b bVar : com.perfectcorp.perfectlib.hc.database.mcsdk.a.h().j(com.perfectcorp.perfectlib.hc.database.mcsdk.a.c.LOOK)) {
                    IdUsageDao.b(sQLiteDatabase, new IdUsageDao.Row(bVar.f40258a, bVar.f40259b, IdUsageDao.Type.MAKEUP_LOOK, bVar.d, bVar.f40261e));
                }
                for (com.perfectcorp.perfectlib.hc.database.mcsdk.a.b bVar2 : com.perfectcorp.perfectlib.hc.database.mcsdk.a.h().j(com.perfectcorp.perfectlib.hc.database.mcsdk.a.c.SKU)) {
                    IdUsageDao.b(sQLiteDatabase, new IdUsageDao.Row(bVar2.f40258a, bVar2.f40259b, IdUsageDao.Type.SKU, bVar2.d, bVar2.f40261e));
                }
                return;
        }
    }
}
