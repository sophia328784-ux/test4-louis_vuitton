package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.nj0;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/PreferenceDao_Impl;", "Landroidx/work/impl/model/PreferenceDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PreferenceDao_Impl implements PreferenceDao {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f20489c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f20491b;

    /* JADX INFO: renamed from: androidx.work.impl.model.PreferenceDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/PreferenceDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/Preference;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<Preference> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            Preference preference = (Preference) obj;
            sQLiteStatement.getClass();
            preference.getClass();
            sQLiteStatement.A(1, preference.f20487a);
            Long l = preference.f20488b;
            if (l == null) {
                sQLiteStatement.l(2);
            } else {
                sQLiteStatement.a(2, l.longValue());
            }
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/PreferenceDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20490a = roomDatabase;
        this.f20491b = new AnonymousClass1();
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final void a(Preference preference) {
        DBUtil.c(this.f20490a, false, true, new xg0(this, preference, 25));
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final Long b(String str) {
        return (Long) DBUtil.c(this.f20490a, true, false, new nj0(str, 10));
    }
}
