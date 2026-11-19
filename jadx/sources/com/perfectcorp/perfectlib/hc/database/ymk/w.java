package com.perfectcorp.perfectlib.hc.database.ymk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.DBUtility;

/* JADX INFO: loaded from: classes3.dex */
final class w extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor;
        String str;
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("ALTER TABLE PatternInfo ADD Positions INTEGER DEFAULT -1");
        Cursor cursorQuery = null;
        try {
            sQLiteDatabase.execSQL("CREATE TABLE PatternPaletteInfoTemp (_id INTEGER PRIMARY KEY AUTOINCREMENT,PatternGUID TEXT,PaletteGUID TEXT,PaletteColorIndex TEXT,Source TEXT,Type TEXT,ColorCount Integer,ColorIntensities TEXT,Radius TEXT,HiddenIntensity TEXT,extra TEXT, UNIQUE (PatternGUID, PaletteGUID, PaletteColorIndex, Source) ON CONFLICT REPLACE);");
            String str2 = "PatternPaletteInfoTemp";
            try {
                cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", new String[]{"PatternGUID", "PaletteGUID", "Source", "Type", "ColorCount", "ColorIntensities", "Radius", "HiddenIntensity", "extra"}, null, null, null, null, null, null);
                try {
                    if (DBUtility.f(cursorQuery)) {
                        int columnIndex = cursorQuery.getColumnIndex("PatternGUID");
                        int columnIndex2 = cursorQuery.getColumnIndex("PaletteGUID");
                        int columnIndex3 = cursorQuery.getColumnIndex("Source");
                        int columnIndex4 = cursorQuery.getColumnIndex("ColorCount");
                        int columnIndex5 = cursorQuery.getColumnIndex("ColorIntensities");
                        int columnIndex6 = cursorQuery.getColumnIndex("Radius");
                        int columnIndex7 = cursorQuery.getColumnIndex("HiddenIntensity");
                        String str3 = "HiddenIntensity";
                        int columnIndex8 = cursorQuery.getColumnIndex("extra");
                        String str4 = "extra";
                        while (true) {
                            ContentValues contentValues = new ContentValues();
                            int i2 = columnIndex8;
                            contentValues.put("PatternGUID", cursorQuery.getString(columnIndex));
                            contentValues.put("PaletteGUID", cursorQuery.getString(columnIndex2));
                            int i3 = columnIndex;
                            contentValues.put("PaletteColorIndex", "");
                            contentValues.put("Source", cursorQuery.getString(columnIndex3));
                            contentValues.put("ColorCount", Integer.valueOf(Integer.parseInt(cursorQuery.getString(columnIndex4))));
                            contentValues.put("ColorIntensities", cursorQuery.getString(columnIndex5));
                            contentValues.put("Radius", cursorQuery.getString(columnIndex6));
                            String str5 = str3;
                            contentValues.put(str5, cursorQuery.getString(columnIndex7));
                            int i4 = columnIndex2;
                            String str6 = str4;
                            contentValues.put(str6, cursorQuery.getString(i2));
                            sQLiteDatabase2 = sQLiteDatabase;
                            str4 = str6;
                            cursor = cursorQuery;
                            str = str2;
                            try {
                                sQLiteDatabase2.insert(str, null, contentValues);
                                if (!cursor.moveToNext()) {
                                    break;
                                }
                                columnIndex2 = i4;
                                str2 = str;
                                str3 = str5;
                                columnIndex8 = i2;
                                columnIndex = i3;
                                cursorQuery = cursor;
                            } catch (Throwable th) {
                                th = th;
                                cursorQuery = cursor;
                                try {
                                    Log.e("DatabaseUpgrade_1_17", "upgradePatternPaletteTable1_16to1_17() failed! Exception: " + th.getMessage(), th);
                                    throw th;
                                } catch (Throwable th2) {
                                    IO.b(cursorQuery);
                                    throw th2;
                                }
                            }
                        }
                    } else {
                        sQLiteDatabase2 = sQLiteDatabase;
                        cursor = cursorQuery;
                        str = str2;
                    }
                    sQLiteDatabase2.execSQL("DROP TABLE IF EXISTS PatternPaletteInfo");
                    sQLiteDatabase2.execSQL("ALTER TABLE " + str + " RENAME TO PatternPaletteInfo");
                    IO.b(cursor);
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                cursorQuery = null;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
