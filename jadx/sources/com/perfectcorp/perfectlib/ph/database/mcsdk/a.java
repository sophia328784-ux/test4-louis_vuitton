package com.perfectcorp.perfectlib.ph.database.mcsdk;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f41153b = ImmutableList.A(500, 250);

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.mcsdk.a$a, reason: collision with other inner class name */
    public static final class C0134a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41154a = new a(PfCommons.b(), "Sku_ShadeId_Mapping", null, 1);
    }

    public static a h() {
        return C0134a.f41154a;
    }

    public static void k(ArrayList arrayList, SQLiteDatabase sQLiteDatabase, int i2) {
        sQLiteDatabase.beginTransaction();
        try {
            Log.g(3, "SkuAndShadeIdMappingDatabase", "[tryToInsert] idRows.size()=" + arrayList.size() + ", rowLimit=" + i2);
            for (List list : Lists.b(i2, arrayList)) {
                Log.g(3, "SkuAndShadeIdMappingDatabase", "[tryToInsert] partial size=" + list.size());
                StringBuilder sb = new StringBuilder("INSERT INTO SkuAndShadeIdMapping VALUES ");
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
            Log.g(3, "SkuAndShadeIdMappingDatabase", "[tryToInsert] done");
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("SkuAndShadeIdMappingDatabase", "[tryToInsert] failed. rowLimit=" + i2, th);
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
            Cursor cursorQuery = getReadableDatabase().query("SkuAndShadeIdMapping", null, str, strArr, null, null, null, "1");
            try {
                Optional optionalA = !cursorQuery.moveToFirst() ? Optional.a() : Optional.e(new IdRow(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("type")), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("skuGuid")), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("productId")), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("skuItemGuid")), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("shadetId"))));
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
            Log.e("SkuAndShadeIdMappingDatabase", sbR.toString(), th3);
            return Optional.a();
        }
    }

    public final Optional m(String str) {
        Objects.requireNonNull(str, "shadetId can't be null");
        return j("shadetId=?", new String[]{str});
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE SkuAndShadeIdMapping(type TEXT NOT NULL DEFAULT '',skuGuid TEXT NOT NULL DEFAULT '',productId TEXT NOT NULL DEFAULT '',skuItemGuid TEXT NOT NULL DEFAULT '',shadetId TEXT NOT NULL DEFAULT '', UNIQUE (type,skuGuid,productId,skuItemGuid,shadetId) ON CONFLICT IGNORE);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}
