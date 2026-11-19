package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.pattern.c;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.g;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.b;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.d;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.j;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.l;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class eq0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SQLiteDatabase f68923c;
    public final /* synthetic */ List d;

    public /* synthetic */ eq0(SQLiteDatabase sQLiteDatabase, List list, int i2) {
        this.f68922b = i2;
        this.f68923c = sQLiteDatabase;
        this.d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68922b;
        SQLiteDatabase sQLiteDatabase = this.f68923c;
        List<String> list = this.d;
        switch (i2) {
            case 0:
                Log.g(3, "ProductMaskHelper", "[runInTransaction] enter transaction");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(sQLiteDatabase);
                }
                Log.g(3, "ProductMaskHelper", "[runInTransaction] exit transaction");
                return;
            case 1:
                Threads.b();
                Threads.b();
                String[] strArr = Contract.SkuItem.f40243a;
                String strConcat = "skuGuid".concat(DBUtility.b(list));
                SQLiteDatabase sQLiteDatabase2 = this.f68923c;
                List list2 = (List) Observable.fromIterable(SkuItemDao.c(sQLiteDatabase2, strArr, strConcat, null, "_id ASC", null)).map(new zy0(10)).toList().c();
                Threads.b();
                try {
                    sQLiteDatabase2.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase2, "Sku") + " SET isDeleted = 1 WHERE skuGuid IN (" + DBUtility.g(list) + ")"));
                    Threads.b();
                    try {
                        sQLiteDatabase2.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase2, "SkuItem") + " SET isDeleted = 1 WHERE skuGuid IN (" + DBUtility.g(list) + ")"));
                        c.g(sQLiteDatabase2, list2);
                        return;
                    } catch (Throwable th) {
                        Log.e("SkuItemDao", "[markAsDeletedBySkuGuid] failed", th);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Log.e("SkuDao", "[markAsDeleted] failed", th2);
                    throw th2;
                }
            case 2:
                for (String str : list) {
                    b.b(sQLiteDatabase, str);
                    d.a(sQLiteDatabase, str);
                    j.a(sQLiteDatabase, str);
                    l.a(sQLiteDatabase, str);
                }
                return;
            default:
                Threads.b();
                Threads.b();
                List list3 = (List) Observable.fromIterable(g.c(sQLiteDatabase, Contract.SkuItemOnly.f40245a, "skuGuid".concat(DBUtility.b(list)), null)).map(new zy0(10)).toList().c();
                Threads.b();
                try {
                    sQLiteDatabase.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase, "SkuOnly") + " SET isDeleted = 1 WHERE skuGuid IN (" + DBUtility.g(list) + ")"));
                    Threads.b();
                    try {
                        sQLiteDatabase.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase, "SkuItemOnly") + " SET isDeleted = 1 WHERE skuGuid IN (" + DBUtility.g(list) + ")"));
                        c.g(sQLiteDatabase, list3);
                        return;
                    } catch (Throwable th3) {
                        Log.e("SkuItemOnlyDao", "[markAsDeletedBySkuGuid] failed", th3);
                        throw th3;
                    }
                } catch (Throwable th4) {
                    Log.e("SkuOnlyDao", "[markAsDeleted] failed", th4);
                    throw th4;
                }
        }
    }

    public /* synthetic */ eq0(List list, SQLiteDatabase sQLiteDatabase, int i2) {
        this.f68922b = i2;
        this.d = list;
        this.f68923c = sQLiteDatabase;
    }
}
