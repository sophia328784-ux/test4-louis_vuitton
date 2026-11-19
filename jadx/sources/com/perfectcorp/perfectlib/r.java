package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.debug.NotAnError;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.o60;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41800b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41801c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41802e;

    public /* synthetic */ r(Future future, NotAnError notAnError, int i2) {
        this.d = future;
        this.f41802e = notAnError;
        this.f41801c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cursor cursor;
        long j2;
        Cursor cursor2;
        long j3;
        Cursor cursorQuery;
        long j4;
        List<IdUsageDao.Row> listI;
        int i2 = this.f41800b;
        Object obj = this.f41802e;
        int i3 = this.f41801c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                Future future = (Future) obj2;
                NotAnError notAnError = (NotAnError) obj;
                CacheCleaner.c(future);
                Log.c("CacheCleaner", "cleanUp::start search", notAnError);
                long j5 = ((long) i3) << 20;
                DBUtility.i(CacheCleaner.b(), new t(0));
                CacheCleaner.c(future);
                SQLiteDatabase sQLiteDatabaseB = CacheCleaner.b();
                Threads.b();
                try {
                    String[] strArr = {"SUM(ValueFolderSizeInByte)"};
                    Cursor cursorQuery2 = sQLiteDatabaseB.query("IdUsage", strArr, null, null, null, null, null, null);
                    try {
                        if (DBUtility.f(cursorQuery2)) {
                            j2 = cursorQuery2.getLong(cursorQuery2.getColumnIndex(strArr[0]));
                            IO.b(cursorQuery2);
                        } else {
                            IO.b(cursorQuery2);
                            j2 = 0;
                        }
                        try {
                            String[] strArr2 = {"SUM(Size)"};
                            Cursor cursorQuery3 = CacheCleaner.b().query("IdSystemInfo", strArr2, null, null, null, null, null, null);
                            try {
                                if (DBUtility.f(cursorQuery3)) {
                                    long j6 = cursorQuery3.getLong(cursorQuery3.getColumnIndex(strArr2[0]));
                                    IO.b(cursorQuery3);
                                    j3 = j6;
                                } else {
                                    IO.b(cursorQuery3);
                                    j3 = 0;
                                }
                                SQLiteDatabase sQLiteDatabaseB2 = CacheCleaner.b();
                                DownloadImageDao.Type[] typeArr = {DownloadImageDao.Type.SKU, DownloadImageDao.Type.LOOK};
                                DownloadImageDao downloadImageDao = DownloadImageDao.d;
                                try {
                                    String[] strArr3 = {"SUM(size)"};
                                    cursorQuery = sQLiteDatabaseB2.query("(SELECT size FROM DownloadImage" + " WHERE ".concat(new Joiner(" OR ").b(FluentIterable.n(Arrays.asList(typeArr)).r(new com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.a()))) + " GROUP BY url)", strArr3, null, null, null, null, null, null);
                                    try {
                                        if (DBUtility.f(cursorQuery)) {
                                            j4 = cursorQuery.getLong(cursorQuery.getColumnIndex(strArr3[0]));
                                            IO.b(cursorQuery);
                                        } else {
                                            IO.b(cursorQuery);
                                            j4 = 0;
                                        }
                                        long jA = j2 + j3 + j4;
                                        StringBuilder sbQ = pq0.q(jA, "getTotalSize total=", ", idUsageSize=");
                                        sbQ.append(j2);
                                        sbQ.append(", idSystemSize=");
                                        sbQ.append(j3);
                                        sbQ.append(", downloadImageSize=");
                                        sbQ.append(j4);
                                        Log.g(3, "CacheCleaner", sbQ.toString());
                                        CacheCleaner.c(future);
                                        if (jA > j5) {
                                            Log.c("CacheCleaner", "cleanUp::start delete rows", notAnError);
                                            SQLiteDatabase sQLiteDatabaseB3 = CacheCleaner.b();
                                            Threads.b();
                                            try {
                                                Cursor cursorQuery4 = sQLiteDatabaseB3.query("IdUsage", null, null, null, null, null, "ValueTimestamp ASC", null);
                                                try {
                                                    if (cursorQuery4.moveToFirst()) {
                                                        bz bzVar = ImmutableList.f42200c;
                                                        ImmutableList.Builder builder = new ImmutableList.Builder();
                                                        do {
                                                            builder.f(IdUsageDao.a(cursorQuery4));
                                                        } while (cursorQuery4.moveToNext());
                                                        listI = builder.i();
                                                        cursorQuery4.close();
                                                    } else {
                                                        listI = Collections.EMPTY_LIST;
                                                        cursorQuery4.close();
                                                    }
                                                    for (IdUsageDao.Row row : listI) {
                                                        if (jA <= j5) {
                                                            Log.g(3, "CacheCleaner", "Keep row=" + row);
                                                        } else {
                                                            jA -= CacheCleaner.a(Collections.singleton(row), true);
                                                            Log.g(3, "CacheCleaner", "remaining totalSize=" + jA);
                                                            CacheCleaner.c(future);
                                                        }
                                                    }
                                                } catch (Throwable th) {
                                                    if (cursorQuery4 == null) {
                                                        throw th;
                                                    }
                                                    try {
                                                        cursorQuery4.close();
                                                        throw th;
                                                    } catch (Throwable th2) {
                                                        th.addSuppressed(th2);
                                                        throw th;
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                Log.e("IdUsageDao", "sortByTimestamp", th3);
                                                throw th3;
                                            }
                                        }
                                        Log.g(3, "CacheCleaner", o60.j(jA, " bytes.", pq0.q(j5, "cleanUp::max cache size=", " bytes, kept size=")));
                                        Log.c("CacheCleaner", "cleanUp::end", notAnError);
                                        return;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        try {
                                            Log.e("DownloadImageDao", "[getSizeSummation] failed.", th);
                                            throw th;
                                        } catch (Throwable th5) {
                                            IO.b(cursorQuery);
                                            throw th5;
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    cursorQuery = null;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                cursor2 = cursorQuery3;
                                try {
                                    Log.e("IdSystemInfoDao", "[getSizeSummation] failed.", th);
                                    throw th;
                                } catch (Throwable th8) {
                                    IO.b(cursor2);
                                    throw th8;
                                }
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            cursor2 = null;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        cursor = cursorQuery2;
                        try {
                            Log.e("IdUsageDao", "[getSizeSummation] failed.", th);
                            throw th;
                        } catch (Throwable th11) {
                            IO.b(cursor);
                            throw th11;
                        }
                    }
                } catch (Throwable th12) {
                    th = th12;
                    cursor = null;
                }
                break;
            default:
                ((SkinCare3RecommendationHandler.AnonymousClass1) ((RecommendationHandler.SyncServerCallback) obj)).progress((((((double) ((AtomicInteger) obj2).incrementAndGet()) / ((double) i3)) + 1.0d) * 0.2d) + 0.4d);
                return;
        }
    }

    public /* synthetic */ r(AtomicInteger atomicInteger, int i2, RecommendationHandler.SyncServerCallback syncServerCallback) {
        this.d = atomicInteger;
        this.f41801c = i2;
        this.f41802e = syncServerCallback;
    }
}
