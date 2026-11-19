package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class j extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_26", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE SkinCare3Product (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,Payload TEXT,LastModified INTEGER,UNIQUE (ProductId) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkinCare3ProductRelation (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,ReferencedId TEXT NOT NULL,UNIQUE (ProductId,ReferencedId) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_26", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_26", "[createNewTableIndexes] start");
        Iterator it = ai$a.f40298a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Iterator it2 = ai$b.f40299a.iterator();
        while (it2.hasNext()) {
            sQLiteDatabase.execSQL((String) it2.next());
        }
        Log.g(3, "DatabaseUpgrade_1_26", "[createNewTableIndexes] end");
    }
}
