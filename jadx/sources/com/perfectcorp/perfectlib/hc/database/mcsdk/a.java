package com.perfectcorp.perfectlib.hc.database.mcsdk;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.md;
import defpackage.tr;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.hc.database.mcsdk.a$a, reason: collision with other inner class name */
    public static final class C0126a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f40257a = new a(PfCommons.b(), "MCSDK_ID_USAGE_DATABASE", null, 1);
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f40258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f40259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f40260c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f40261e;

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(b.class.getSimpleName());
            toStringHelper.b(com.batch.android.s.b.a.f24015b, this.f40258a);
            toStringHelper.b("timestamp", Long.valueOf(this.f40259b));
            toStringHelper.b("type", this.f40260c.f40264c);
            toStringHelper.b("folderPath", this.d);
            toStringHelper.b("folderSizeInByte", Long.valueOf(this.f40261e));
            return toStringHelper.toString();
        }
    }

    public enum c {
        SKU("sku"),
        LOOK("look");


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f40264c;

        c(String str) {
            this.f40264c = str;
        }

        public static c a(String str) {
            for (c cVar : (c[]) values().clone()) {
                if (cVar.f40264c.equalsIgnoreCase(str)) {
                    return cVar;
                }
            }
            md.h(tr.g("Unknown type=", str));
            return null;
        }
    }

    public static a h() {
        return C0126a.f40257a;
    }

    public final List j(c cVar) {
        Threads.b();
        Objects.requireNonNull(cVar, "type can't be null");
        try {
            Cursor cursorQuery = getReadableDatabase().query("IdUsage", null, "ValueType=?", new String[]{cVar.f40264c}, null, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    List list = Collections.EMPTY_LIST;
                    cursorQuery.close();
                    return list;
                }
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("KeyId"));
                    long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("ValueTimestamp"));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueType"));
                    String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueFolderPath"));
                    long j3 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("ValueFolderSizeInByte"));
                    c cVarA = c.a(string2);
                    b bVar = new b();
                    Objects.requireNonNull(string, "id can't be null");
                    bVar.f40258a = string;
                    bVar.f40259b = j2;
                    bVar.f40260c = cVarA;
                    Objects.requireNonNull(string3, "folderPath can't be null");
                    bVar.d = string3;
                    bVar.f40261e = j3;
                    builder.f(bVar);
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
            Log.e("IdUsageDatabase", "get type=" + cVar.name(), th3);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IdUsage(KeyId TEXT PRIMARY KEY NOT NULL DEFAULT '',ValueTimestamp INTEGER DEFAULT 0,ValueType TEXT NOT NULL DEFAULT '',ValueFolderPath TEXT NOT NULL DEFAULT '',ValueFolderSizeInByte INTEGER DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE INDEX KeyIdIndex ON IdUsage(KeyId)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}
