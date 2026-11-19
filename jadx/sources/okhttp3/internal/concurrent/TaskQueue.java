package okhttp3.internal.concurrent;

import defpackage.n00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "name", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "AwaitIdleTask", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TaskQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskRunner f77066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f77068c;
    public Task d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f77069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77070f;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;", "Lokhttp3/internal/concurrent/Task;", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AwaitIdleTask extends Task {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CountDownLatch f77071a;

        public AwaitIdleTask() {
            super(n00.r(_UtilJvmKt.f77019b, " awaitIdle", new StringBuilder()), false);
            this.f77071a = new CountDownLatch(1);
        }

        @Override // okhttp3.internal.concurrent.Task
        public final long runOnce() {
            this.f77071a.countDown();
            return -1L;
        }
    }

    public TaskQueue(TaskRunner taskRunner, String str) {
        taskRunner.getClass();
        str.getClass();
        this.f77066a = taskRunner;
        this.f77067b = str;
        this.f77069e = new ArrayList();
    }

    public static void b(TaskQueue taskQueue, final String str, long j2, final Function0 function0, int i2) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        final boolean z = (i2 & 4) != 0;
        taskQueue.getClass();
        str.getClass();
        function0.getClass();
        taskQueue.d(new Task(str, z) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public final long runOnce() {
                function0.mo47invoke();
                return -1L;
            }
        }, j2);
    }

    public final boolean a() {
        Task task = this.d;
        if (task != null && task.getCancelable()) {
            this.f77070f = true;
        }
        ArrayList arrayList = this.f77069e;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).getCancelable()) {
                Logger logger = this.f77066a.f77075c;
                Task task2 = (Task) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final CountDownLatch c() {
        synchronized (this.f77066a) {
            if (this.d == null && this.f77069e.isEmpty()) {
                return new CountDownLatch(0);
            }
            Task task = this.d;
            if (task instanceof AwaitIdleTask) {
                return ((AwaitIdleTask) task).f77071a;
            }
            for (Task task2 : this.f77069e) {
                if (task2 instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task2).f77071a;
                }
            }
            AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
            if (f(awaitIdleTask, 0L, false)) {
                this.f77066a.c(this);
            }
            return awaitIdleTask.f77071a;
        }
    }

    public final void d(Task task, long j2) {
        task.getClass();
        synchronized (this.f77066a) {
            if (!this.f77068c) {
                if (f(task, j2, false)) {
                    this.f77066a.c(this);
                }
                return;
            }
            boolean cancelable = task.getCancelable();
            TaskRunner taskRunner = this.f77066a;
            if (cancelable) {
                Logger logger = taskRunner.f77075c;
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                Logger logger2 = taskRunner.f77075c;
                if (logger2.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger2, task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0040 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    /* JADX WARN: Code duplicated, block: B:15:0x004e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0067  */
    /* JADX WARN: Code duplicated, block: B:23:0x0077 A[LOOP:0: B:18:0x0061->B:23:0x0077, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x007d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x007b A[EDGE_INSN: B:33:0x007b->B:25:0x007b BREAK  A[LOOP:0: B:18:0x0061->B:23:0x0077], SYNTHETIC] */
    public final boolean f(Task task, long j2, boolean z) {
        Iterator it;
        int size;
        String strConcat;
        task.getClass();
        task.initQueue$okhttp(this);
        TaskRunner taskRunner = this.f77066a;
        TaskRunner.Backend backend = taskRunner.f77074b;
        Logger logger = taskRunner.f77075c;
        long jC = backend.c();
        long j3 = jC + j2;
        ArrayList arrayList = this.f77069e;
        int iIndexOf = arrayList.indexOf(task);
        if (iIndexOf == -1) {
            task.setNextExecuteNanoTime$okhttp(j3);
            if (logger.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(TaskLoggerKt.b(j3 - jC));
                } else {
                    strConcat = "scheduled after ".concat(TaskLoggerKt.b(j3 - jC));
                }
                TaskLoggerKt.a(logger, task, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((Task) it.next()).getNextExecuteNanoTime() - jC > j2) {
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, task);
            if (size == 0) {
                return true;
            }
        } else if (task.getNextExecuteNanoTime() > j3) {
            arrayList.remove(iIndexOf);
            task.setNextExecuteNanoTime$okhttp(j3);
            if (logger.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(TaskLoggerKt.b(j3 - jC));
                } else {
                    strConcat = "scheduled after ".concat(TaskLoggerKt.b(j3 - jC));
                }
                TaskLoggerKt.a(logger, task, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((Task) it.next()).getNextExecuteNanoTime() - jC > j2) {
                    break;
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, task);
            if (size == 0) {
                return true;
            }
        } else if (logger.isLoggable(Level.FINE)) {
            TaskLoggerKt.a(logger, task, this, "already scheduled");
            return false;
        }
        return false;
    }

    public final void g() {
        TaskRunner taskRunner = this.f77066a;
        TimeZone timeZone = _UtilJvmKt.f77018a;
        synchronized (taskRunner) {
            this.f77068c = true;
            if (a()) {
                this.f77066a.c(this);
            }
        }
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF77067b() {
        return this.f77067b;
    }
}
