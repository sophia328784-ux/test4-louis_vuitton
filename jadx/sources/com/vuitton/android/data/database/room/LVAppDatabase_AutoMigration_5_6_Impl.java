package com.vuitton.android.data.database.room;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_5_6_Impl;", "Landroidx/room/migration/Migration;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVAppDatabase_AutoMigration_5_6_Impl extends Migration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVAppDatabase.DeleteClubMigration f43619c;

    public LVAppDatabase_AutoMigration_5_6_Impl() {
        super(5, 6);
        this.f43619c = new LVAppDatabase.DeleteClubMigration();
    }

    @Override // androidx.room.migration.Migration
    public final void a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLite.a(sQLiteConnection, "DROP TABLE `ClubMember`");
        SQLite.a(sQLiteConnection, "DROP TABLE `ClubOtherMember`");
        this.f43619c.a(sQLiteConnection);
    }
}
