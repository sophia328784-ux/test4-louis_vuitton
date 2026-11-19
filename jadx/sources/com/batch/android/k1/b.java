package com.batch.android.k1;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.n.w;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static final String d = "TrackerDatasource";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SQLiteDatabase f23611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f23612c;

    public b(Context context) throws SQLiteException {
        if (context == null) {
            r81.d("context==null");
            throw null;
        }
        this.f23610a = context.getApplicationContext();
        a aVar = new a(this.f23610a);
        this.f23612c = aVar;
        this.f23611b = aVar.getWritableDatabase();
    }

    private com.batch.android.o.b a(Cursor cursor) {
        long j2;
        Date date;
        try {
            j2 = cursor.getLong(cursor.getColumnIndexOrThrow("serverts"));
        } catch (Exception unused) {
            j2 = 0;
        }
        String string = null;
        try {
            date = !cursor.isNull(cursor.getColumnIndexOrThrow("sdate")) ? new Date(cursor.getLong(cursor.getColumnIndexOrThrow("sdate"))) : null;
        } catch (Exception unused2) {
        }
        try {
            if (!cursor.isNull(cursor.getColumnIndexOrThrow("session_id"))) {
                string = cursor.getString(cursor.getColumnIndexOrThrow("session_id"));
            }
        } catch (Exception unused3) {
        }
        return new com.batch.android.o.b(cursor.getString(cursor.getColumnIndexOrThrow(com.batch.android.s.b.a.f24015b)), cursor.getString(cursor.getColumnIndexOrThrow("name")), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("date"))), TimeZone.getTimeZone(cursor.getString(cursor.getColumnIndexOrThrow("timezone"))), cursor.getString(cursor.getColumnIndexOrThrow("parameters")), com.batch.android.o.b.a.a(cursor.getInt(cursor.getColumnIndexOrThrow("state"))), Long.valueOf(j2), date, string);
    }

    private boolean b(com.batch.android.o.b bVar) {
        String strA;
        if (this.f23611b == null) {
            t.c(d, "Attempted to insert an event to a closed database");
            this.f23611b = this.f23612c.getWritableDatabase();
        }
        if (bVar == null) {
            r81.d("event==null");
            return false;
        }
        try {
            if ((bVar instanceof com.batch.android.o.a) && !TextUtils.isEmpty(bVar.c())) {
                t.c(d, "Deleting old instances of collapsible event");
                this.f23611b.delete(DbParams.TABLE_EVENTS, "name=?", new String[]{bVar.c()});
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(com.batch.android.s.b.a.f24015b, bVar.b());
            contentValues.put("name", bVar.c());
            contentValues.put("date", Long.valueOf(bVar.a().getTime()));
            contentValues.put("timezone", bVar.i().getID());
            if (bVar.d() != null) {
                contentValues.put("parameters", bVar.d());
            } else {
                contentValues.putNull("parameters");
            }
            contentValues.put("state", Integer.valueOf(bVar.h().b()));
            if (bVar.f() == 0 && (strA = w.a(this.f23610a).a(z.Y0)) != null) {
                contentValues.put("serverts", Long.valueOf(Long.parseLong(strA)));
            } else {
                contentValues.put("serverts", Long.valueOf(bVar.f()));
            }
            if (bVar.e() != null) {
                contentValues.put("sdate", Long.valueOf(bVar.e().getTime()));
            }
            if (bVar.g() != null) {
                contentValues.put("session_id", bVar.g());
            }
            this.f23611b.insertOrThrow(DbParams.TABLE_EVENTS, null, contentValues);
            t.c(d, "Successfully inserted event " + bVar.c() + "(" + bVar.b() + ") into DB");
            return true;
        } catch (Exception e2) {
            t.c(d, "Error while writing event to SQLite.", e2);
            return false;
        }
    }

    public List<com.batch.android.o.b> c() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.f23611b.query(DbParams.TABLE_EVENTS, null, null, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(a(cursorQuery));
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
        }
        cursorQuery.close();
        return arrayList;
    }

    public boolean d() {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", Integer.valueOf(com.batch.android.o.b.a.OLD.b()));
            this.f23611b.update(DbParams.TABLE_EVENTS, contentValues, "state IN (" + com.batch.android.o.b.a.SENDING.b() + "," + com.batch.android.o.b.a.NEW.b() + ")", null);
            return true;
        } catch (Exception e2) {
            t.c(d, "Error while reseting sending in DB", e2);
            return false;
        }
    }

    public boolean c(String[] strArr) {
        return a(strArr, com.batch.android.o.b.a.OLD) == strArr.length;
    }

    public boolean a(com.batch.android.o.b bVar) {
        if (bVar == null) {
            return false;
        }
        t.c(d, "Add event " + bVar.c() + "(" + bVar.b() + ")");
        return b(bVar);
    }

    public void a() {
        this.f23611b.delete(DbParams.TABLE_EVENTS, null, null);
    }

    private int a(String[] strArr, com.batch.android.o.b.a aVar) {
        try {
            StringBuilder sb = new StringBuilder(com.batch.android.s.b.a.f24015b);
            sb.append(" IN (");
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (i2 > 0) {
                    sb.append(',');
                }
                sb.append('?');
            }
            sb.append(")");
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", Integer.valueOf(aVar.b()));
            return this.f23611b.update(DbParams.TABLE_EVENTS, contentValues, sb.toString(), strArr);
        } catch (Exception e2) {
            t.c(d, "Error while updating events to new state", e2);
            return -1;
        }
    }

    public int a(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            try {
                StringBuilder sb = new StringBuilder(com.batch.android.s.b.a.f24015b);
                sb.append(" IN (");
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (i2 > 0) {
                        sb.append(',');
                    }
                    sb.append('?');
                }
                sb.append(")");
                return this.f23611b.delete(DbParams.TABLE_EVENTS, sb.toString(), strArr);
            } catch (Exception e2) {
                t.c(d, "Error while deleting events", e2);
            }
        }
        return -1;
    }

    public int a(int i2) {
        return this.f23611b.delete(DbParams.TABLE_EVENTS, n00.m(i2, "_db_id NOT IN (SELECT _db_id FROM events ORDER BY _db_id DESC LIMIT ", ")"), null);
    }

    public boolean b(String[] strArr) {
        return a(strArr, com.batch.android.o.b.a.NEW) == strArr.length;
    }

    public void b() {
        SQLiteDatabase sQLiteDatabase = this.f23611b;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.f23611b = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00af  */
    /* JADX WARN: Code duplicated, block: B:28:? A[SYNTHETIC] */
    public List<com.batch.android.o.b> b(int i2) {
        ArrayList arrayList = new ArrayList(i2);
        Cursor cursorQuery = null;
        try {
            try {
                ArrayList arrayList2 = new ArrayList(i2);
                String string = Integer.toString(i2);
                cursorQuery = this.f23611b.query(DbParams.TABLE_EVENTS, null, "state IN (" + com.batch.android.o.b.a.NEW.b() + "," + com.batch.android.o.b.a.OLD.b() + ")", null, null, null, "_db_id asc", string);
                while (cursorQuery.moveToNext()) {
                    com.batch.android.o.b bVarA = a(cursorQuery);
                    arrayList.add(bVarA);
                    arrayList2.add(bVarA.b());
                }
                t.c(d, "Retreived " + arrayList.size() + " events from DB");
                if (a((String[]) arrayList2.toArray(new String[arrayList2.size()]), com.batch.android.o.b.a.SENDING) == arrayList.size()) {
                    cursorQuery.close();
                    return arrayList;
                }
                throw new IllegalStateException("Updated rows are not equals to selected ones");
            } catch (Exception e2) {
                t.c(d, "Error while extracting event to send", e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
                throw th;
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
            throw th;
        }
        throw th;
    }
}
