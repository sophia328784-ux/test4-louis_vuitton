package androidx.room.driver;

import androidx.room.coroutines.ConnectionPool;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/driver/SupportSQLiteConnectionPool;", "Landroidx/room/coroutines/ConnectionPool;", "Landroidx/room/driver/SupportSQLiteDriver;", "supportDriver", "<init>", "(Landroidx/room/driver/SupportSQLiteDriver;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SupportSQLiteConnectionPool implements ConnectionPool {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SupportSQLiteDriver f19680b;

    public SupportSQLiteConnectionPool(SupportSQLiteDriver supportSQLiteDriver) {
        supportSQLiteDriver.getClass();
        this.f19680b = supportSQLiteDriver;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19680b.f19681a.close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object j1(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        SupportSQLiteDriver supportSQLiteDriver = this.f19680b;
        supportSQLiteDriver.f19681a.getF19888c();
        return function2.invoke(new SupportSQLitePooledConnection(new SupportSQLiteConnection(supportSQLiteDriver.f19681a.getWritableDatabase())), continuationImpl);
    }
}
