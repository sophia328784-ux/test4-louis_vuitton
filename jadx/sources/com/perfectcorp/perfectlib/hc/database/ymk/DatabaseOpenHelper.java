package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.DefaultDatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DatabaseOpenHelper extends SQLiteOpenHelper {
    public static final int g = 65571;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f40268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f40269c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f40270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile String f40271f;

    public static class Union extends DatabaseOpenHelper {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Union f40272j;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public a f40273h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public f f40274i;

        static {
            Globals globals = Globals.f41932a;
            Union union = new Union(globals, null, null);
            union.f40273h = new a(globals, "youcammakeup.sqlite", new com.perfectcorp.perfectlib.hc.database.ymk.b());
            union.f40274i = new f(globals, "youcammakeup-live.sqlite", new com.perfectcorp.perfectlib.hc.database.ymk.c());
            union.f40268b = true;
            f40272j = union;
        }

        public static void r(SQLiteDatabase sQLiteDatabase, String str, String str2) {
            sQLiteDatabase.execSQL("ATTACH DATABASE '" + Globals.f41932a.getDatabasePath(str) + "' AS '" + str2 + "'");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final synchronized void close() {
            this.f40273h.close();
            this.f40274i.close();
            super.close();
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final String h() {
            return "Union";
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void j(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void k() {
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void m(SQLiteDatabase sQLiteDatabase) {
            this.f40273h.o();
            this.f40274i.o();
            r(sQLiteDatabase, "youcammakeup.sqlite", "BuiltIn");
            r(sQLiteDatabase, "youcammakeup-live.sqlite", "Live");
            for (Contract.DatabaseTable databaseTable : Contract.DatabaseTable.values()) {
                String str = databaseTable.tableName;
                String strH = fc.h("SELECT * FROM 'Live'.'", str, "'");
                String strH2 = fc.h("SELECT * FROM 'BuiltIn'.'", str, "'");
                StringBuilder sbS = fc.s("CREATE TEMP VIEW '", str, "' AS ", strH, " UNION ALL ");
                sbS.append(strH2);
                sQLiteDatabase.execSQL(sbS.toString());
            }
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void p() {
            this.f40273h.p();
            this.f40274i.p();
            super.p();
        }
    }

    public static final class a extends DatabaseOpenHelper {
        public static void q() {
            FileOutputStream fileOutputStream;
            File databasePath = Globals.f41932a.getDatabasePath("youcammakeup.sqlite");
            DatabaseOpenHelper.n(databasePath);
            databasePath.getParentFile().mkdirs();
            Log.g(4, "database.ymk.DatabaseOpenHelper", "importBuiltinDatabaseFile Target: " + databasePath.getPath());
            InputStream inputStream = null;
            try {
                InputStream inputStreamC = Apk.c(Globals.f41932a, "makeup/youcammakeup.sqlite");
                try {
                    fileOutputStream = new FileOutputStream(databasePath);
                    try {
                        FileUtils.b(inputStreamC, fileOutputStream);
                        QuickLaunchPreferenceHelper.c("5.12.0");
                        IO.a(inputStreamC, fileOutputStream);
                        Log.g(4, "database.ymk.DatabaseOpenHelper", "copy default database successfully!");
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamC;
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            IO.a(inputStream, fileOutputStream);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final String h() {
            return "BuiltIn";
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void j(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void k() {
            this.f40268b = true;
            q();
            QuickLaunchPreferenceHelper.c("");
            q();
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void m(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void o() {
            if (!Globals.f41932a.getDatabasePath(getDatabaseName()).exists() || !Objects.equals(QuickLaunchPreferenceHelper.f42021a.getString("BUILT_IN_CONTENT_VERSION_STRING", ""), "5.12.0")) {
                q();
            }
            super.o();
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper, android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
            if (!sQLiteDatabase.isDatabaseIntegrityOk()) {
                throw new c();
            }
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper, android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            throw new IllegalStateException(o60.h(i2, i3, "Built-in DB is out-of-date, oldVersion: ", ", newVersion: "));
        }
    }

    public static abstract class b implements DatabaseErrorHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DefaultDatabaseErrorHandler f40275a = new DefaultDatabaseErrorHandler();

        public abstract void a();

        @Override // android.database.DatabaseErrorHandler
        public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
            this.f40275a.onCorruption(sQLiteDatabase);
            a();
        }
    }

    public static class c extends SQLiteException {
        public c() {
            super("Database isn't integrity!");
        }
    }

    public static class d extends SQLiteException {
    }

    public static class e extends SQLiteException {
    }

    public static final class f extends DatabaseOpenHelper {
        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final String h() {
            return "Live";
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void j(SQLiteDatabase sQLiteDatabase) {
            for (Contract.DatabaseTable databaseTable : Contract.DatabaseTable.values()) {
                sQLiteDatabase.execSQL(databaseTable.createTableCommand);
                Iterator<String> it = databaseTable.createIndexCommand.iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL(it.next());
                }
            }
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void k() {
            this.f40268b = true;
            q();
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper
        public final void m(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper, android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
            if (!sQLiteDatabase.isDatabaseIntegrityOk()) {
                throw new c();
            }
        }
    }

    public DatabaseOpenHelper(Globals globals, String str, DatabaseErrorHandler databaseErrorHandler) {
        super(globals, str, null, g, databaseErrorHandler);
        this.f40269c = true;
        Log.g(4, "database.ymk.DatabaseOpenHelper", "TEST_UPGRADE_FAILED = false");
    }

    public static boolean n(File file) {
        if (file == null) {
            md.n("file must not be null");
            return false;
        }
        boolean zDelete = file.delete() | new File(file.getPath() + "-journal").delete() | new File(file.getPath() + "-shm").delete() | new File(file.getPath() + "-wal").delete();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            String str = file.getName() + "-mj";
            com.perfectcorp.perfectlib.hc.database.ymk.a aVar = new com.perfectcorp.perfectlib.hc.database.ymk.a();
            aVar.f40276a = str;
            File[] fileArrListFiles = parentFile.listFiles(aVar);
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    zDelete |= file2.delete();
                }
            }
        }
        return zDelete;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase readableDatabase;
        synchronized (this) {
            try {
                try {
                    readableDatabase = super.getReadableDatabase();
                    Objects.requireNonNull(readableDatabase);
                } catch (Throwable th) {
                    close();
                    if (this.f40270e) {
                        Log.j("database.ymk.DatabaseOpenHelper", "Database " + h() + " still failed to open or create even have a retry.", th);
                        throw th;
                    }
                    this.f40270e = true;
                    Log.e("database.ymk.DatabaseOpenHelper", "getReadableDatabase 1st time error", th);
                    k();
                    try {
                        SQLiteDatabase readableDatabase2 = super.getReadableDatabase();
                        Objects.requireNonNull(readableDatabase2);
                        return readableDatabase2;
                    } catch (Throwable th2) {
                        close();
                        Log.e("database.ymk.DatabaseOpenHelper", "getReadableDatabase 2nd time error", th2);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return readableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase writableDatabase;
        synchronized (this) {
            try {
                try {
                    writableDatabase = super.getWritableDatabase();
                    Objects.requireNonNull(writableDatabase);
                } catch (Throwable th) {
                    close();
                    if (this.f40270e) {
                        Log.j("database.ymk.DatabaseOpenHelper", "Database " + h() + " still failed to open or create even have a retry.", th);
                        throw th;
                    }
                    this.f40270e = true;
                    Log.e("database.ymk.DatabaseOpenHelper", "getWritableDatabase 1st time error", th);
                    k();
                    try {
                        SQLiteDatabase writableDatabase2 = super.getWritableDatabase();
                        Objects.requireNonNull(writableDatabase2);
                        return writableDatabase2;
                    } catch (Throwable th2) {
                        close();
                        Log.e("database.ymk.DatabaseOpenHelper", "getWritableDatabase 2nd time error", th2);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return writableDatabase;
    }

    public abstract String h();

    public abstract void j(SQLiteDatabase sQLiteDatabase);

    public abstract void k();

    public abstract void m(SQLiteDatabase sQLiteDatabase);

    public void o() {
        String string;
        getWritableDatabase();
        try {
            String str = this.f40271f;
            String[] strArrSplit = !TextUtils.isEmpty(str) ? str.split("===") : new String[0];
            JSONObject jSONObject = strArrSplit.length > 0 ? new JSONObject(strArrSplit[strArrSplit.length - 1]) : new JSONObject();
            int i2 = TextUtils.isEmpty(jSONObject.optString(com.batch.android.s.b.a.f24018f)) ? 0 : Integer.parseInt(jSONObject.optString(com.batch.android.s.b.a.f24018f));
            StringBuilder sb = new StringBuilder();
            sb.append(i2 + 1);
            jSONObject.put(com.batch.android.s.b.a.f24018f, sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f40268b);
            jSONObject.put("isNewCreate", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.f40269c);
            jSONObject.put("isCreateSuccess", sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.d);
            jSONObject.put("isOpenSuccess", sb4.toString());
            if (TextUtils.isEmpty(str)) {
                string = jSONObject.toString();
            } else {
                string = str + "===" + jSONObject;
            }
            this.f40271f = string;
        } catch (Throwable th) {
            Log.e("database.ymk.DatabaseOpenHelper", "addDBStatus()", th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f40268b = true;
        this.f40269c = false;
        getDatabaseName();
        sQLiteDatabase.beginTransaction();
        try {
            Log.g(4, "database.ymk.DatabaseOpenHelper", "database " + h() + " creating schema");
            j(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            Log.g(4, "database.ymk.DatabaseOpenHelper", "end transaction");
            sQLiteDatabase.endTransaction();
            this.f40269c = true;
        } catch (Throwable th) {
            Log.g(4, "database.ymk.DatabaseOpenHelper", "end transaction");
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        Log.g(5, "database.ymk.DatabaseOpenHelper", fc.f(i2, i3, "Downgrading database from version ", " to ", ", which will destroy all old data"));
        q();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        getDatabaseName();
        Log.g(4, "database.ymk.DatabaseOpenHelper", "Open database: ".concat(h()));
        super.onOpen(sQLiteDatabase);
        try {
            m(sQLiteDatabase);
            this.d = true;
        } catch (Throwable th) {
            Log.e("database.ymk.DatabaseOpenHelper", "", th);
            throw new e("Database data construct failed!", th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        Log.g(5, "database.ymk.DatabaseOpenHelper", fc.f(i2, i3, "Upgrading database from version ", " to ", ", which will destroy all old data"));
        sQLiteDatabase.beginTransaction();
        Log.g(4, "database.ymk.DatabaseOpenHelper", "updating schema begin transaction");
        try {
            ArrayList<d$b> arrayList = new ArrayList();
            arrayList.add(new com.perfectcorp.perfectlib.hc.database.ymk.e(13));
            arrayList.add(new p(14));
            arrayList.add(new u(15));
            arrayList.add(new v(16));
            arrayList.add(new w(17));
            arrayList.add(new x(18));
            arrayList.add(new y(19));
            arrayList.add(new z(20));
            arrayList.add(new aa(21));
            arrayList.add(new com.perfectcorp.perfectlib.hc.database.ymk.f(22));
            arrayList.add(new g(23));
            arrayList.add(new h(24));
            arrayList.add(new i(25));
            arrayList.add(new j(26));
            arrayList.add(new k(27));
            arrayList.add(new l(28));
            arrayList.add(new m(29));
            arrayList.add(new n(30));
            arrayList.add(new o(31));
            arrayList.add(new q(32));
            arrayList.add(new r(33));
            arrayList.add(new s(34));
            arrayList.add(new t(35));
            for (d$b d_b : arrayList) {
                int iA = d_b.a();
                if (iA > i2 && iA <= i3) {
                    d_b.a(sQLiteDatabase);
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            Log.g(4, "database.ymk.DatabaseOpenHelper", "updating schema end transaction");
            sQLiteDatabase.endTransaction();
            Log.g(4, "database.ymk.DatabaseOpenHelper", "Upgrading done.");
        } catch (Throwable th) {
            try {
                throw new d("Database table upgrade failed!", th);
            } catch (Throwable th2) {
                Log.g(4, "database.ymk.DatabaseOpenHelper", "updating schema end transaction");
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
    }

    public void p() {
        int i2;
        defpackage.a.A(n00.u(h(), " Database status: "), this.f40271f, 3, "database.ymk.DatabaseOpenHelper");
        try {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            String string = "";
            ArrayList<String> arrayList = new ArrayList();
            Cursor cursor = null;
            try {
                Cursor cursorRawQuery = readableDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table'", null);
                try {
                    if (DBUtility.f(cursorRawQuery)) {
                        do {
                            arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("name")));
                        } while (cursorRawQuery.moveToNext());
                    }
                    IO.b(cursorRawQuery);
                    for (String str : arrayList) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append(" count(*): ");
                        try {
                            Cursor cursorRawQuery2 = readableDatabase.rawQuery("SELECT count(*) FROM " + str, null);
                            try {
                                if (DBUtility.f(cursorRawQuery2)) {
                                    int i3 = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("count(*)"));
                                    IO.b(cursorRawQuery2);
                                    i2 = i3;
                                } else {
                                    IO.b(cursorRawQuery2);
                                    i2 = 0;
                                }
                                sb.append(i2);
                                String string2 = sb.toString();
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(string);
                                if (!TextUtils.isEmpty(string)) {
                                    string2 = ", " + string2;
                                }
                                sb2.append(string2);
                                string = sb2.toString();
                            } catch (Throwable th) {
                                th = th;
                                cursor = cursorRawQuery2;
                                IO.b(cursor);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    Log.g(3, "database.ymk.DatabaseOpenHelper", h() + " Table status: " + string);
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorRawQuery;
                    IO.b(cursor);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            Log.e("database.ymk.DatabaseOpenHelper", "logTableStatus()", th5);
        }
    }

    public final void q() {
        File databasePath = Globals.f41932a.getDatabasePath(getDatabaseName());
        Log.g(4, "database.ymk.DatabaseOpenHelper", "Delete " + h() + " database file!");
        n(databasePath);
    }
}
