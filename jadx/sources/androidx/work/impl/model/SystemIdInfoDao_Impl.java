package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.l01;
import defpackage.m21;
import defpackage.nj0;
import defpackage.rf0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/SystemIdInfoDao_Impl;", "Landroidx/work/impl/model/SystemIdInfoDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f20496c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f20498b;

    /* JADX INFO: renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/SystemIdInfoDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/SystemIdInfo;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<SystemIdInfo> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
            sQLiteStatement.getClass();
            systemIdInfo.getClass();
            sQLiteStatement.A(1, systemIdInfo.f20493a);
            sQLiteStatement.a(2, systemIdInfo.f20494b);
            sQLiteStatement.a(3, systemIdInfo.f20495c);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/SystemIdInfoDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SystemIdInfoDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20497a = roomDatabase;
        this.f20498b = new AnonymousClass1();
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final SystemIdInfo a(int i2, String str) {
        str.getClass();
        return (SystemIdInfo) DBUtil.c(this.f20497a, true, false, new rf0(str, i2, 1));
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final List c() {
        return (List) DBUtil.c(this.f20497a, true, false, new l01(27));
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void d(SystemIdInfo systemIdInfo) {
        DBUtil.c(this.f20497a, false, true, new m21(this, systemIdInfo, 1));
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void e(String str) {
        str.getClass();
        DBUtil.c(this.f20497a, false, true, new nj0(str, 21));
    }
}
