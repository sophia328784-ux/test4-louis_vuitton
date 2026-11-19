package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class i extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_25", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE SkinCareProduct (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,Payload TEXT,LastModified INTEGER,UNIQUE (ProductId) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkinCareProductRelation (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,ReferencedId TEXT NOT NULL,UNIQUE (ProductId,ReferencedId) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_25", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_25", "[createNewTableIndexes] start");
        Iterator it = ah$a.f40296a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Iterator it2 = ah$b.f40297a.iterator();
        while (it2.hasNext()) {
            sQLiteDatabase.execSQL((String) it2.next());
        }
        Log.g(3, "DatabaseUpgrade_1_25", "[createNewTableIndexes] end");
    }
}
