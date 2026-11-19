package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionListener;
import okhttp3.internal.connection.RealConnectionPool;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B;\b\u0010\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0004\u0010\u0010B1\b\u0010\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0004\u0010\u0011B!\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u0012B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0013¨\u0006\u0014"}, d2 = {"Lokhttp3/ConnectionPool;", "", "Lokhttp3/internal/connection/RealConnectionPool;", "delegate", "<init>", "(Lokhttp3/internal/connection/RealConnectionPool;)V", "", "maxIdleConnections", "", "keepAliveDuration", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/ConnectionListener;", "connectionListener", "(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;)V", "(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V", "(IJLjava/util/concurrent/TimeUnit;)V", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectionPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RealConnectionPool f76871a;

    /* JADX WARN: Illegal instructions before constructor call */
    public ConnectionPool(int i2, long j2, TimeUnit timeUnit, TaskRunner taskRunner, ConnectionListener connectionListener, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        i2 = (i3 & 1) != 0 ? 5 : i2;
        j2 = (i3 & 2) != 0 ? 5L : j2;
        timeUnit = (i3 & 4) != 0 ? TimeUnit.MINUTES : timeUnit;
        taskRunner = (i3 & 8) != 0 ? TaskRunner.m : taskRunner;
        if ((i3 & 16) != 0) {
            ConnectionListener.f77095a.getClass();
            connectionListener = ConnectionListener.f77096b;
        }
        this(i2, j2, timeUnit, taskRunner, connectionListener);
    }

    public ConnectionPool(RealConnectionPool realConnectionPool) {
        realConnectionPool.getClass();
        this.f76871a = realConnectionPool;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i2, long j2, TimeUnit timeUnit, TaskRunner taskRunner, ConnectionListener connectionListener) {
        this(new RealConnectionPool(taskRunner, i2, j2, timeUnit, connectionListener));
        timeUnit.getClass();
        taskRunner.getClass();
        connectionListener.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ConnectionPool(int i2, long j2, TimeUnit timeUnit, ConnectionListener connectionListener, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        i2 = (i3 & 1) != 0 ? 5 : i2;
        j2 = (i3 & 2) != 0 ? 5L : j2;
        timeUnit = (i3 & 4) != 0 ? TimeUnit.MINUTES : timeUnit;
        if ((i3 & 8) != 0) {
            ConnectionListener.f77095a.getClass();
            connectionListener = ConnectionListener.f77096b;
        }
        this(i2, j2, timeUnit, connectionListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i2, long j2, TimeUnit timeUnit, ConnectionListener connectionListener) {
        this(i2, j2, timeUnit, TaskRunner.m, connectionListener);
        timeUnit.getClass();
        connectionListener.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ConnectionPool(int i2, long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        TaskRunner taskRunner = TaskRunner.m;
        ConnectionListener.f77095a.getClass();
        this(i2, j2, timeUnit, taskRunner, ConnectionListener.f77096b);
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
