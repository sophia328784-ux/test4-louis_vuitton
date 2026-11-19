package com.google.android.gms.internal.gtm;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.networkbench.agent.impl.util.r;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class zzbk implements zzay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbj f29978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile zzcg f29979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f29980c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f29981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DefaultClock f29982f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzby f29983h;

    public zzbk(zzby zzbyVar, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f29980c = applicationContext;
        this.d = "gtm_urls.db";
        this.f29983h = zzbyVar;
        this.f29982f = DefaultClock.f29336a;
        this.f29978a = new zzbj(this, applicationContext);
        this.f29979b = new zzcg(applicationContext, new zzbi(this));
        this.f29981e = 0L;
        this.g = r.E;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x0104  */
    /* JADX WARN: Code duplicated, block: B:59:0x014d  */
    /* JADX WARN: Code duplicated, block: B:70:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.gtm.zzay
    public final void a(long j2, String str, String str2, String str3, Map map, String str4) throws Throwable {
        SQLiteDatabase sQLiteDatabaseE;
        String str5;
        String string;
        Cursor cursorQuery;
        zzby zzbyVar = this.f29983h;
        this.f29982f.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis > this.f29981e + 86400000) {
            this.f29981e = jCurrentTimeMillis;
            SQLiteDatabase sQLiteDatabaseE2 = e();
            if (sQLiteDatabaseE2 != null) {
                sQLiteDatabaseE2.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(System.currentTimeMillis() - 2592000000L)});
                zzao.a(2);
                boolean z = c() == 0;
                zzce zzceVar = zzbyVar.f30011a;
                zzceVar.b(z, zzceVar.g);
            }
        }
        int iC = (c() - this.g) + 1;
        Cursor cursor = null;
        if (iC > 0) {
            ArrayList arrayList = new ArrayList();
            SQLiteDatabase sQLiteDatabaseE3 = e();
            if (sQLiteDatabaseE3 != null) {
                try {
                    cursorQuery = sQLiteDatabaseE3.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, "hit_id ASC", Integer.toString(iC));
                    try {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                do {
                                    arrayList.add(String.valueOf(cursorQuery.getLong(0)));
                                } while (cursorQuery.moveToNext());
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            e.getMessage();
                            zzao.a(5);
                            if (cursorQuery != null) {
                            }
                            arrayList.size();
                            zzao.a(2);
                            d((String[]) arrayList.toArray(new String[0]));
                            sQLiteDatabaseE = e();
                            if (sQLiteDatabaseE != null) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("hit_time", Long.valueOf(j2));
                                contentValues.put("hit_url", str);
                                contentValues.put("hit_first_send_time", (Integer) 0);
                                if (str2 == null) {
                                    str5 = "GET";
                                } else {
                                    str5 = str2;
                                }
                                contentValues.put("hit_method", str5);
                                contentValues.put("hit_unique_id", str3);
                                if (map == null) {
                                    string = null;
                                } else {
                                    string = new JSONObject(map).toString();
                                }
                                contentValues.put("hit_headers", string);
                                contentValues.put("hit_body", str4);
                                try {
                                    sQLiteDatabaseE.insertOrThrow("gtm_hits", null, contentValues);
                                    zzao.a(2);
                                    zzce zzceVar2 = zzbyVar.f30011a;
                                    zzceVar2.b(false, zzceVar2.g);
                                } catch (SQLiteConstraintException unused) {
                                    "Hit has already been sent: ".concat(String.valueOf(str));
                                    zzao.a(2);
                                } catch (SQLiteException e3) {
                                    "Error storing hit: ".concat(String.valueOf(e3.getMessage()));
                                    zzao.a(5);
                                }
                            }
                            if (zzbn.a().f29990c == 2) {
                                zzao.a(2);
                                b();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                cursorQuery.close();
            }
            arrayList.size();
            zzao.a(2);
            d((String[]) arrayList.toArray(new String[0]));
        }
        sQLiteDatabaseE = e();
        if (sQLiteDatabaseE != null) {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("hit_time", Long.valueOf(j2));
            contentValues2.put("hit_url", str);
            contentValues2.put("hit_first_send_time", (Integer) 0);
            if (str2 == null) {
                str5 = "GET";
            } else {
                str5 = str2;
            }
            contentValues2.put("hit_method", str5);
            contentValues2.put("hit_unique_id", str3);
            if (map == null) {
                string = null;
            } else {
                string = new JSONObject(map).toString();
            }
            contentValues2.put("hit_headers", string);
            contentValues2.put("hit_body", str4);
            sQLiteDatabaseE.insertOrThrow("gtm_hits", null, contentValues2);
            zzao.a(2);
            zzce zzceVar3 = zzbyVar.f30011a;
            zzceVar3.b(false, zzceVar3.g);
        }
        if (zzbn.a().f29990c == 2) {
            zzao.a(2);
            b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:104:0x0202  */
    /* JADX WARN: Code duplicated, block: B:106:0x0211  */
    /* JADX WARN: Code duplicated, block: B:117:0x0242  */
    /* JADX WARN: Code duplicated, block: B:119:0x0246  */
    /* JADX WARN: Code duplicated, block: B:127:0x025d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:131:0x0263  */
    /* JADX WARN: Code duplicated, block: B:141:0x021c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x01b7 A[Catch: all -> 0x00f4, TryCatch #12 {all -> 0x00f4, blocks: (B:28:0x00c3, B:31:0x00ca, B:33:0x00d7, B:35:0x00e6, B:38:0x00f1, B:43:0x00fa, B:45:0x0115, B:47:0x011b, B:48:0x012a, B:50:0x0130, B:55:0x0144, B:58:0x0182, B:59:0x0184, B:56:0x014d, B:57:0x016a, B:72:0x01a1, B:73:0x01b1, B:75:0x01b7, B:80:0x01c9), top: B:135:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:86:0x01d6  */
    public final void b() throws Throwable {
        boolean z;
        int i2;
        int i3;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursorQuery;
        ArrayList arrayList;
        boolean z2;
        HashMap map;
        SQLiteDatabase sQLiteDatabaseE;
        int count;
        zzao.a(2);
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f29979b.f30027b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzao.a(2);
            return;
        }
        ArrayList<zzat> arrayList2 = new ArrayList();
        SQLiteDatabase sQLiteDatabaseE2 = e();
        Cursor cursorQuery2 = null;
        if (sQLiteDatabaseE2 == null) {
            i2 = 0;
            z = true;
            i3 = 5;
        } else {
            try {
                try {
                    z = true;
                    i2 = 0;
                    i3 = 5;
                    try {
                        Cursor cursorQuery3 = sQLiteDatabaseE2.query("gtm_hits", new String[]{"hit_id", "hit_time", "hit_first_send_time"}, null, null, null, null, "hit_id ASC", Integer.toString(40));
                        try {
                            try {
                                ArrayList arrayList3 = new ArrayList();
                                try {
                                    if (cursorQuery3.moveToFirst()) {
                                        do {
                                            long j2 = cursorQuery3.getLong(0);
                                            cursorQuery3.getLong(1);
                                            arrayList3.add(new zzat(j2, cursorQuery3.getLong(2)));
                                        } while (cursorQuery3.moveToNext());
                                    }
                                    cursorQuery3.close();
                                    try {
                                        cursor2 = cursorQuery3;
                                        arrayList2 = arrayList3;
                                        try {
                                            cursorQuery = sQLiteDatabaseE2.query("gtm_hits", new String[]{"hit_id", "hit_url", "hit_method", "hit_headers", "hit_body"}, null, null, null, null, "hit_id ASC", Integer.toString(40));
                                            try {
                                                try {
                                                    if (cursorQuery.moveToFirst()) {
                                                        int i4 = 0;
                                                        do {
                                                            if (((SQLiteCursor) cursorQuery).getWindow().getNumRows() > 0) {
                                                                zzat zzatVar = (zzat) arrayList2.get(i4);
                                                                String string = cursorQuery.getString(1);
                                                                zzatVar.getClass();
                                                                if (string != null && !TextUtils.isEmpty(string.trim())) {
                                                                    zzatVar.f29968c = string;
                                                                }
                                                                ((zzat) arrayList2.get(i4)).d = cursorQuery.getString(2);
                                                                ((zzat) arrayList2.get(i4)).f29970f = cursorQuery.getString(4);
                                                                try {
                                                                    String string2 = cursorQuery.getString(3);
                                                                    if (string2 != null) {
                                                                        JSONObject jSONObject = new JSONObject(string2);
                                                                        JSONArray jSONArrayNames = jSONObject.names();
                                                                        map = new HashMap();
                                                                        for (int i5 = 0; i5 < jSONArrayNames.length(); i5++) {
                                                                            String string3 = jSONArrayNames.getString(i5);
                                                                            map.put(string3, (String) jSONObject.opt(string3));
                                                                        }
                                                                    } else {
                                                                        map = null;
                                                                    }
                                                                    ((zzat) arrayList2.get(i4)).f29969e = map;
                                                                } catch (JSONException e2) {
                                                                    String.format("Failed to read headers for hitId %d: %s", Long.valueOf(((zzat) arrayList2.get(i4)).f29966a), e2.getMessage());
                                                                    zzao.a(5);
                                                                }
                                                            } else {
                                                                String.format("HitString for hitId %d too large. Hit will be deleted.", Long.valueOf(((zzat) arrayList2.get(i4)).f29966a));
                                                                zzao.a(5);
                                                            }
                                                            i4++;
                                                        } while (cursorQuery.moveToNext());
                                                    }
                                                    cursorQuery.close();
                                                } catch (SQLiteException e3) {
                                                    e = e3;
                                                    e.getMessage();
                                                    zzao.a(5);
                                                    arrayList = new ArrayList();
                                                    z2 = false;
                                                    for (zzat zzatVar2 : arrayList2) {
                                                        if (!TextUtils.isEmpty(zzatVar2.f29968c)) {
                                                            if (z2) {
                                                                break;
                                                            } else {
                                                                z2 = true;
                                                            }
                                                        }
                                                        arrayList.add(zzatVar2);
                                                    }
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    arrayList2 = arrayList;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                throw th;
                                            }
                                        } catch (SQLiteException e4) {
                                            e = e4;
                                            cursorQuery = cursor2;
                                            e.getMessage();
                                            zzao.a(5);
                                            arrayList = new ArrayList();
                                            z2 = false;
                                            while (r3.hasNext()) {
                                                if (!TextUtils.isEmpty(zzatVar2.f29968c)) {
                                                    if (z2) {
                                                        break;
                                                        break;
                                                    }
                                                    z2 = true;
                                                }
                                                arrayList.add(zzatVar2);
                                            }
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            arrayList2 = arrayList;
                                            if (arrayList2.isEmpty()) {
                                                zzao.a(2);
                                                zzce zzceVar = this.f29983h.f30011a;
                                                zzceVar.b(z, zzceVar.g);
                                                return;
                                            }
                                            this.f29979b.a(arrayList2);
                                            sQLiteDatabaseE = e();
                                            if (sQLiteDatabaseE != null) {
                                                try {
                                                    try {
                                                        cursorQuery2 = sQLiteDatabaseE.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
                                                        count = cursorQuery2.getCount();
                                                        cursorQuery2.close();
                                                    } catch (SQLiteException e5) {
                                                        e5.getMessage();
                                                        zzao.a(i3);
                                                        if (cursorQuery2 != null) {
                                                            cursorQuery2.close();
                                                            return;
                                                        }
                                                        count = i2;
                                                    }
                                                    if (count > 0) {
                                                        if (zzce.m == null) {
                                                            zzce.m = new zzce();
                                                        }
                                                        zzce.m.a();
                                                    }
                                                } catch (Throwable th2) {
                                                    if (cursorQuery2 != null) {
                                                        cursorQuery2.close();
                                                    }
                                                    throw th2;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursorQuery = cursor2;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException e6) {
                                        e = e6;
                                        cursor2 = cursorQuery3;
                                        arrayList2 = arrayList3;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        cursor2 = cursorQuery3;
                                    }
                                } catch (SQLiteException e7) {
                                    e = e7;
                                    arrayList2 = arrayList3;
                                    cursor = cursorQuery3;
                                    try {
                                        e.getMessage();
                                        zzao.a(i3);
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        cursorQuery2 = cursor;
                                        if (cursorQuery2 != null) {
                                            cursorQuery2.close();
                                        }
                                        throw th;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                cursorQuery2 = cursorQuery3;
                                if (cursorQuery2 != null) {
                                    cursorQuery2.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e8) {
                            e = e8;
                        }
                    } catch (SQLiteException e9) {
                        e = e9;
                        cursor = null;
                        e.getMessage();
                        zzao.a(i3);
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (arrayList2.isEmpty()) {
                            zzao.a(2);
                            zzce zzceVar2 = this.f29983h.f30011a;
                            zzceVar2.b(z, zzceVar2.g);
                            return;
                        }
                        this.f29979b.a(arrayList2);
                        sQLiteDatabaseE = e();
                        if (sQLiteDatabaseE != null) {
                            cursorQuery2 = sQLiteDatabaseE.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
                            count = cursorQuery2.getCount();
                            cursorQuery2.close();
                            if (count > 0) {
                                if (zzce.m == null) {
                                    zzce.m = new zzce();
                                }
                                zzce.m.a();
                            }
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            } catch (SQLiteException e10) {
                e = e10;
                z = true;
                i2 = 0;
                i3 = 5;
            }
        }
        if (arrayList2.isEmpty()) {
            zzao.a(2);
            zzce zzceVar3 = this.f29983h.f30011a;
            zzceVar3.b(z, zzceVar3.g);
            return;
        }
        this.f29979b.a(arrayList2);
        sQLiteDatabaseE = e();
        if (sQLiteDatabaseE != null) {
            cursorQuery2 = sQLiteDatabaseE.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            count = cursorQuery2.getCount();
            cursorQuery2.close();
            if (count > 0) {
                if (zzce.m == null) {
                    zzce.m = new zzce();
                }
                zzce.m.a();
            }
        }
    }

    public final int c() {
        SQLiteDatabase sQLiteDatabaseE = e();
        int i2 = 0;
        if (sQLiteDatabaseE == null) {
            return 0;
        }
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabaseE.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                if (cursorRawQuery.moveToFirst()) {
                    i2 = (int) cursorRawQuery.getLong(0);
                }
            } catch (SQLiteException e2) {
                e2.getMessage();
                zzao.a(5);
            }
            return i2;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final void d(String[] strArr) {
        int length;
        SQLiteDatabase sQLiteDatabaseE;
        if (strArr == null || (length = strArr.length) == 0 || (sQLiteDatabaseE = e()) == null) {
            return;
        }
        try {
            sQLiteDatabaseE.delete("gtm_hits", fc.h("HIT_ID in (", TextUtils.join(",", Collections.nCopies(length, "?")), ")"), strArr);
            zzby zzbyVar = this.f29983h;
            boolean z = c() == 0;
            zzce zzceVar = zzbyVar.f30011a;
            zzceVar.b(z, zzceVar.g);
        } catch (SQLiteException e2) {
            "Error deleting hits: ".concat(String.valueOf(e2.getMessage()));
            zzao.a(5);
        }
    }

    public final SQLiteDatabase e() {
        try {
            return this.f29978a.getWritableDatabase();
        } catch (SQLiteException unused) {
            Context context = this.f29980c;
            zzao.a(5);
            try {
                Preconditions.h(context);
            } catch (Exception unused2) {
            }
            zzao.a(2);
            return null;
        }
    }
}
