package okhttp3.internal.concurrent;

import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.t71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner;", "Lokhttp3/internal/concurrent/Lockable;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "backend", "Ljava/util/logging/Logger;", "logger", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner$Backend;Ljava/util/logging/Logger;)V", "Backend", "RealBackend", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TaskRunner implements Lockable {
    public static final Logger l;
    public static final TaskRunner m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Backend f77074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f77075c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f77076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f77077f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f77078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f77079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f77080j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TaskRunner$runnable$1 f77081k;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Backend;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Backend {
        void a(TaskRunner taskRunner);

        BlockingQueue b(LinkedBlockingDeque linkedBlockingDeque);

        long c();

        void d(TaskRunner taskRunner, long j2);

        void e(TaskRunner taskRunner, TaskRunner$runnable$1 taskRunner$runnable$1);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Companion;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "INSTANCE", "Lokhttp3/internal/concurrent/TaskRunner;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$RealBackend;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "Ljava/util/concurrent/ThreadFactory;", "threadFactory", "<init>", "(Ljava/util/concurrent/ThreadFactory;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RealBackend implements Backend {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ThreadPoolExecutor f77082a;

        public RealBackend(ThreadFactory threadFactory) {
            threadFactory.getClass();
            this.f77082a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public final void a(TaskRunner taskRunner) {
            taskRunner.getClass();
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public final BlockingQueue b(LinkedBlockingDeque linkedBlockingDeque) {
            return linkedBlockingDeque;
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public final long c() {
            return System.nanoTime();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public final void d(TaskRunner taskRunner, long j2) throws InterruptedException {
            TimeZone timeZone = _UtilJvmKt.f77018a;
            if (j2 > 0) {
                long j3 = j2 / 1000000;
                long j4 = j2 - (1000000 * j3);
                if (j3 > 0 || j2 > 0) {
                    taskRunner.wait(j3, (int) j4);
                }
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public final void e(TaskRunner taskRunner, TaskRunner$runnable$1 taskRunner$runnable$1) {
            taskRunner$runnable$1.getClass();
            this.f77082a.execute(taskRunner$runnable$1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        new Companion(null);
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        logger.getClass();
        l = logger;
        m = new TaskRunner(new RealBackend(new t71(n00.r(_UtilJvmKt.f77019b, " TaskRunner", new StringBuilder()), true)), null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [okhttp3.internal.concurrent.TaskRunner$runnable$1] */
    public TaskRunner(Backend backend, Logger logger) {
        backend.getClass();
        logger.getClass();
        this.f77074b = backend;
        this.f77075c = logger;
        this.d = 10000;
        this.f77079i = new ArrayList();
        this.f77080j = new ArrayList();
        this.f77081k = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task taskB;
                long jC;
                Task taskB2;
                TaskRunner taskRunner = this.this$0;
                synchronized (taskRunner) {
                    taskRunner.f77078h++;
                    taskB = taskRunner.b();
                }
                if (taskB == null) {
                    return;
                }
                Thread threadCurrentThread = Thread.currentThread();
                String name = threadCurrentThread.getName();
                while (true) {
                    try {
                        threadCurrentThread.setName(taskB.getName());
                        Logger logger2 = this.this$0.f77075c;
                        TaskQueue queue = taskB.getQueue();
                        queue.getClass();
                        boolean zIsLoggable = logger2.isLoggable(Level.FINE);
                        if (zIsLoggable) {
                            jC = queue.f77066a.f77074b.c();
                            TaskLoggerKt.a(logger2, taskB, queue, "starting");
                        } else {
                            jC = -1;
                        }
                        try {
                            long jRunOnce = taskB.runOnce();
                            if (zIsLoggable) {
                                TaskLoggerKt.a(logger2, taskB, queue, "finished run in " + TaskLoggerKt.b(queue.f77066a.f77074b.c() - jC));
                            }
                            TaskRunner taskRunner2 = this.this$0;
                            synchronized (taskRunner2) {
                                TaskRunner.a(taskRunner2, taskB, jRunOnce, true);
                                taskB2 = taskRunner2.b();
                            }
                            if (taskB2 == null) {
                                threadCurrentThread.setName(name);
                                return;
                            }
                            taskB = taskB2;
                        } catch (Throwable th) {
                            if (zIsLoggable) {
                                TaskLoggerKt.a(logger2, taskB, queue, "failed a run in " + TaskLoggerKt.b(queue.f77066a.f77074b.c() - jC));
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            TaskRunner taskRunner3 = this.this$0;
                            synchronized (taskRunner3) {
                                TaskRunner.a(taskRunner3, taskB, -1L, false);
                                if (!(th2 instanceof InterruptedException)) {
                                    throw th2;
                                }
                                Thread.currentThread().interrupt();
                                threadCurrentThread.setName(name);
                                return;
                            }
                        } catch (Throwable th3) {
                            threadCurrentThread.setName(name);
                            throw th3;
                        }
                    }
                }
            }
        };
    }

    public static final void a(TaskRunner taskRunner, Task task, long j2, boolean z) {
        taskRunner.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        TaskQueue queue$okhttp = task.getQueue();
        queue$okhttp.getClass();
        if (queue$okhttp.d != task) {
            md.k("Check failed.");
            return;
        }
        boolean z2 = queue$okhttp.f77070f;
        queue$okhttp.f77070f = false;
        queue$okhttp.d = null;
        taskRunner.f77079i.remove(queue$okhttp);
        if (j2 != -1 && !z2 && !queue$okhttp.f77068c) {
            queue$okhttp.f(task, j2, true);
        }
        if (queue$okhttp.f77069e.isEmpty()) {
            return;
        }
        taskRunner.f77080j.add(queue$okhttp);
        if (z) {
            return;
        }
        taskRunner.e();
    }

    public final Task b() {
        long j2;
        Task task;
        boolean z;
        TimeZone timeZone = _UtilJvmKt.f77018a;
        while (true) {
            ArrayList arrayList = this.f77080j;
            if (arrayList.isEmpty()) {
                return null;
            }
            Backend backend = this.f77074b;
            long jC = backend.c();
            Iterator it = arrayList.iterator();
            long jMin = Long.MAX_VALUE;
            Task task2 = null;
            while (true) {
                if (!it.hasNext()) {
                    j2 = jC;
                    task = null;
                    z = false;
                    break;
                }
                Task task3 = (Task) ((TaskQueue) it.next()).f77069e.get(0);
                j2 = jC;
                task = null;
                long jMax = Math.max(0L, task3.getNextExecuteNanoTime() - jC);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task2 != null) {
                        z = true;
                        break;
                    }
                    task2 = task3;
                }
                jC = j2;
            }
            ArrayList arrayList2 = this.f77079i;
            if (task2 != null) {
                TimeZone timeZone2 = _UtilJvmKt.f77018a;
                task2.setNextExecuteNanoTime$okhttp(-1L);
                TaskQueue queue$okhttp = task2.getQueue();
                queue$okhttp.getClass();
                queue$okhttp.f77069e.remove(task2);
                arrayList.remove(queue$okhttp);
                queue$okhttp.d = task2;
                arrayList2.add(queue$okhttp);
                if (z || (!this.f77076e && !arrayList.isEmpty())) {
                    e();
                }
                return task2;
            }
            if (this.f77076e) {
                if (jMin >= this.f77077f - j2) {
                    return task;
                }
                backend.a(this);
                return task;
            }
            this.f77076e = true;
            this.f77077f = j2 + jMin;
            try {
                try {
                    backend.d(this, jMin);
                } catch (InterruptedException unused) {
                    TimeZone timeZone3 = _UtilJvmKt.f77018a;
                    for (int size = arrayList2.size() - 1; -1 < size; size--) {
                        ((TaskQueue) arrayList2.get(size)).a();
                    }
                    for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                        TaskQueue taskQueue = (TaskQueue) arrayList.get(size2);
                        taskQueue.a();
                        if (taskQueue.f77069e.isEmpty()) {
                            arrayList.remove(size2);
                        }
                    }
                }
                this.f77076e = false;
            } catch (Throwable th) {
                this.f77076e = false;
                throw th;
            }
        }
    }

    public final void c(TaskQueue taskQueue) {
        taskQueue.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        if (taskQueue.d == null) {
            boolean zIsEmpty = taskQueue.f77069e.isEmpty();
            ArrayList arrayList = this.f77080j;
            if (zIsEmpty) {
                arrayList.remove(taskQueue);
            } else {
                byte[] bArr = _UtilCommonKt.f77016a;
                arrayList.getClass();
                if (!arrayList.contains(taskQueue)) {
                    arrayList.add(taskQueue);
                }
            }
        }
        if (this.f77076e) {
            this.f77074b.a(this);
        } else {
            e();
        }
    }

    public final TaskQueue d() {
        int i2;
        synchronized (this) {
            i2 = this.d;
            this.d = i2 + 1;
        }
        return new TaskQueue(this, pq0.k(i2, "Q"));
    }

    public final void e() {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        int i2 = this.g;
        if (i2 > this.f77078h) {
            return;
        }
        this.g = i2 + 1;
        this.f77074b.e(this, this.f77081k);
    }

    public /* synthetic */ TaskRunner(Backend backend, Logger logger, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(backend, (i2 & 2) != 0 ? l : logger);
    }
}
