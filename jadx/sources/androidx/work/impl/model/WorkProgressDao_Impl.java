package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import defpackage.k71;
import defpackage.o51;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl;", "Landroidx/work/impl/model/WorkProgressDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkProgressDao_Impl implements WorkProgressDao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f20508b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20509a;

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkProgressDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/WorkProgressDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkProgress;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<WorkProgress> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            WorkProgress workProgress = (WorkProgress) obj;
            sQLiteStatement.getClass();
            workProgress.getClass();
            sQLiteStatement.A(1, workProgress.f20506a);
            Data.Companion companion = Data.f20243b;
            Data data = workProgress.f20507b;
            companion.getClass();
            sQLiteStatement.b(2, Data.Companion.c(data));
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WorkProgressDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20509a = roomDatabase;
        new AnonymousClass1();
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void a(String str) {
        str.getClass();
        DBUtil.c(this.f20509a, false, true, new k71(str, 2));
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void deleteAll() {
        DBUtil.c(this.f20509a, false, true, new o51(19));
    }
}
