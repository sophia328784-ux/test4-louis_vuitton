package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class k extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_27", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE ConditionalInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT NOT NULL,Info TEXT,UNIQUE (GUID) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_27", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_27", "[createNewTableIndexes] start");
        Iterator it = aj$a.f40300a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Log.g(3, "DatabaseUpgrade_1_27", "[createNewTableIndexes] end");
    }
}
