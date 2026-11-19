package androidx.room.driver;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/driver/SupportSQLiteDriver;", "Landroidx/sqlite/SQLiteDriver;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "openHelper", "<init>", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SupportSQLiteDriver implements SQLiteDriver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SupportSQLiteOpenHelper f19681a;

    public SupportSQLiteDriver(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        supportSQLiteOpenHelper.getClass();
        this.f19681a = supportSQLiteOpenHelper;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public final SQLiteConnection a(String str) {
        str.getClass();
        return new SupportSQLiteConnection(this.f19681a.getWritableDatabase());
    }
}
