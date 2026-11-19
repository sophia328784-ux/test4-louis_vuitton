package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class g extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_23", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE GenericTagGroup (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,Id INTEGER,Name TEXT,IsFreeTag INTEGER,UNIQUE (Type,Id) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE GenericTag (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,TagGroupId INTEGER,Id INTEGER,Name TEXT,ImgURL TEXT,UNIQUE (Type,Id) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE GenericTagGuid (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,SubType TEXT NOT NULL,TagId INTEGER,Is3d INTEGER,Guid TEXT NOT NULL,UNIQUE (Type,TagId,Guid) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_23", "[createNewTables] end");
        Log.g(3, "DatabaseUpgrade_1_23", "[createNewTableIndexes] start");
        Iterator it = ag$b.f40294a.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL((String) it.next());
        }
        Iterator it2 = ag$a.f40293a.iterator();
        while (it2.hasNext()) {
            sQLiteDatabase.execSQL((String) it2.next());
        }
        Iterator it3 = ag$c.f40295a.iterator();
        while (it3.hasNext()) {
            sQLiteDatabase.execSQL((String) it3.next());
        }
        Log.g(3, "DatabaseUpgrade_1_23", "[createNewTableIndexes] end");
    }
}
