package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/Migration_12_13;", "Landroidx/room/migration/Migration;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Migration_12_13 extends Migration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Migration_12_13 f20300c = new Migration_12_13(12, 13);

    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.R("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        supportSQLiteDatabase.R("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
