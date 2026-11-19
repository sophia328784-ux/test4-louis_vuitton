package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.hv0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/SharedSQLiteStatement;", "", "Landroidx/room/RoomDatabase;", "database", "<init>", "(Landroidx/room/RoomDatabase;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SharedSQLiteStatement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f19511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f19512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f19513c;

    public SharedSQLiteStatement(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f19511a = roomDatabase;
        this.f19512b = new AtomicBoolean(false);
        this.f19513c = LazyKt.b(new hv0(this, 3));
    }

    public final SupportSQLiteStatement a() {
        RoomDatabase roomDatabase = this.f19511a;
        roomDatabase.a();
        if (this.f19512b.compareAndSet(false, true)) {
            return (SupportSQLiteStatement) this.f19513c.getF71699b();
        }
        String strB = b();
        roomDatabase.getClass();
        roomDatabase.a();
        roomDatabase.b();
        return roomDatabase.l().getWritableDatabase().T0(strB);
    }

    public abstract String b();

    public final void c(SupportSQLiteStatement supportSQLiteStatement) {
        supportSQLiteStatement.getClass();
        if (supportSQLiteStatement == ((SupportSQLiteStatement) this.f19513c.getF71699b())) {
            this.f19512b.set(false);
        }
    }
}
