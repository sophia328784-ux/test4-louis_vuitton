package com.perfectcorp.perfectlib.hc.database.ymk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.collect.ArrayListMultimap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class q extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_32", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetWearingStyle (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,WearingStyleGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, WearingStyleGuid) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_32", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_32", "[dumpOldTableToNewTable] start");
        try {
            sQLiteDatabase.execSQL("ALTER TABLE SkuSetSupportedPattern RENAME TO SkuSetSupportedPatternTemp");
            sQLiteDatabase.execSQL("CREATE TABLE SkuSetSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);");
            ArrayListMultimap arrayListMultimap = new ArrayListMultimap();
            try {
                Cursor cursorQuery = sQLiteDatabase.query("SkuSetSupportedPatternTemp", new String[]{"SkuSetId", "PatternGuid", "Metadata"}, null, null, null, null, null, null);
                try {
                    if (DBUtility.f(cursorQuery)) {
                        do {
                            arrayListMultimap.put(cursorQuery.getString(cursorQuery.getColumnIndex("SkuSetId")), Pair.create(cursorQuery.getString(cursorQuery.getColumnIndex("PatternGuid")), cursorQuery.getString(cursorQuery.getColumnIndex("Metadata"))));
                        } while (cursorQuery.moveToNext());
                    }
                    IO.b(cursorQuery);
                    for (String str : arrayListMultimap.keySet()) {
                        List list = arrayListMultimap.get((Object) str);
                        int i2 = 0;
                        while (i2 < list.size()) {
                            Pair pair = (Pair) list.get(i2);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("SkuSetId", str);
                            i2++;
                            contentValues.put("SupportedPatternGuid", String.format(Locale.US, "%s_sp_%02d", str, Integer.valueOf(i2)));
                            contentValues.put("Metadata", ((ao$b) GsonBaseResponse.f41999a.i((String) pair.second, ao$b.class)).a((String) pair.first));
                            sQLiteDatabase.insert("SkuSetSupportedPattern", null, contentValues);
                        }
                    }
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS SkuSetSupportedPatternTemp");
                    Log.g(3, "DatabaseUpgrade_1_32", "[dumpOldTableToNewTable] end");
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    IO.b(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (Throwable th3) {
            Log.e("DatabaseUpgrade_1_32", "[dumpOldTableToNewTable] failed", th3);
            throw th3;
        }
    }
}
