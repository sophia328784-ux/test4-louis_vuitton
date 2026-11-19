package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/coroutines/ConnectionWithLock;", "Landroidx/sqlite/SQLiteConnection;", "Lkotlinx/coroutines/sync/Mutex;", "delegate", "lock", "<init>", "(Landroidx/sqlite/SQLiteConnection;Lkotlinx/coroutines/sync/Mutex;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ConnectionWithLock implements SQLiteConnection, Mutex {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteConnection f19624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Mutex f19625c;
    public CoroutineContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f19626e;

    public ConnectionWithLock(SQLiteConnection sQLiteConnection, Mutex mutex) {
        sQLiteConnection.getClass();
        mutex.getClass();
        this.f19624b = sQLiteConnection;
        this.f19625c = mutex;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final SQLiteStatement T1(String str) {
        str.getClass();
        return this.f19624b.T1(str);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final Object c(Continuation continuation) {
        return this.f19625c.c(continuation);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        this.f19624b.close();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void d(Object obj) {
        this.f19625c.d(null);
    }

    public final void e(StringBuilder sb) {
        if (this.d == null && this.f19626e == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
            return;
        }
        sb.append("\t\tStatus: Acquired connection");
        sb.append('\n');
        CoroutineContext coroutineContext = this.d;
        if (coroutineContext != null) {
            sb.append("\t\tCoroutine: " + coroutineContext);
            sb.append('\n');
        }
        Throwable th = this.f19626e;
        if (th != null) {
            sb.append("\t\tAcquired:");
            sb.append('\n');
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            String string = stringWriter.toString();
            string.getClass();
            Iterator it = CollectionsKt.w(StringsKt.A(string), 1).iterator();
            while (it.hasNext()) {
                sb.append("\t\t" + ((String) it.next()));
                sb.append('\n');
            }
        }
    }

    public final String toString() {
        return this.f19624b.toString();
    }

    public /* synthetic */ ConnectionWithLock(SQLiteConnection sQLiteConnection, Mutex mutex, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteConnection, (i2 & 2) != 0 ? MutexKt.a() : mutex);
    }
}
