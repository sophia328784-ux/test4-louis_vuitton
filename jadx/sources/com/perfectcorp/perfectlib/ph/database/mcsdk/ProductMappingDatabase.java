package com.perfectcorp.perfectlib.ph.database.mcsdk;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ProductMappingDatabase extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f41151b = ImmutableList.A(500, 250);

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ProductMappingDatabase f41152a = new ProductMappingDatabase(PfCommons.b(), "PRODUCT_MAPPING", null, 1);
    }

    public static IdRow c(Cursor cursor) {
        return new IdRow(cursor.getString(cursor.getColumnIndexOrThrow("type")), cursor.getString(cursor.getColumnIndexOrThrow("skuGuid")), cursor.getString(cursor.getColumnIndexOrThrow("productId")), cursor.getString(cursor.getColumnIndexOrThrow("skuItemGuid")), cursor.getString(cursor.getColumnIndexOrThrow("shadetId")));
    }

    public static ProductMappingDatabase h() {
        return a.f41152a;
    }

    public static void m(LinkedList linkedList, SQLiteDatabase sQLiteDatabase, int i2) {
        sQLiteDatabase.beginTransaction();
        try {
            Log.g(3, "ProductMappingDatabase", "[tryToInsert] idRows.size()=" + linkedList.size() + ", rowLimit=" + i2);
            for (List list : Lists.b(i2, linkedList)) {
                Log.g(3, "ProductMappingDatabase", "[tryToInsert] partial size=" + list.size());
                StringBuilder sb = new StringBuilder("INSERT INTO ProductMapping VALUES ");
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    Object next = it.next();
                    while (true) {
                        ((IdRow) next).a(sb);
                        if (it.hasNext()) {
                            sb.append(",");
                            next = it.next();
                        }
                    }
                }
                sQLiteDatabase.execSQL(sb.toString());
            }
            sQLiteDatabase.setTransactionSuccessful();
            Log.g(3, "ProductMappingDatabase", "[tryToInsert] done");
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("ProductMappingDatabase", "[tryToInsert] failed. rowLimit=" + i2, th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    public final Optional j(String str, String[] strArr) {
        try {
            Cursor cursorQuery = getReadableDatabase().query("ProductMapping", null, str, strArr, null, null, null, "1");
            try {
                Optional optionalA = !cursorQuery.moveToFirst() ? Optional.a() : Optional.e(c(cursorQuery));
                cursorQuery.close();
                return optionalA;
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            StringBuilder sbR = pq0.r("get selection=", str, " selectionArgs=");
            sbR.append(Arrays.asList(strArr));
            Log.e("ProductMappingDatabase", sbR.toString(), th3);
            return Optional.a();
        }
    }

    public final List k(String str, List list) {
        Objects.requireNonNull(list, "ids can't be null");
        try {
            Cursor cursorQuery = getReadableDatabase().query("ProductMapping", null, str + " IN (" + DBUtility.g(list) + ")", null, null, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    List list2 = Collections.EMPTY_LIST;
                    cursorQuery.close();
                    return list2;
                }
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    builder.f(c(cursorQuery));
                } while (cursorQuery.moveToNext());
                ImmutableList immutableListI = builder.i();
                cursorQuery.close();
                return immutableListI;
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            Log.e("ProductMappingDatabase", "get " + str + " failed. ids=" + list, th3);
            return Collections.EMPTY_LIST;
        }
    }

    public final void n() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("ProductMapping", null, null);
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("ProductMappingDatabase", "clear", th);
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE ProductMapping(type TEXT NOT NULL DEFAULT '',skuGuid TEXT NOT NULL DEFAULT '',productId TEXT NOT NULL DEFAULT '',skuItemGuid TEXT NOT NULL DEFAULT '',shadetId TEXT NOT NULL DEFAULT '', UNIQUE (type,skuGuid,productId,skuItemGuid,shadetId) ON CONFLICT IGNORE);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}
