package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.ph.database.ymk.generictag.d;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.a;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.b;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pw0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HashSet f78941c;
    public final /* synthetic */ SQLiteDatabase d;

    public /* synthetic */ pw0(HashSet hashSet, SQLiteDatabase sQLiteDatabase, int i2) {
        this.f78940b = i2;
        this.f78941c = hashSet;
        this.d = sQLiteDatabase;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f78940b;
        SQLiteDatabase sQLiteDatabase = this.d;
        HashSet hashSet = this.f78941c;
        switch (i2) {
            case 0:
                DownloadImageDao downloadImageDao = DownloadImageDao.d;
                DownloadImageDao.Type type = DownloadImageDao.Type.SKIN_CARE_3;
                hashSet.addAll(downloadImageDao.r(sQLiteDatabase, type));
                a.d.b(sQLiteDatabase);
                b.d.b(sQLiteDatabase);
                downloadImageDao.p(sQLiteDatabase, type);
                break;
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.b.d.b(YMKDatabase.b());
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d.b(YMKDatabase.b());
                d.d.b(YMKDatabase.b());
                DownloadImageDao downloadImageDao2 = DownloadImageDao.d;
                DownloadImageDao.Type type2 = DownloadImageDao.Type.TAG_SKU;
                hashSet.addAll(downloadImageDao2.r(sQLiteDatabase, type2));
                DownloadImageDao.Type type3 = DownloadImageDao.Type.TAG_LOOK;
                hashSet.addAll(downloadImageDao2.r(sQLiteDatabase, type3));
                downloadImageDao2.p(sQLiteDatabase, type2);
                downloadImageDao2.p(sQLiteDatabase, type3);
                break;
        }
    }
}
