package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class f extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_22", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE HairCareProduct (_id INTEGER PRIMARY KEY AUTOINCREMENT,Guid TEXT NOT NULL,Type TEXT,ProductId TEXT NOT NULL,Category TEXT,CustomerId INTEGER,Vendor TEXT,ExpiredDate TEXT,LastModified INTEGER,ProductLastModified INTEGER,MakeupVersion TEXT,Metadata TEXT,UNIQUE (ProductId) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_22", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_22", "[createNewTableIndexes] start");
        Iterator it = af$a.f40292a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Log.g(3, "DatabaseUpgrade_1_22", "[createNewTableIndexes] end");
    }
}
