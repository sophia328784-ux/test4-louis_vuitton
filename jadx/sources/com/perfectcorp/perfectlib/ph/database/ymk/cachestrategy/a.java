package com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a$a, reason: collision with other inner class name */
    public static final class C0136a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c f41166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41167c;
        public final b d;

        public C0136a(String str, c cVar, String str2, b bVar) {
            Objects.requireNonNull(str, "guid can't be null");
            this.f41165a = str;
            Objects.requireNonNull(cVar, "type can't be null");
            this.f41166b = cVar;
            Objects.requireNonNull(str2, "jsonString can't be null");
            this.f41167c = str2;
            Objects.requireNonNull(bVar, "state can't be null");
            this.d = bVar;
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(IdUsageDao.Row.class.getSimpleName());
            toStringHelper.b("guid", this.f41165a);
            toStringHelper.b("type", this.f41166b.d);
            toStringHelper.b("jsonString", this.f41167c);
            toStringHelper.b("state", this.d);
            return toStringHelper.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f41168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f41169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final /* synthetic */ b[] f41170c;

        static {
            b bVar = new b("DOWNLOADING", 0);
            f41168a = bVar;
            b bVar2 = new b("DOWNLOADED", 1);
            f41169b = bVar2;
            f41170c = new b[]{bVar, bVar2};
        }

        public static b[] a() {
            return (b[]) f41170c.clone();
        }
    }

    public enum c {
        SKU("sku"),
        LOOK("look"),
        SKU_SET("sku_set");

        final String d;

        c(String str) {
            this.d = str;
        }
    }

    public static SQLiteDatabase a() {
        return DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
    }

    public static List b(String str, String[] strArr) {
        c cVar;
        List listI;
        try {
            Cursor cursorQuery = DatabaseOpenHelper.Union.f40272j.f40274i.getReadableDatabase().query("CacheStrategyForCacheFirstThenUpdate", null, str, strArr, null, null, null, null);
            try {
                if (cursorQuery.moveToFirst()) {
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("Guid"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("Type"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("JsonString"));
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("State"));
                        c[] cVarArrValues = c.values();
                        int length = cVarArrValues.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                throw new AssertionError("Unknown type=" + string2);
                            }
                            cVar = cVarArrValues[i3];
                            if (cVar.d.equalsIgnoreCase(string2)) {
                                break;
                            }
                            i3++;
                        }
                        builder.f(new C0136a(string, cVar, string3, b.a()[i2]));
                    } while (cursorQuery.moveToNext());
                    listI = builder.i();
                } else {
                    listI = Collections.EMPTY_LIST;
                }
                cursorQuery.close();
                return listI;
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
            Log.e("CacheStrategyForCacheFirstThenUpdateDao", "getRows", th3);
            throw th3;
        }
    }

    public static void c(C0136a c0136a) {
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("Guid", c0136a.f41165a);
            contentValues.put("Type", c0136a.f41166b.d);
            contentValues.put("JsonString", c0136a.f41167c);
            contentValues.put("State", Integer.valueOf(c0136a.d.ordinal()));
            sQLiteDatabaseA.insertWithOnConflict("CacheStrategyForCacheFirstThenUpdate", null, contentValues, 5);
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("CacheStrategyForCacheFirstThenUpdateDao", "addOrUpdate row=" + c0136a, th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabaseA.endTransaction();
                throw th2;
            }
        }
    }

    public static void d(String str) {
        Objects.requireNonNull(str, "guid can't be null");
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            sQLiteDatabaseA.delete("CacheStrategyForCacheFirstThenUpdate", "Guid=?", new String[]{str});
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("CacheStrategyForCacheFirstThenUpdateDao", "deleteByGuid guid=".concat(str), th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabaseA.endTransaction();
                throw th2;
            }
        }
    }

    public static void e(String str, b bVar) {
        Objects.requireNonNull(str, "guid can't be null");
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("State", Integer.valueOf(bVar.ordinal()));
            sQLiteDatabaseA.update("CacheStrategyForCacheFirstThenUpdate", contentValues, "Guid=?", new String[]{str});
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("CacheStrategyForCacheFirstThenUpdateDao", "updateState guid=" + str + ", state=" + bVar, th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabaseA.endTransaction();
                throw th2;
            }
        }
    }
}
