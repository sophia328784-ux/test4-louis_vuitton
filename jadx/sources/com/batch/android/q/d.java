package com.batch.android.q;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23920c = "InboxDatasource";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SQLiteDatabase f23921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f23922b;

    public d(Context context) throws SQLiteException {
        if (context == null) {
            r81.d("context==null");
            throw null;
        }
        this.f23922b = new c(context.getApplicationContext());
        d();
    }

    private g b(Cursor cursor) {
        try {
            JSONObject jSONObject = new JSONObject(cursor.getString(cursor.getColumnIndexOrThrow(ConfigurationName.PING_PAYLOAD)));
            r rVar = new r(jSONObject.getString(r.z));
            j jVar = new j(cursor.getString(cursor.getColumnIndexOrThrow("notification_id")), cursor.getString(cursor.getColumnIndexOrThrow("send_id")));
            jVar.d = cursor.getString(cursor.getColumnIndexOrThrow("custom_id"));
            jVar.f23952c = cursor.getString(cursor.getColumnIndexOrThrow("install_id"));
            jVar.f23953e = rVar.h();
            HashMap map = new HashMap();
            for (String str : jSONObject.keySet()) {
                try {
                    map.put(str, jSONObject.getString(str));
                } catch (JSONException unused) {
                    t.c(f23920c, "Could not coalesce payload value to string for key \"" + str + "\". Ignoring.");
                }
            }
            g gVar = new g(rVar.w(), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("date"))), map, jVar);
            String string = cursor.getString(cursor.getColumnIndexOrThrow("title"));
            String string2 = cursor.getString(cursor.getColumnIndexOrThrow("body"));
            if (string.isEmpty()) {
                string = null;
            }
            gVar.f23940a = string;
            if (string2.isEmpty()) {
                string2 = null;
            }
            gVar.f23941b = string2;
            gVar.d = cursor.getInt(cursor.getColumnIndexOrThrow("unread")) != 0;
            return gVar;
        } catch (JSONException e2) {
            t.c(f23920c, "Could not parse notification from DB", e2);
            return null;
        }
    }

    private void d() {
        this.f23921a = this.f23922b.getWritableDatabase();
    }

    public String a(JSONObject jSONObject, long j2) {
        String str;
        String str2 = "sendId";
        try {
            String string = jSONObject.getString("notificationId");
            ContentValues contentValues = new ContentValues();
            ContentValues contentValues2 = new ContentValues();
            for (String str3 : jSONObject.keySet()) {
                switch (str3.hashCode()) {
                    case -905963837:
                        str = str2;
                        if (str3.equals(str)) {
                            contentValues.put("send_id", jSONObject.getString(str));
                        }
                        break;
                    case -786701938:
                        str = str2;
                        if (str3.equals(ConfigurationName.PING_PAYLOAD)) {
                            contentValues.put(ConfigurationName.PING_PAYLOAD, jSONObject.getJSONObject(ConfigurationName.PING_PAYLOAD).toString());
                        }
                        break;
                    case 108417:
                        str = str2;
                        if (str3.equals("msg")) {
                            contentValues.put("body", jSONObject.getString("msg"));
                        }
                        break;
                    case 3496342:
                        str = str2;
                        if (str3.equals("read")) {
                            Boolean bool = Boolean.FALSE;
                            contentValues.put("unread", Integer.valueOf((jSONObject.reallyOptBoolean("read", bool).booleanValue() || jSONObject.reallyOptBoolean("opened", bool).booleanValue()) ? 0 : 1));
                        }
                        break;
                    case 29045782:
                        str = str2;
                        if (str3.equals("installId")) {
                            contentValues2.put("install_id", jSONObject.getString("installId"));
                        }
                        break;
                    case 110371416:
                        str = str2;
                        if (str3.equals("title")) {
                            contentValues.put("title", jSONObject.getString("title"));
                        }
                        break;
                    case 606174316:
                        str = str2;
                        if (str3.equals("customId")) {
                            contentValues2.put("custom_id", jSONObject.getString("customId"));
                        }
                        break;
                    case 1611522648:
                        if (str3.equals("notificationTime")) {
                            str = str2;
                            contentValues.put("date", Long.valueOf(new Date(jSONObject.getLong("notificationTime")).getTime()));
                            break;
                        }
                        break;
                    default:
                        continue;
                }
                str2 = str;
            }
            if (contentValues.size() <= 0) {
                return string;
            }
            this.f23921a.beginTransactionNonExclusive();
            try {
                this.f23921a.update("notifications", contentValues, "notification_id =?", new String[]{string});
                if (contentValues2.size() > 0) {
                    this.f23921a.update("fetcher_notifications", contentValues2, "notification_id =? and fetcher_id =?", new String[]{string, Long.toString(j2)});
                }
                this.f23921a.setTransactionSuccessful();
                return string;
            } finally {
                this.f23921a.endTransaction();
            }
        } catch (JSONException e2) {
            t.c(f23920c, "Could not parse sync payload", e2);
            return null;
        }
    }

    public void c(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("unread", (Integer) 0);
        this.f23921a.update("notifications", contentValues, "notification_id = ?", new String[]{str});
    }

    public void e() {
        if (this.f23921a == null) {
            t.c(f23920c, "Attempted to wipe data on a closed database");
            d();
        }
        this.f23921a.delete("notifications", null, null);
        this.f23921a.delete("fetcher_notifications", null, null);
        this.f23921a.delete("fetchers", null, null);
    }

    public SQLiteDatabase c() {
        return this.f23921a;
    }

    public void b(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("deleted", (Integer) 1);
        this.f23921a.update("notifications", contentValues, "notification_id = ?", new String[]{str});
    }

    public void b() {
        SQLiteDatabase sQLiteDatabase = this.f23921a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.f23921a = null;
        }
    }

    public long a(String str) {
        try {
            Cursor cursorQuery = this.f23921a.query("notifications", new String[]{"date"}, "notification_id =?", new String[]{str}, null, null, null, "1");
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return -1L;
                }
                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("date"));
                cursorQuery.close();
                return j2;
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
        } catch (Exception e2) {
            t.c(f23920c, "Could not get notification time", e2);
            return -1L;
        }
        t.c(f23920c, "Could not get notification time", e2);
        return -1L;
    }

    public long a(a aVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        if (this.f23921a == null) {
            t.c(f23920c, "Attempted to get/insert a fetcher to a closed database");
            d();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(aVar.b()));
        contentValues.put("identifier", str);
        try {
            try {
                return this.f23921a.insertWithOnConflict("fetchers", null, contentValues, 2);
            } catch (Exception e2) {
                t.c(f23920c, "Error when getting fetcher id", e2);
                return -1L;
            }
        } catch (SQLiteConstraintException unused) {
            Cursor cursorQuery = this.f23921a.query("fetchers", new String[]{"_db_id"}, "type=? and identifier=?", new String[]{Integer.toString(aVar.b()), str}, null, null, null, "1");
            try {
                if (cursorQuery.moveToFirst()) {
                    long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_db_id"));
                    cursorQuery.close();
                    return j2;
                }
                cursorQuery.close();
                t.c(f23920c, "Could not find or create fetcher");
                return -1L;
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
            t.c(f23920c, "Error when getting fetcher id", e2);
            return -1L;
        }
    }

    public List<b> a(String str, int i2, long j2) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            long jA = a(str);
            if (jA != -1) {
                try {
                    Cursor cursorRawQuery = this.f23921a.rawQuery(pq0.k(i2, "SELECT fetcher_id, fetcher_notifications.notification_id, unread, date FROM fetcher_notifications INNER JOIN notifications ON fetcher_notifications.notification_id = notifications.notification_id WHERE date < ? AND fetcher_id = ? ORDER BY date DESC LIMIT "), new String[]{Long.toString(jA), Long.toString(j2)});
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            arrayList.add(a(cursorRawQuery));
                        } catch (Throwable th) {
                            if (cursorRawQuery != null) {
                                try {
                                    cursorRawQuery.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    return arrayList;
                } catch (Exception e2) {
                    t.c(f23920c, "Could not get candidates notifications", e2);
                }
            }
        } else {
            try {
                Cursor cursorRawQuery2 = this.f23921a.rawQuery(pq0.k(i2, "SELECT fetcher_id, fetcher_notifications.notification_id, unread, date FROM fetcher_notifications INNER JOIN notifications ON fetcher_notifications.notification_id = notifications.notification_id WHERE fetcher_id = ? ORDER BY date DESC LIMIT "), new String[]{Long.toString(j2)});
                while (cursorRawQuery2.moveToNext()) {
                    try {
                        arrayList.add(a(cursorRawQuery2));
                    } catch (Throwable th3) {
                        if (cursorRawQuery2 != null) {
                            try {
                                cursorRawQuery2.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
                cursorRawQuery2.close();
                return arrayList;
            } catch (Exception e3) {
                t.c(f23920c, "Could not get candidates notifications", e3);
            }
        }
        return arrayList;
    }

    public boolean a(i iVar, long j2) {
        if (iVar == null || j2 <= 0) {
            return false;
        }
        for (g gVar : iVar.d) {
            t.c(f23920c, "Add notification in DB: " + gVar.f23945h.f23950a);
            a(gVar, j2);
        }
        return true;
    }

    public boolean a(g gVar, long j2) {
        if (this.f23921a == null) {
            t.c(f23920c, "Attempted to insert a notification to a closed database");
            d();
        }
        if (gVar != null) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("notification_id", gVar.f23945h.f23950a);
                contentValues.put("send_id", gVar.f23945h.f23951b);
                String str = gVar.f23940a;
                if (str == null) {
                    str = "";
                }
                contentValues.put("title", str);
                String str2 = gVar.f23941b;
                contentValues.put("body", str2 != null ? str2 : "");
                contentValues.put("unread", Integer.valueOf(gVar.d ? 1 : 0));
                contentValues.put("date", Long.valueOf(gVar.f23944f.getTime()));
                contentValues.put(ConfigurationName.PING_PAYLOAD, new JSONObject(gVar.g).toString());
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("notification_id", gVar.f23945h.f23950a);
                contentValues2.put("fetcher_id", Long.valueOf(j2));
                contentValues2.put("install_id", gVar.f23945h.f23952c);
                contentValues2.put("custom_id", gVar.f23945h.d);
                this.f23921a.beginTransactionNonExclusive();
                try {
                    this.f23921a.insertWithOnConflict("notifications", null, contentValues, 5);
                    this.f23921a.insertWithOnConflict("fetcher_notifications", null, contentValues2, 5);
                    this.f23921a.setTransactionSuccessful();
                    this.f23921a.endTransaction();
                    t.c(f23920c, "Successfully inserted notification " + gVar.f23945h.f23950a + " into DB");
                    return true;
                } catch (Throwable th) {
                    this.f23921a.endTransaction();
                    throw th;
                }
            } catch (Exception e2) {
                t.c(f23920c, "Error while writing event to SQLite.", e2);
                return false;
            }
        }
        r81.d("notification==null");
        return false;
    }

    public List<g> a(List<String> list, long j2) {
        ArrayList arrayList = new ArrayList();
        String strR = n00.r(a(list.size()), ") ORDER BY date DESC", new StringBuilder("SELECT *  FROM fetcher_notifications INNER JOIN notifications ON fetcher_notifications.notification_id = notifications.notification_id WHERE fetcher_id = ? AND notifications.deleted= 0 AND fetcher_notifications.notification_id IN ("));
        String[] strArr = new String[list.size() + 1];
        strArr[0] = Long.toString(j2);
        Iterator<String> it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            strArr[i2] = it.next();
            i2++;
        }
        try {
            Cursor cursorRawQuery = this.f23921a.rawQuery(strR, strArr);
            while (cursorRawQuery.moveToNext()) {
                try {
                    arrayList.add(b(cursorRawQuery));
                } catch (Throwable th) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Exception e2) {
            t.c(f23920c, "Could not get notifications", e2);
            return arrayList;
        }
    }

    public int a(long j2, long j3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("unread", (Integer) 0);
        return this.f23921a.update("notifications", contentValues, "date <= ? AND EXISTS ( SELECT notification_id FROM fetcher_notifications WHERE fetcher_id = ? AND notification_id = notifications.notification_id)", new String[]{Long.toString(j2), Long.toString(j3)});
    }

    public boolean a(List<String> list) {
        if (list.size() <= 0) {
            return false;
        }
        String[] strArr = (String[]) list.toArray(new String[0]);
        this.f23921a.beginTransactionNonExclusive();
        try {
            this.f23921a.delete("notifications", "notification_id IN (" + a(strArr.length) + ")", strArr);
            this.f23921a.delete("fetcher_notifications", "notification_id IN (" + a(strArr.length) + ")", strArr);
            this.f23921a.setTransactionSuccessful();
            return true;
        } catch (Exception e2) {
            t.c(f23920c, "Could not delete notifications", e2);
            return false;
        } finally {
            this.f23921a.endTransaction();
        }
    }

    public boolean a() {
        try {
            Cursor cursorQuery = this.f23921a.query("notifications", new String[]{"notification_id"}, "date <= ?", new String[]{Long.toString(System.currentTimeMillis() - 7776000000L)}, null, null, null, null);
            try {
                ArrayList arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("notification_id"));
                    if (!TextUtils.isEmpty(string)) {
                        arrayList.add(string);
                    }
                }
                boolean zA = a(arrayList);
                cursorQuery.close();
                return zA;
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
        } catch (Exception e2) {
            t.c(f23920c, "Could not clean database", e2);
            return false;
        }
    }

    private b a(Cursor cursor) {
        return new b(cursor.getString(cursor.getColumnIndexOrThrow("notification_id")), cursor.getInt(cursor.getColumnIndexOrThrow("unread")) != 0);
    }

    private String a(int i2) {
        if (i2 < 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder((i2 * 2) - 1);
        sb.append("?");
        for (int i3 = 1; i3 < i2; i3++) {
            sb.append(",?");
        }
        return sb.toString();
    }
}
