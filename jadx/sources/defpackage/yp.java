package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.b;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.d;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.e;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.f;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.g;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.h;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.j;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.l;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yp implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SQLiteDatabase f81404c;
    public final /* synthetic */ String d;

    public /* synthetic */ yp(int i2, SQLiteDatabase sQLiteDatabase, String str) {
        this.f81403b = i2;
        this.f81404c = sQLiteDatabase;
        this.d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81403b;
        String str = this.d;
        SQLiteDatabase sQLiteDatabase = this.f81404c;
        switch (i2) {
            case 0:
                a.c(sQLiteDatabase, new com.perfectcorp.perfectlib.ph.template.a(str));
                break;
            case 1:
                SkuDao.e(sQLiteDatabase, str);
                Threads.b();
                Log.g(3, "SkuItemDao", "[delete] delete id: " + str + ", rowsAffected: " + sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuItem"), "skuGuid = ?", new String[]{str}));
                break;
            case 2:
                b.b(sQLiteDatabase, str);
                d.a(sQLiteDatabase, str);
                j.a(sQLiteDatabase, str);
                l.a(sQLiteDatabase, str);
                e.a(sQLiteDatabase, str);
                f.a(sQLiteDatabase, str);
                g.a(sQLiteDatabase, str);
                h.a(sQLiteDatabase, str);
                break;
            default:
                e.a(sQLiteDatabase, str);
                f.a(sQLiteDatabase, str);
                g.a(sQLiteDatabase, str);
                h.a(sQLiteDatabase, str);
                break;
        }
    }
}
