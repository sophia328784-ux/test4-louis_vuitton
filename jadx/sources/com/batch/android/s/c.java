package com.batch.android.s;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.batch.android.e.i0;
import com.batch.android.e.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f24023f = "LocalCampaignsSQLTracker";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f24024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f24025c;
    private com.batch.android.e.e d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24026e;

    public c() {
        this.f24026e = false;
        this.d = new i0();
    }

    private void c() throws f {
        if (this.f24025c == null) {
            b bVar = this.f24024b;
            if (bVar == null) {
                throw new f();
            }
            try {
                this.f24025c = bVar.getWritableDatabase();
            } catch (SQLException e2) {
                t.c("LocalCampaignsSQLTracker", "Could not get a writable database", e2);
                throw new f();
            }
        }
    }

    @Override // com.batch.android.s.e
    public Map<String, Integer> a(List<String> list, String str) throws f {
        HashMap map = new HashMap(list.size());
        if (!list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                map.put(it.next(), 0);
            }
            StringBuilder sb = new StringBuilder("?");
            for (int i2 = 1; i2 < list.size(); i2++) {
                sb.append(",?");
            }
            if (str == null) {
                str = "";
            }
            String[] strArr = new String[list.size() + 1];
            for (int i3 = 0; i3 < list.size(); i3++) {
                strArr[i3] = list.get(i3);
            }
            strArr[list.size()] = str;
            Cursor cursorRawQuery = this.f24025c.rawQuery("SELECT id, SUM(count)  FROM LocalCampaignsSQLTracker WHERE id IN (" + ((Object) sb) + ") AND custom_user_id = ? GROUP BY id", strArr);
            while (cursorRawQuery.moveToNext()) {
                map.put(cursorRawQuery.getString(0), Integer.valueOf(cursorRawQuery.getInt(1)));
            }
            cursorRawQuery.close();
        }
        return map;
    }

    @Override // com.batch.android.s.e
    public e.a b(String str, String str2) throws f {
        c();
        e.a aVarA = a(str, str2);
        aVarA.f24030c++;
        aVarA.d = this.d.a().a();
        this.f24025c.execSQL("INSERT OR REPLACE INTO LocalCampaignsSQLTracker (id, kind, count, last_oc, custom_user_id) VALUES (?, 1, ?, ?, ?)", new String[]{str, Integer.toString(aVarA.f24030c), Long.toString(aVarA.d), str2 == null ? "" : str2});
        SQLiteDatabase sQLiteDatabase = this.f24025c;
        String string = Long.toString(aVarA.d);
        if (str2 == null) {
            str2 = "";
        }
        sQLiteDatabase.execSQL("INSERT INTO view_events (campaign_id, timestamp_ms, custom_user_id) VALUES (?, ?, ?)", new String[]{str, string, str2});
        return aVarA;
    }

    public com.batch.android.e.e d() {
        return this.d;
    }

    public boolean e() {
        return this.f24026e;
    }

    public c(com.batch.android.e.e eVar) {
        this.f24026e = false;
        this.d = eVar;
    }

    @Override // com.batch.android.s.e
    public e.a b(String str) throws f {
        c();
        e.a aVar = new e.a(str);
        Cursor cursorRawQuery = this.f24025c.rawQuery("SELECT count, last_oc FROM LocalCampaignsSQLTracker WHERE id = ?", new String[]{str});
        while (cursorRawQuery.moveToNext()) {
            aVar.f24030c = cursorRawQuery.getInt(0) + aVar.f24030c;
            aVar.d = Math.max(cursorRawQuery.getLong(1), aVar.d);
        }
        cursorRawQuery.close();
        return aVar;
    }

    public void b() throws f {
        c();
        this.f24025c.execSQL("DELETE FROM view_events");
        this.f24025c.execSQL("DELETE FROM LocalCampaignsSQLTracker");
    }

    public void a() {
        SQLiteDatabase sQLiteDatabase = this.f24025c;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.f24025c = null;
        }
        this.f24026e = false;
    }

    public void a(com.batch.android.e.e eVar) {
        this.d = eVar;
    }

    @Override // com.batch.android.s.e
    public e.a a(String str, String str2) throws f {
        c();
        e.a aVar = new e.a(str, str2);
        SQLiteDatabase sQLiteDatabase = this.f24025c;
        if (str2 == null) {
            str2 = "";
        }
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT count, last_oc FROM LocalCampaignsSQLTracker WHERE id = ? AND custom_user_id = ?", new String[]{str, str2});
        if (cursorRawQuery.moveToFirst()) {
            aVar.f24030c = cursorRawQuery.getInt(0);
            aVar.d = cursorRawQuery.getLong(1);
        }
        cursorRawQuery.close();
        return aVar;
    }

    @Override // com.batch.android.s.e
    public Map<String, Integer> a(List<String> list) throws f {
        c();
        HashMap map = new HashMap(list.size());
        if (!list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                map.put(it.next(), 0);
            }
            StringBuilder sb = new StringBuilder("?");
            for (int i2 = 1; i2 < list.size(); i2++) {
                sb.append(",?");
            }
            Cursor cursorRawQuery = this.f24025c.rawQuery("SELECT id, SUM(count)  FROM LocalCampaignsSQLTracker WHERE id IN (" + ((Object) sb) + ")GROUP BY id", (String[]) list.toArray(new String[list.size()]));
            while (cursorRawQuery.moveToNext()) {
                map.put(cursorRawQuery.getString(0), Integer.valueOf(cursorRawQuery.getInt(1)));
            }
            cursorRawQuery.close();
        }
        return map;
    }

    public void a(Context context) {
        this.f24024b = new b(context);
        this.f24026e = true;
    }

    @Override // com.batch.android.s.e
    public long a(String str) throws f {
        c();
        Cursor cursorRawQuery = this.f24025c.rawQuery("SELECT last_oc FROM LocalCampaignsSQLTracker WHERE id = ?", new String[]{str});
        long jMax = 0;
        while (cursorRawQuery.moveToNext()) {
            jMax = Math.max(jMax, cursorRawQuery.getLong(0));
        }
        cursorRawQuery.close();
        return jMax;
    }

    @Override // com.batch.android.s.e
    public int a(long j2) throws f {
        c();
        Cursor cursorRawQuery = this.f24025c.rawQuery("SELECT COUNT(*)  FROM view_events WHERE timestamp_ms > ?", new String[]{Long.toString(j2)});
        int i2 = cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
        cursorRawQuery.close();
        return i2;
    }
}
