package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.driver.AndroidSQLiteConnection;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;", "Landroidx/room/coroutines/ConnectionPool;", "Landroidx/sqlite/SQLiteDriver;", "driver", "", "fileName", "<init>", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AndroidSQLiteDriverConnectionPool implements ConnectionPool {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteDriver f19593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19594c;
    public final Lazy d;

    public AndroidSQLiteDriverConnectionPool(SQLiteDriver sQLiteDriver, String str) {
        sQLiteDriver.getClass();
        str.getClass();
        this.f19593b = sQLiteDriver;
        this.f19594c = str;
        this.d = LazyKt.b(new Function0() { // from class: androidx.room.coroutines.a
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                AndroidSQLiteDriverConnectionPool androidSQLiteDriverConnectionPool = this.f19678b;
                SQLiteConnection sQLiteConnectionA = androidSQLiteDriverConnectionPool.f19593b.a(androidSQLiteDriverConnectionPool.f19594c);
                sQLiteConnectionA.getClass();
                return new AndroidSQLiteDriverPooledConnection((AndroidSQLiteConnection) sQLiteConnectionA);
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ((AndroidSQLiteDriverPooledConnection) this.d.getF71699b()).f19595a.close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object j1(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        return function2.invoke((AndroidSQLiteDriverPooledConnection) this.d.getF71699b(), continuationImpl);
    }
}
