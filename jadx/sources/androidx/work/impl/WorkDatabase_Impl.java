package androidx.work.impl;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.RoomOpenDelegateMarker;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.RawWorkInfoDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/work/impl/WorkDatabase_Impl;", "Landroidx/work/impl/WorkDatabase;", "<init>", "()V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkDatabase_Impl extends WorkDatabase {
    public static final /* synthetic */ int w = 0;
    public final Lazy o;
    public final Lazy p;
    public final Lazy q;
    public final Lazy r;
    public final Lazy s;
    public final Lazy t;
    public final Lazy u;
    public final Lazy v;

    public WorkDatabase_Impl() {
        final int i2 = 0;
        this.o = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i3) {
                    case 0:
                        int i4 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i5 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i6 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i7 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i8 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i9 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i10 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i11 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i3 = 1;
        this.p = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i4) {
                    case 0:
                        int i5 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i6 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i7 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i8 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i9 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i10 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i11 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i12 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i4 = 2;
        this.q = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i5) {
                    case 0:
                        int i6 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i7 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i8 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i9 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i10 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i11 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i12 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i13 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i5 = 3;
        this.r = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i5;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i6) {
                    case 0:
                        int i7 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i8 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i9 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i10 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i11 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i12 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i13 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i14 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i6 = 4;
        this.s = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i7 = i6;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i7) {
                    case 0:
                        int i8 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i9 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i10 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i11 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i12 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i13 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i14 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i15 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i7 = 5;
        this.t = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i8 = i7;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i8) {
                    case 0:
                        int i9 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i10 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i11 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i12 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i13 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i14 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i15 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i16 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i8 = 6;
        this.u = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i9 = i8;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i9) {
                    case 0:
                        int i10 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i11 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i12 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i13 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i14 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i15 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i16 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i17 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i9 = 7;
        this.v = LazyKt.b(new Function0(this) { // from class: m71

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WorkDatabase_Impl f76204c;

            {
                this.f76204c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i10 = i9;
                WorkDatabase_Impl workDatabase_Impl = this.f76204c;
                switch (i10) {
                    case 0:
                        int i11 = WorkDatabase_Impl.w;
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        int i12 = WorkDatabase_Impl.w;
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        int i13 = WorkDatabase_Impl.w;
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        int i14 = WorkDatabase_Impl.w;
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        int i15 = WorkDatabase_Impl.w;
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        int i16 = WorkDatabase_Impl.w;
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    case 6:
                        int i17 = WorkDatabase_Impl.w;
                        return new PreferenceDao_Impl(workDatabase_Impl);
                    default:
                        int i18 = WorkDatabase_Impl.w;
                        return new RawWorkInfoDao_Impl(workDatabase_Impl);
                }
            }
        });
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao A() {
        return (SystemIdInfoDao) this.r.getF71699b();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao B() {
        return (WorkNameDao) this.s.getF71699b();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao C() {
        return (WorkProgressDao) this.t.getF71699b();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao D() {
        return (WorkSpecDao) this.o.getF71699b();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao E() {
        return (WorkTagDao) this.q.getF71699b();
    }

    @Override // androidx.room.RoomDatabase
    public final List d(LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WorkDatabase_AutoMigration_13_14_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_16_17_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_17_18_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_18_19_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_19_20_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_20_21_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_22_23_Impl());
        arrayList.add(new WorkDatabase_AutoMigration_23_24_Impl());
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker e() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegateMarker f() {
        return new RoomOpenDelegate() { // from class: androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1
            {
                super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void a(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.a(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void b(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `Preference`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void c(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void d(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "PRAGMA foreign_keys = ON");
                int i2 = WorkDatabase_Impl.w;
                this.d.t(sQLiteConnection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void e(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void f(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                DBUtil.a(sQLiteConnection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public final RoomOpenDelegate.ValidationResult g(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap.put("prerequisite_id", new TableInfo.Column("prerequisite_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("work_spec_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("prerequisite_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, CollectionsKt.O("work_spec_id"), CollectionsKt.O("ASC")));
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, CollectionsKt.O("prerequisite_id"), CollectionsKt.O("ASC")));
                TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
                TableInfo.f19766e.getClass();
                TableInfo tableInfoA = TableInfo.Companion.a(sQLiteConnection, "Dependency");
                if (!tableInfo.equals(tableInfoA)) {
                    return new RoomOpenDelegate.ValidationResult(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfoA);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put(com.batch.android.s.b.a.f24015b, new TableInfo.Column(com.batch.android.s.b.a.f24015b, "TEXT", true, 1, null, 1));
                linkedHashMap2.put("state", new TableInfo.Column("state", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("worker_class_name", new TableInfo.Column("worker_class_name", "TEXT", true, 0, null, 1));
                linkedHashMap2.put("input_merger_class_name", new TableInfo.Column("input_merger_class_name", "TEXT", true, 0, null, 1));
                linkedHashMap2.put("input", new TableInfo.Column("input", "BLOB", true, 0, null, 1));
                linkedHashMap2.put("output", new TableInfo.Column("output", "BLOB", true, 0, null, 1));
                linkedHashMap2.put("initial_delay", new TableInfo.Column("initial_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("interval_duration", new TableInfo.Column("interval_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("flex_duration", new TableInfo.Column("flex_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("run_attempt_count", new TableInfo.Column("run_attempt_count", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("backoff_policy", new TableInfo.Column("backoff_policy", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("last_enqueue_time", new TableInfo.Column("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
                linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("schedule_requested_at", new TableInfo.Column("schedule_requested_at", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("run_in_foreground", new TableInfo.Column("run_in_foreground", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column("out_of_quota_policy", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("period_count", new TableInfo.Column("period_count", "INTEGER", true, 0, ContentTree.ROOT_ID, 1));
                linkedHashMap2.put("generation", new TableInfo.Column("generation", "INTEGER", true, 0, ContentTree.ROOT_ID, 1));
                linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
                linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column("next_schedule_time_override_generation", "INTEGER", true, 0, ContentTree.ROOT_ID, 1));
                linkedHashMap2.put("stop_reason", new TableInfo.Column("stop_reason", "INTEGER", true, 0, "-256", 1));
                linkedHashMap2.put("trace_tag", new TableInfo.Column("trace_tag", "TEXT", false, 0, null, 1));
                linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
                linkedHashMap2.put("required_network_type", new TableInfo.Column("required_network_type", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("required_network_request", new TableInfo.Column("required_network_request", "BLOB", true, 0, "x''", 1));
                linkedHashMap2.put("requires_charging", new TableInfo.Column("requires_charging", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_device_idle", new TableInfo.Column("requires_device_idle", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("content_uri_triggers", new TableInfo.Column("content_uri_triggers", "BLOB", true, 0, null, 1));
                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, CollectionsKt.O("schedule_requested_at"), CollectionsKt.O("ASC")));
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, CollectionsKt.O("last_enqueue_time"), CollectionsKt.O("ASC")));
                TableInfo tableInfo2 = new TableInfo("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
                TableInfo tableInfoA2 = TableInfo.Companion.a(sQLiteConnection, "WorkSpec");
                if (!tableInfo2.equals(tableInfoA2)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo2 + "\n Found:\n" + tableInfoA2);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("tag", new TableInfo.Column("tag", "TEXT", true, 1, null, 1));
                linkedHashMap3.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                linkedHashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("work_spec_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                linkedHashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, CollectionsKt.O("work_spec_id"), CollectionsKt.O("ASC")));
                TableInfo tableInfo3 = new TableInfo("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
                TableInfo tableInfoA3 = TableInfo.Companion.a(sQLiteConnection, "WorkTag");
                if (!tableInfo3.equals(tableInfoA3)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfoA3);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                linkedHashMap4.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap4.put("generation", new TableInfo.Column("generation", "INTEGER", true, 2, ContentTree.ROOT_ID, 1));
                linkedHashMap4.put("system_id", new TableInfo.Column("system_id", "INTEGER", true, 0, null, 1));
                LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                linkedHashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("work_spec_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                TableInfo tableInfo4 = new TableInfo("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
                TableInfo tableInfoA4 = TableInfo.Companion.a(sQLiteConnection, "SystemIdInfo");
                if (!tableInfo4.equals(tableInfoA4)) {
                    return new RoomOpenDelegate.ValidationResult(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo4 + "\n Found:\n" + tableInfoA4);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("name", new TableInfo.Column("name", "TEXT", true, 1, null, 1));
                linkedHashMap5.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
                LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                linkedHashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("work_spec_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                linkedHashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, CollectionsKt.O("work_spec_id"), CollectionsKt.O("ASC")));
                TableInfo tableInfo5 = new TableInfo("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
                TableInfo tableInfoA5 = TableInfo.Companion.a(sQLiteConnection, "WorkName");
                if (!tableInfo5.equals(tableInfoA5)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfoA5);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
                linkedHashMap6.put("progress", new TableInfo.Column("progress", "BLOB", true, 0, null, 1));
                LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                linkedHashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.O("work_spec_id"), CollectionsKt.O(com.batch.android.s.b.a.f24015b)));
                TableInfo tableInfo6 = new TableInfo("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
                TableInfo tableInfoA6 = TableInfo.Companion.a(sQLiteConnection, "WorkProgress");
                if (!tableInfo6.equals(tableInfoA6)) {
                    return new RoomOpenDelegate.ValidationResult(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo6 + "\n Found:\n" + tableInfoA6);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put(ConfigurationName.KEY, new TableInfo.Column(ConfigurationName.KEY, "TEXT", true, 1, null, 1));
                linkedHashMap7.put("long_value", new TableInfo.Column("long_value", "INTEGER", false, 0, null, 1));
                TableInfo tableInfo7 = new TableInfo("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
                TableInfo tableInfoA7 = TableInfo.Companion.a(sQLiteConnection, "Preference");
                if (tableInfo7.equals(tableInfoA7)) {
                    return new RoomOpenDelegate.ValidationResult(true, null);
                }
                return new RoomOpenDelegate.ValidationResult(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfoA7);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    public final Set m() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap o() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        KClass kClassB = reflectionFactory.b(WorkSpecDao.class);
        WorkSpecDao_Impl.f20530c.getClass();
        EmptyList emptyList = EmptyList.f71768b;
        linkedHashMap.put(kClassB, emptyList);
        KClass kClassB2 = reflectionFactory.b(DependencyDao.class);
        DependencyDao_Impl.f20484c.getClass();
        linkedHashMap.put(kClassB2, emptyList);
        KClass kClassB3 = reflectionFactory.b(WorkTagDao.class);
        WorkTagDao_Impl.f20535c.getClass();
        linkedHashMap.put(kClassB3, emptyList);
        KClass kClassB4 = reflectionFactory.b(SystemIdInfoDao.class);
        SystemIdInfoDao_Impl.f20496c.getClass();
        linkedHashMap.put(kClassB4, emptyList);
        KClass kClassB5 = reflectionFactory.b(WorkNameDao.class);
        WorkNameDao_Impl.f20503c.getClass();
        linkedHashMap.put(kClassB5, emptyList);
        KClass kClassB6 = reflectionFactory.b(WorkProgressDao.class);
        WorkProgressDao_Impl.f20508b.getClass();
        linkedHashMap.put(kClassB6, emptyList);
        KClass kClassB7 = reflectionFactory.b(PreferenceDao.class);
        PreferenceDao_Impl.f20489c.getClass();
        linkedHashMap.put(kClassB7, emptyList);
        KClass kClassB8 = reflectionFactory.b(RawWorkInfoDao.class);
        RawWorkInfoDao_Impl.f20492a.getClass();
        linkedHashMap.put(kClassB8, emptyList);
        return linkedHashMap;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao y() {
        return (DependencyDao) this.p.getF71699b();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao z() {
        return (PreferenceDao) this.u.getF71699b();
    }
}
