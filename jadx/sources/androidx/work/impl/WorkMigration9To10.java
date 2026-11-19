package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/WorkMigration9To10;", "Landroidx/room/migration/Migration;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkMigration9To10 extends Migration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f20352c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkMigration9To10(Context context) {
        super(9, 10);
        context.getClass();
        this.f20352c = context;
    }

    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.R("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        Context context = this.f20352c;
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j2 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j3 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            supportSQLiteDatabase.P();
            try {
                supportSQLiteDatabase.d1(new Object[]{"last_cancel_all_time_ms", Long.valueOf(j2)});
                supportSQLiteDatabase.d1(new Object[]{"reschedule_needed", Long.valueOf(j3)});
                sharedPreferences.edit().clear().apply();
                supportSQLiteDatabase.a0();
                supportSQLiteDatabase.t0();
            } catch (Throwable th) {
                supportSQLiteDatabase.t0();
                throw th;
            }
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
            int i2 = sharedPreferences2.getInt("next_job_scheduler_id", 0);
            int i3 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
            supportSQLiteDatabase.P();
            try {
                supportSQLiteDatabase.d1(new Object[]{"next_job_scheduler_id", Integer.valueOf(i2)});
                supportSQLiteDatabase.d1(new Object[]{"next_alarm_manager_id", Integer.valueOf(i3)});
                sharedPreferences2.edit().clear().apply();
                supportSQLiteDatabase.a0();
            } finally {
                supportSQLiteDatabase.t0();
            }
        }
    }
}
