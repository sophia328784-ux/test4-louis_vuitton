package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SkuDao {
    public static Optional a(SQLiteDatabase sQLiteDatabase, String str, boolean z) {
        String[] strArr;
        String str2;
        Threads.b();
        if (z) {
            strArr = new String[]{str};
            str2 = "skuGuid=?";
        } else {
            strArr = new String[]{str, ContentTree.ROOT_ID};
            str2 = "skuGuid=? AND isDeleted=?";
        }
        List listC = c(sQLiteDatabase, str2, "1", strArr);
        return MoreCollections.a(listC) ? Optional.a() : Optional.e((Sku) listC.get(0));
    }

    public static List b(Cursor cursor) {
        if (!DBUtility.f(cursor)) {
            return Collections.EMPTY_LIST;
        }
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        do {
            Sku.a aVarB = Sku.b();
            aVarB.f41271a = cursor.getLong(cursor.getColumnIndex("skuId"));
            aVarB.f41275f = cursor.getString(cursor.getColumnIndex("skuGuid"));
            aVarB.d = cursor.getString(cursor.getColumnIndex("name"));
            aVarB.f41274e = cursor.getString(cursor.getColumnIndex("longName"));
            aVarB.n = cursor.getInt(cursor.getColumnIndex("isDefault")) == 1 ? 1 : 0;
            aVarB.g = cursor.getString(cursor.getColumnIndex("vendor"));
            aVarB.f41276h = cursor.getLong(cursor.getColumnIndex("startDate"));
            aVarB.f41277i = cursor.getLong(cursor.getColumnIndex("endDate"));
            aVarB.f41272b = cursor.getString(cursor.getColumnIndex("featureType"));
            aVarB.f41273c = cursor.getString(cursor.getColumnIndex("featureSubtype"));
            aVarB.f41278j = cursor.getLong(cursor.getColumnIndex("lastModified"));
            aVarB.l = cursor.getString(cursor.getColumnIndex("info"));
            aVarB.f41279k = cursor.getLong(cursor.getColumnIndex("customerId"));
            aVarB.o = cursor.getInt(cursor.getColumnIndex("isDeleted")) == 1 ? 1 : 0;
            aVarB.m = cursor.getString(cursor.getColumnIndex("extraInfo"));
            aVarB.p = cursor.getString(cursor.getColumnIndex("hidden"));
            builder.f(new Sku(aVarB));
        } while (cursor.moveToNext());
        return builder.i();
    }

    public static List c(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        Threads.b();
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("Sku", Contract.Sku.f40241a, str, strArr, null, null, null, str2);
            List listB = b(cursorQuery);
            IO.b(cursorQuery);
            return listB;
        } catch (Throwable th) {
            try {
                Log.e("SkuDao", "[get] error", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorQuery);
                throw th2;
            }
        }
    }

    public static List d(SQLiteDatabase sQLiteDatabase, List list) {
        Threads.b();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery(DBUtility.d(("SELECT * FROM " + YMKDatabase.a(sQLiteDatabase, "Sku") + " WHERE skuGuid IN (" + DBUtility.g(list) + ")").concat(" AND isDeleted=0")), null);
            List listB = b(cursorRawQuery);
            IO.b(cursorRawQuery);
            return listB;
        } catch (Throwable th) {
            try {
                Log.e("SkuDao", "[get] error", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorRawQuery);
                throw th2;
            }
        }
    }

    public static void e(SQLiteDatabase sQLiteDatabase, String str) {
        Threads.b();
        int iDelete = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "Sku"), "skuGuid = ?", new String[]{str});
        if (iDelete != 1) {
            Log.g(5, "SkuDao", "[delete] delete id: " + str + ", rowsAffected != 1, rowsAffected: " + iDelete);
        }
    }

    public static Map f(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query(true, "Sku", new String[]{"skuGuid", "lastModified"}, "featureType=? AND isDeleted=?", new String[]{str, ContentTree.ROOT_ID}, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                Map map = Collections.EMPTY_MAP;
                IO.b(cursorQuery);
                return map;
            }
            ImmutableMap.Builder builder = new ImmutableMap.Builder();
            do {
                builder.b(cursorQuery.getString(cursorQuery.getColumnIndex("skuGuid")), Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("lastModified"))));
            } while (cursorQuery.moveToNext());
            ImmutableMap immutableMapA = builder.a();
            IO.b(cursorQuery);
            return immutableMapA;
        } catch (Throwable th) {
            try {
                Log.e("SkuDao", "[getIdAndModifiedDatePairs]", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public static List g(SQLiteDatabase sQLiteDatabase, String str, ItemSubType itemSubType) {
        Threads.b();
        Objects.requireNonNull(itemSubType, "itemSubTypes can not be null");
        if (itemSubType == ItemSubType.NONE) {
            Threads.b();
            return c(sQLiteDatabase, "featureType=? AND isDeleted=?", null, new String[]{str, ContentTree.ROOT_ID});
        }
        String[] strArr = (String[]) itemSubType.c().toArray(new String[0]);
        Threads.b();
        return c(sQLiteDatabase, "featureType=? AND isDeleted=? AND featureSubtype".concat(DBUtility.c(strArr)), null, new String[]{str, ContentTree.ROOT_ID});
    }

    public static ArrayList h(SQLiteDatabase sQLiteDatabase, String str) {
        String[] strArr = {str, ContentTree.ROOT_ID};
        Cursor cursorQuery = null;
        try {
            ArrayList arrayList = new ArrayList();
            cursorQuery = sQLiteDatabase.query(true, "Sku", new String[]{"skuGuid"}, "featureType=? AND isDeleted=?", strArr, null, null, null, null);
            if (DBUtility.f(cursorQuery)) {
                do {
                    arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("skuGuid")));
                } while (cursorQuery.moveToNext());
            }
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("SkuDao", "[getIds]", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorQuery);
                throw th2;
            }
        }
    }
}
