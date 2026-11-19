package com.vuitton.android.data.database.room;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1", "Landroidx/room/migration/Migration;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVAppDatabase$Companion$MIGRATION_2_3$1 extends Migration {
    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.R("CREATE TABLE IF NOT EXISTS ProfileEntity_new (identifier TEXT NOT NULL PRIMARY KEY, lastName TEXT NOT NULL, branchId TEXT,firstName2 TEXT,civilityCode TEXT NOT NULL,login TEXT NOT NULL,contactableByMail INTEGER NOT NULL,firstName TEXT NOT NULL,taxId TEXT,subscribedInNewsletter INTEGER NOT NULL,lastName2 TEXT,addressList TEXT,contactableByPhone INTEGER NOT NULL,contactableBySms INTEGER NOT NULL,email TEXT NOT NULL)");
        supportSQLiteDatabase.R("INSERT INTO ProfileEntity_new SELECT identifier,lastName,branchId,firstName2,titleId,login,contactableByMail,firstName,taxId,subscribedInNewsletter, lastName2, addressList, contactableByPhone,contactableBySms,email FROM ProfileEntity");
        supportSQLiteDatabase.R("DROP TABLE ProfileEntity");
        supportSQLiteDatabase.R("ALTER TABLE ProfileEntity_new RENAME TO ProfileEntity");
    }
}
