package com.perfectcorp.uma.countly;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f43239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f43240b;

    public class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "countly.sqlite", (SQLiteDatabase.CursorFactory) null, 1);
        }

        public static ArrayList c(String str) {
            String[] strArrSplit = str.split("===");
            ArrayList arrayList = new ArrayList(strArrSplit.length);
            for (String str2 : strArrSplit) {
                try {
                    r rVarA = r.a(new JSONObject(str2));
                    if (rVarA != null) {
                        arrayList.add(rVarA);
                    }
                } catch (JSONException e2) {
                    com.perfectcorp.uma.b.d.b("CountlyDatabase", "Cannot parse Event json", e2);
                }
            }
            Collections.sort(arrayList, new o());
            return arrayList;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            SharedPreferences.Editor editorEdit;
            m mVar = m.this;
            com.perfectcorp.uma.b.d.c("CountlyDatabase", "creating schema");
            sQLiteDatabase.execSQL("CREATE TABLE EVENT_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, _VALUE TEXT, UNIQUE (_ID))");
            sQLiteDatabase.execSQL("CREATE TABLE CONNECTION_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, _VALUE TEXT, UNIQUE (_ID))");
            sQLiteDatabase.beginTransaction();
            try {
                SharedPreferences sharedPreferences = null;
                try {
                    sharedPreferences = mVar.f43239a.getSharedPreferences("COUNTLY_STORE", 0);
                    String string = sharedPreferences.getString("EVENTS", "");
                    if (!TextUtils.isEmpty(string)) {
                        for (r rVar : c(string)) {
                            if (rVar != null) {
                                m.b(sQLiteDatabase, "EVENT_TABLE", rVar.b().toString());
                            }
                        }
                    }
                    String string2 = sharedPreferences.getString("CONNECTIONS", "");
                    if (!TextUtils.isEmpty(string2)) {
                        for (String str : string2.split("===")) {
                            m.b(sQLiteDatabase, "CONNECTION_TABLE", str);
                        }
                    }
                    editorEdit = sharedPreferences.edit();
                } catch (Exception unused) {
                    if (sharedPreferences != null) {
                        editorEdit = sharedPreferences.edit();
                    }
                    com.perfectcorp.uma.b.d.c("CountlyDatabase", "Checked old data");
                    sQLiteDatabase.setTransactionSuccessful();
                    com.perfectcorp.uma.b.d.c("CountlyDatabase", "creating database success");
                } catch (Throwable th) {
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().clear().apply();
                    }
                    throw th;
                }
                editorEdit.clear().apply();
                com.perfectcorp.uma.b.d.c("CountlyDatabase", "Checked old data");
                sQLiteDatabase.setTransactionSuccessful();
                com.perfectcorp.uma.b.d.c("CountlyDatabase", "creating database success");
            } catch (Exception e2) {
                com.perfectcorp.uma.b.d.d("CountlyDatabase", "Exception: " + e2.getMessage());
            } finally {
                com.perfectcorp.uma.b.d.c("CountlyDatabase", "end transaction");
                sQLiteDatabase.endTransaction();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        }
    }

    public m(Context context) {
        this.f43239a = context;
        this.f43240b = new a(context);
        try {
            if (e("CONNECTION_TABLE") > 1000) {
                c("CONNECTION_TABLE");
            }
            if (e("EVENT_TABLE") > 1000) {
                c("EVENT_TABLE");
            }
        } catch (Throwable th) {
            com.perfectcorp.uma.b.d.a("CountlyDatabase", "[sweep] " + th);
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            com.perfectcorp.uma.b.d.a("CountlyDatabase", "[addRecord] " + str + ": " + str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_VALUE", str2);
            long jInsert = sQLiteDatabase.insert(str, null, contentValues);
            if (jInsert < 0) {
                com.perfectcorp.uma.b.d.d("CountlyDatabase", "[addRecord] " + str + " db.insert fail, id: " + jInsert);
            }
        } catch (Exception e2) {
            StringBuilder sbR = pq0.r("[addRecord] ", str, " addRecord db.insert exception: ");
            sbR.append(e2.getMessage());
            com.perfectcorp.uma.b.d.d("CountlyDatabase", sbR.toString());
        }
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = this.f43240b.getWritableDatabase().query(false, "EVENT_TABLE", new String[]{"_VALUE"}, null, null, null, null, "_ID ASC", null);
                if (cursorQuery == null) {
                    com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getAllEvent] Failed to query: cursor is null");
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return arrayList;
                    }
                    return arrayList;
                }
                if (!cursorQuery.moveToFirst()) {
                    com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getAllEvent] Failure of cursor.moveToFirst().");
                    cursorQuery.close();
                    return arrayList;
                }
                int columnIndex = cursorQuery.getColumnIndex("_VALUE");
                if (columnIndex < 0) {
                    com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getAllEvent] cursor.getColumnIndex() returned negative number");
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    r rVarA = r.a(new JSONObject(cursorQuery.getString(columnIndex)));
                    if (rVarA != null) {
                        arrayList.add(rVarA);
                    }
                } while (cursorQuery.moveToNext());
                Collections.sort(arrayList, new n());
                cursorQuery.close();
                return arrayList;
            } catch (Exception e2) {
                com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getAllEvent] Exception: " + e2.getMessage());
                if (0 != 0) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (0 == 0) {
                throw th;
            }
            cursor.close();
            throw th;
        }
    }

    public final void c(String str) {
        try {
            this.f43240b.getWritableDatabase().delete(str, "_ID <= ?", new String[]{String.valueOf(d(str) - 1000)});
        } catch (Exception e2) {
            StringBuilder sbR = pq0.r("[trim] ", str, " exception: ");
            sbR.append(e2.getMessage());
            com.perfectcorp.uma.b.d.d("CountlyDatabase", sbR.toString());
        }
    }

    public final long d(String str) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = this.f43240b.getWritableDatabase().query(false, str, new String[]{"_ID"}, null, null, null, null, "_ID DESC", "1");
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    int columnIndex = cursorQuery.getColumnIndex("_ID");
                    if (columnIndex < 0) {
                        com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getLastId] cursor.getColumnIndex() returned negative number");
                        cursorQuery.close();
                        return -1L;
                    }
                    long j2 = cursorQuery.getInt(columnIndex);
                    cursorQuery.close();
                    return j2;
                }
                com.perfectcorp.uma.b.d.a("CountlyDatabase", "[getLastId] Failed to query: cursor is null");
                if (cursorQuery != null) {
                    cursorQuery.close();
                    return -1L;
                }
            } catch (Exception e2) {
                com.perfectcorp.uma.b.d.a("[getLastId] Exception: ", e2.getMessage());
                if (0 != 0) {
                    cursor.close();
                }
            }
            return -1L;
        } catch (Throwable th) {
            if (0 == 0) {
                throw th;
            }
            cursor.close();
            throw th;
        }
    }

    public final long e(String str) {
        try {
            return DatabaseUtils.queryNumEntries(this.f43240b.getWritableDatabase(), str);
        } catch (Exception unused) {
            return 0L;
        }
    }
}
