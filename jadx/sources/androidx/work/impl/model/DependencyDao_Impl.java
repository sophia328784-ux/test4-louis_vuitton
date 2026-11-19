package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.a4;
import defpackage.lt;
import defpackage.vg;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl;", "Landroidx/work/impl/model/DependencyDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DependencyDao_Impl implements DependencyDao {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f20484c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f20486b;

    /* JADX INFO: renamed from: androidx.work.impl.model.DependencyDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/DependencyDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/Dependency;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<Dependency> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            Dependency dependency = (Dependency) obj;
            sQLiteStatement.getClass();
            dependency.getClass();
            sQLiteStatement.A(1, dependency.f20482a);
            sQLiteStatement.A(2, dependency.f20483b);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public DependencyDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20485a = roomDatabase;
        this.f20486b = new AnonymousClass1();
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final void a(Dependency dependency) {
        DBUtil.c(this.f20485a, false, true, new vg(this, dependency, 22));
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final List b(String str) {
        str.getClass();
        return (List) DBUtil.c(this.f20485a, true, false, new lt(str, 0));
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final boolean c(String str) {
        str.getClass();
        return ((Boolean) DBUtil.c(this.f20485a, true, false, new lt(str, 1))).booleanValue();
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final boolean d(String str) {
        str.getClass();
        return ((Boolean) DBUtil.c(this.f20485a, true, false, new a4(str, 29))).booleanValue();
    }
}
