package okhttp3.internal.connection;

import defpackage.b21;
import defpackage.d21;
import defpackage.n00;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB1\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "maxIdleConnections", "", "keepAliveDuration", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Lokhttp3/internal/connection/ConnectionListener;", "connectionListener", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealConnectionPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f77134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectionListener f77135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f77136c;
    public final TaskQueue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RealConnectionPool$cleanupTask$1 f77137e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConcurrentLinkedQueue f77138f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner, int i2, long j2, TimeUnit timeUnit, ConnectionListener connectionListener) {
        taskRunner.getClass();
        timeUnit.getClass();
        connectionListener.getClass();
        this.f77134a = i2;
        this.f77135b = connectionListener;
        this.f77136c = timeUnit.toNanos(j2);
        this.d = taskRunner.d();
        final String strR = n00.r(_UtilJvmKt.f77019b, " ConnectionPool connection closer", new StringBuilder());
        this.f77137e = new Task(strR) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public final long runOnce() {
                RealConnectionPool realConnectionPool = this.f77139a;
                long jNanoTime = System.nanoTime();
                long j3 = (jNanoTime - realConnectionPool.f77136c) + 1;
                Iterator it = realConnectionPool.f77138f.iterator();
                it.getClass();
                RealConnection realConnection = null;
                long j4 = Long.MAX_VALUE;
                int i3 = 0;
                RealConnection realConnection2 = null;
                RealConnection realConnection3 = null;
                int i4 = 0;
                while (it.hasNext()) {
                    RealConnection realConnection4 = (RealConnection) it.next();
                    realConnection4.getClass();
                    synchronized (realConnection4) {
                        if (realConnectionPool.a(realConnection4, jNanoTime) > 0) {
                            i4++;
                        } else {
                            long j5 = realConnection4.t;
                            if (j5 < j3) {
                                realConnection2 = realConnection4;
                                j3 = j5;
                            }
                            i3++;
                            if (j5 < j4) {
                                realConnection3 = realConnection4;
                                j4 = j5;
                            }
                        }
                    }
                }
                if (realConnection2 != null) {
                    realConnection = realConnection2;
                } else if (i3 > realConnectionPool.f77134a) {
                    j3 = j4;
                    realConnection = realConnection3;
                } else {
                    j3 = -1;
                }
                if (realConnection == null) {
                    if (realConnection3 != null) {
                        return (j4 + realConnectionPool.f77136c) - jNanoTime;
                    }
                    if (i4 > 0) {
                        return realConnectionPool.f77136c;
                    }
                    return -1L;
                }
                synchronized (realConnection) {
                    if (!realConnection.s.isEmpty()) {
                        return 0L;
                    }
                    if (realConnection.t != j3) {
                        return 0L;
                    }
                    realConnection.m = true;
                    realConnectionPool.f77138f.remove(realConnection);
                    _UtilJvmKt.c(realConnection.f77129f);
                    realConnectionPool.f77135b.getClass();
                    if (!realConnectionPool.f77138f.isEmpty()) {
                        return 0L;
                    }
                    TaskQueue taskQueue = realConnectionPool.d;
                    synchronized (taskQueue.f77066a) {
                        if (taskQueue.a()) {
                            taskQueue.f77066a.c(taskQueue);
                        }
                    }
                    return 0L;
                }
            }
        };
        this.f77138f = new ConcurrentLinkedQueue();
        if (j2 > 0) {
            return;
        }
        b21.n(d21.g(j2, "keepAliveDuration <= 0: "));
        throw null;
    }

    public final int a(RealConnection realConnection, long j2) {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        ArrayList arrayList = realConnection.s;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                String str = "A connection to " + realConnection.d.f77006a.f76817i + " was leaked. Did you forget to close a response body?";
                Platform.f77312a.getClass();
                Platform.f77313b.f(((RealCall.CallReference) reference).f77126a, str);
                arrayList.remove(i2);
                if (arrayList.isEmpty()) {
                    realConnection.t = j2 - this.f77136c;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
