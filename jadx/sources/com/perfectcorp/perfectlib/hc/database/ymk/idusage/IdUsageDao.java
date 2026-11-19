package com.perfectcorp.perfectlib.hc.database.ymk.idusage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.batch.android.s.b;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.md;
import defpackage.tr;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class IdUsageDao {

    public enum Type {
        SKU("sku"),
        MAKEUP_LOOK("look"),
        NAIL_LOOK("nail_look"),
        JEWELRY_LOOK("jewelry_look"),
        TUTORIAL("tutorial");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f40319a;

        Type(String str) {
            this.f40319a = str;
        }
    }

    public static Row a(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndexOrThrow("KeyId"));
        long j2 = cursor.getLong(cursor.getColumnIndexOrThrow("ValueTimestamp"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("ValueType"));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("ValueFolderPath"));
        long j3 = cursor.getLong(cursor.getColumnIndexOrThrow("ValueFolderSizeInByte"));
        for (Type type : Type.values()) {
            if (type.f40319a.equalsIgnoreCase(string2)) {
                return new Row(string, j2, type, string3, j3);
            }
        }
        md.h(tr.g("Unknown type=", string2));
        return null;
    }

    public static void b(SQLiteDatabase sQLiteDatabase, Row row) {
        Threads.b();
        sQLiteDatabase.beginTransaction();
        try {
            String strA = YMKDatabase.a(sQLiteDatabase, "IdUsage");
            ContentValues contentValues = new ContentValues();
            contentValues.put("KeyId", row.f40314a);
            contentValues.put("ValueTimestamp", Long.valueOf(row.f40315b));
            contentValues.put("ValueType", row.f40316c.f40319a);
            contentValues.put("ValueFolderPath", row.d);
            contentValues.put("ValueFolderSizeInByte", Long.valueOf(row.f40317e));
            sQLiteDatabase.insertWithOnConflict(strA, null, contentValues, 5);
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("IdUsageDao", "addOrUpdate row=" + row, th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
    }

    public static List c(SQLiteDatabase sQLiteDatabase, Type type) {
        Threads.b();
        Objects.requireNonNull(type, "type can't be null");
        try {
            Cursor cursorQuery = sQLiteDatabase.query("IdUsage", null, "ValueType=?", new String[]{type.f40319a}, null, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    List list = Collections.EMPTY_LIST;
                    cursorQuery.close();
                    return list;
                }
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    builder.f(a(cursorQuery));
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
            Log.e("IdUsageDao", "get type=" + type.name(), th3);
            throw th3;
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase, String str, long j2) {
        Threads.b();
        Objects.requireNonNull(str, "id can't be null");
        sQLiteDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("ValueTimestamp", Long.valueOf(j2));
            sQLiteDatabase.update(YMKDatabase.a(sQLiteDatabase, "IdUsage"), contentValues, "KeyId=?", new String[]{str});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            try {
                Log.e("IdUsageDao", "updateTimestamp id=" + str + ", timestamp=" + j2, th);
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
    }

    public static final class Row {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40314a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f40315b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f40316c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f40317e;

        public Row(String str, Type type, String str2, long j2) {
            Objects.requireNonNull(str, "id can't be null");
            this.f40314a = str;
            Objects.requireNonNull(type, "type can't be null");
            this.f40316c = type;
            Objects.requireNonNull(str2, "folderPath can't be null");
            this.d = str2;
            this.f40317e = j2;
            this.f40315b = 0L;
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(Row.class.getSimpleName());
            toStringHelper.b(b.a.f24015b, this.f40314a);
            toStringHelper.b("timestamp", Long.valueOf(this.f40315b));
            toStringHelper.b("type", this.f40316c.f40319a);
            toStringHelper.b("folderPath", this.d);
            toStringHelper.b("folderSizeInByte", Long.valueOf(this.f40317e));
            return toStringHelper.toString();
        }

        public Row(String str, long j2, Type type, String str2, long j3) {
            Objects.requireNonNull(str, "id can't be null");
            this.f40314a = str;
            this.f40315b = j2;
            Objects.requireNonNull(type, "type can't be null");
            this.f40316c = type;
            Objects.requireNonNull(str2, "folderPath can't be null");
            this.d = str2;
            this.f40317e = j3;
        }
    }
}
