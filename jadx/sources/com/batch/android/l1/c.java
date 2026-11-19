package com.batch.android.l1;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.v0.l;
import defpackage.d21;
import defpackage.fc;
import defpackage.r81;
import java.net.URI;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23666f = "SQLUserDatasource";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SQLiteDatabase f23668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f23669c;
    private boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f23670e = 0;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23671a;

        static {
            int[] iArr = new int[com.batch.android.l1.a.values().length];
            f23671a = iArr;
            try {
                iArr[com.batch.android.l1.a.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23671a[com.batch.android.l1.a.DATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23671a[com.batch.android.l1.a.BOOL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23671a[com.batch.android.l1.a.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23671a[com.batch.android.l1.a.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23671a[com.batch.android.l1.a.URL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public c(Context context) throws SQLiteException {
        if (context == null) {
            r81.d("context==null");
            throw null;
        }
        this.f23667a = context.getApplicationContext();
        g gVar = new g(this.f23667a);
        this.f23669c = gVar;
        this.f23668b = gVar.getWritableDatabase();
    }

    private void a(String str, ContentValues contentValues, com.batch.android.l1.a aVar, boolean z) throws f {
        if (!this.d || TextUtils.isEmpty(str) || this.f23670e <= 0) {
            f();
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "n." : "c.");
            sb.append(str);
            contentValues.put("name", sb.toString());
            contentValues.put("type", Integer.valueOf(aVar.c()));
            contentValues.put("changeset", Long.valueOf(this.f23670e));
            this.f23668b.insertOrThrow(l.f24145h, null, contentValues);
        } catch (SQLiteConstraintException unused) {
        } catch (SQLException e2) {
            a(fc.h("Error while inserting custom attribute '", str, "'"), e2);
        }
    }

    private void b(String str, boolean z) throws f {
        if (!this.d || TextUtils.isEmpty(str)) {
            f();
            return;
        }
        try {
            SQLiteDatabase sQLiteDatabase = this.f23668b;
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "n." : "c.");
            sb.append(str);
            sQLiteDatabase.delete(l.f24145h, "name=?", new String[]{sb.toString()});
        } catch (SQLException e2) {
            a(fc.h("Error while deleting custom attribute '", str, "'"), e2);
        }
    }

    private void d(String str, String str2) throws f {
        if (!this.d || this.f23670e <= 0 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            f();
            return;
        }
        try {
            this.f23668b.delete("tags", "collection=? AND value=?", new String[]{str, str2});
        } catch (SQLException e2) {
            a(d21.l("Error while removing tag '", str2, "' in collection '", str, "'"), e2);
        }
    }

    private void e(String str, String str2) throws f {
        if (!this.d || this.f23670e <= 0 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            f();
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("collection", str);
            contentValues.put("value", str2);
            contentValues.put("changeset", Long.valueOf(this.f23670e));
            this.f23668b.insertOrThrow("tags", null, contentValues);
        } catch (SQLiteConstraintException unused) {
        } catch (SQLException e2) {
            a(d21.l("Error while adding tag '", str2, "' in collection '", str, "'"), e2);
        }
    }

    private void f() throws f {
        throw new f("Invalid database state");
    }

    @Override // com.batch.android.l1.h
    public Map<String, Set<String>> c() {
        HashMap map = new HashMap();
        try {
            Cursor cursorQuery = this.f23668b.query("tags", new String[]{"collection", "value"}, null, null, null, null, "collection", null);
            if (cursorQuery != null) {
                String str = null;
                HashSet hashSet = null;
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("collection"));
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("value"));
                            if (string == null || string2 == null) {
                                t.c(f23666f, "Consistency error while reading tags: collection or value null, skipping");
                            }
                            if (!TextUtils.equals(str, string)) {
                                if (str != null && hashSet != null) {
                                    map.put(str, hashSet);
                                }
                                try {
                                    hashSet = new HashSet();
                                    str = string;
                                } catch (Exception e2) {
                                    e = e2;
                                    str = string;
                                    t.c(f23666f, "Error while reading tag", e);
                                }
                            }
                            if (hashSet != null) {
                                hashSet.add(string2);
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                    } catch (Throwable th) {
                        try {
                            cursorQuery.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
                if (str != null && hashSet != null) {
                    map.put(str, hashSet);
                }
                cursorQuery.close();
            } else if (cursorQuery != null) {
                cursorQuery.close();
                return map;
            }
        } catch (Exception e4) {
            t.c(f23666f, "Unexpected error while reading attributes", e4);
        }
        return map;
    }

    @Override // com.batch.android.l1.h
    public void clear() {
        if (this.d) {
            return;
        }
        this.f23668b.delete(l.f24145h, null, null);
        this.f23668b.delete("tags", null, null);
    }

    @Override // com.batch.android.l1.h
    public void close() {
        if (this.d) {
            try {
                e();
            } catch (f unused) {
            }
        }
        this.f23668b.close();
    }

    @Override // com.batch.android.l1.h
    public HashMap<String, d> getAttributes() {
        int columnIndexOrThrow;
        Object string;
        HashMap<String, d> map = new HashMap<>();
        try {
            Cursor cursorQuery = this.f23668b.query(l.f24145h, new String[]{"name", "type", "value"}, null, null, null, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            com.batch.android.l1.a aVarA = com.batch.android.l1.a.a(cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("type")));
                            if (aVarA != null && (columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("value")) != -1) {
                                switch (a.f23671a[aVarA.ordinal()]) {
                                    case 1:
                                        string = cursorQuery.getString(columnIndexOrThrow);
                                        break;
                                    case 2:
                                        string = new Date(cursorQuery.getLong(columnIndexOrThrow));
                                        break;
                                    case 3:
                                        string = Boolean.valueOf(cursorQuery.getInt(columnIndexOrThrow) != 0);
                                        break;
                                    case 4:
                                        string = Long.valueOf(cursorQuery.getLong(columnIndexOrThrow));
                                        break;
                                    case 5:
                                        string = Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow));
                                        break;
                                    case 6:
                                        string = new URI(cursorQuery.getString(columnIndexOrThrow));
                                        break;
                                    default:
                                        continue;
                                }
                                if (string != null) {
                                    map.put(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("name")), new d(string, aVarA));
                                }
                            }
                        } catch (Exception e2) {
                            t.c(f23666f, "Error while reading attribute", e2);
                        }
                    } catch (Throwable th) {
                        try {
                            cursorQuery.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e3) {
            t.c(f23666f, "Unexpected error while reading attributes", e3);
        }
        return map;
    }

    @Override // com.batch.android.l1.h
    public void d() throws f {
        if (this.d) {
            try {
                this.f23668b.execSQL("COMMIT TRANSACTION;");
                this.d = false;
                this.f23670e = 0L;
                return;
            } catch (SQLiteException e2) {
                a("Error while committing the SQLite transaction", e2);
                return;
            }
        }
        f();
    }

    @Override // com.batch.android.l1.h
    public void b() {
        if (!this.d || this.f23670e <= 0) {
            return;
        }
        this.f23668b.delete("tags", null, null);
    }

    @Override // com.batch.android.l1.h
    public void b(String str) {
        if (!this.d || this.f23670e <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        this.f23668b.delete("tags", "collection=?", new String[]{str});
    }

    @Override // com.batch.android.l1.h
    public void b(String str, String str2) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str2);
        a(str, contentValues, com.batch.android.l1.a.STRING, false);
    }

    @Override // com.batch.android.l1.h
    public void e() throws f {
        if (this.d) {
            try {
                this.f23668b.execSQL("ROLLBACK TRANSACTION;");
                this.d = false;
                this.f23670e = 0L;
                return;
            } catch (SQLiteException e2) {
                a("Error while rolling back the SQLite transaction", e2);
                return;
            }
        }
        f();
    }

    @Override // com.batch.android.l1.h
    public void a(String str, long j2) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", Long.valueOf(j2));
        a(str, contentValues, com.batch.android.l1.a.LONG, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str, double d) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", Double.valueOf(d));
        a(str, contentValues, com.batch.android.l1.a.DOUBLE, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str, boolean z) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", Boolean.valueOf(z));
        a(str, contentValues, com.batch.android.l1.a.BOOL, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str, Date date) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", Long.valueOf(date.getTime()));
        a(str, contentValues, com.batch.android.l1.a.DATE, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str, URI uri) throws f {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", uri.toString());
        a(str, contentValues, com.batch.android.l1.a.URL, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str) throws f {
        b(str, false);
    }

    @Override // com.batch.android.l1.h
    public void a(String str, String str2) throws f {
        e(str, str2);
    }

    @Override // com.batch.android.l1.h
    public void a() {
        if (!this.d || this.f23670e <= 0) {
            return;
        }
        this.f23668b.delete(l.f24145h, null, null);
    }

    @Override // com.batch.android.l1.h
    public void a(long j2) throws f {
        if (j2 > 0 && !this.d) {
            try {
                this.f23668b.execSQL("BEGIN TRANSACTION;");
                this.d = true;
                this.f23670e = j2;
                return;
            } catch (SQLiteException e2) {
                a("Error while starting the SQLite transaction", e2);
                return;
            }
        }
        f();
    }

    private void a(String str, Throwable th) throws f {
        t.c(l.f24144f, str, th);
        throw new f(str);
    }

    @Override // com.batch.android.l1.h
    public void c(String str, String str2) throws f {
        d(str, str2);
    }
}
