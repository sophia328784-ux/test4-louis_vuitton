package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class n extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_30", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE BackgroundInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT NOT NULL,payload TEXT,usageType TEXT,expiredDate TEXT,rootFolder TEXT NOT NULL,version INT,data TEXT,isDeleted INTEGER,UNIQUE (GUID) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_30", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_30", "[createNewTableIndexes] start");
        Iterator it = am$a.f40301a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Log.g(3, "DatabaseUpgrade_1_30", "[createNewTableIndexes] end");
    }
}
