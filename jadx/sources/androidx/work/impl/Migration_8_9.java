package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/Migration_8_9;", "Landroidx/room/migration/Migration;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Migration_8_9 extends Migration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Migration_8_9 f20308c = new Migration_8_9(8, 9);

    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.R("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
