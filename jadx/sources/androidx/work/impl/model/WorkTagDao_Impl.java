package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.c61;
import defpackage.k71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkTagDao_Impl;", "Landroidx/work/impl/model/WorkTagDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkTagDao_Impl implements WorkTagDao {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f20535c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f20537b;

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkTagDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/WorkTagDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkTag;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<WorkTag> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            WorkTag workTag = (WorkTag) obj;
            sQLiteStatement.getClass();
            workTag.getClass();
            sQLiteStatement.A(1, workTag.f20533a);
            sQLiteStatement.A(2, workTag.f20534b);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/WorkTagDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WorkTagDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20536a = roomDatabase;
        this.f20537b = new AnonymousClass1();
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public final List a(String str) {
        str.getClass();
        return (List) DBUtil.c(this.f20536a, true, false, new k71(str, 13));
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public final void b(WorkTag workTag) {
        DBUtil.c(this.f20536a, false, true, new c61(this, workTag, 16));
    }
}
