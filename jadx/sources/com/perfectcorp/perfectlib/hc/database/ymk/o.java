package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class o extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_31", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE TutorialInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,guid TEXT NOT NULL,type TEXT,payload TEXT,expiredDate TEXT,lastModified INTEGER,isDownloaded INTEGER DEFAULT 0,UNIQUE (guid) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_31", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_31", "[createNewTableIndexes] start");
        Iterator it = an$a.f40302a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Log.g(3, "DatabaseUpgrade_1_31", "[createNewTableIndexes] end");
    }
}
