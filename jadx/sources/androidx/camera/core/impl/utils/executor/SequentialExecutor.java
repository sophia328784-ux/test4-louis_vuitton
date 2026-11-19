package androidx.camera.core.impl.utils.executor;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
final class SequentialExecutor implements Executor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f2444c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f2443b = new ArrayDeque();
    public final QueueWorker d = new QueueWorker();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WorkerRunningState f2445e = WorkerRunningState.IDLE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2446f = 0;

    public final class QueueWorker implements Runnable {
        public QueueWorker() {
        }

        /* JADX WARN: Code duplicated, block: B:40:0x0034 A[SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
        
            if (r1 == false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004b, code lost:
        
            r3.toString();
            androidx.camera.core.Logger.b("SequentialExecutor");
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void workOnQueue() {
            /*
                r9 = this;
                r0 = 0
                r1 = r0
            L2:
                androidx.camera.core.impl.utils.executor.SequentialExecutor r2 = androidx.camera.core.impl.utils.executor.SequentialExecutor.this     // Catch: java.lang.Throwable -> L49
                java.util.ArrayDeque r2 = r2.f2443b     // Catch: java.lang.Throwable -> L49
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L49
                if (r0 != 0) goto L28
                androidx.camera.core.impl.utils.executor.SequentialExecutor r0 = androidx.camera.core.impl.utils.executor.SequentialExecutor.this     // Catch: java.lang.Throwable -> L1c
                androidx.camera.core.impl.utils.executor.SequentialExecutor$WorkerRunningState r3 = r0.f2445e     // Catch: java.lang.Throwable -> L1c
                androidx.camera.core.impl.utils.executor.SequentialExecutor$WorkerRunningState r4 = androidx.camera.core.impl.utils.executor.SequentialExecutor.WorkerRunningState.RUNNING     // Catch: java.lang.Throwable -> L1c
                if (r3 != r4) goto L1e
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L3e
            L14:
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
                goto L3e
            L1c:
                r9 = move-exception
                goto L54
            L1e:
                long r5 = r0.f2446f     // Catch: java.lang.Throwable -> L1c
                r7 = 1
                long r5 = r5 + r7
                r0.f2446f = r5     // Catch: java.lang.Throwable -> L1c
                r0.f2445e = r4     // Catch: java.lang.Throwable -> L1c
                r0 = 1
            L28:
                androidx.camera.core.impl.utils.executor.SequentialExecutor r3 = androidx.camera.core.impl.utils.executor.SequentialExecutor.this     // Catch: java.lang.Throwable -> L1c
                java.util.ArrayDeque r3 = r3.f2443b     // Catch: java.lang.Throwable -> L1c
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L1c
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L1c
                if (r3 != 0) goto L3f
                androidx.camera.core.impl.utils.executor.SequentialExecutor r9 = androidx.camera.core.impl.utils.executor.SequentialExecutor.this     // Catch: java.lang.Throwable -> L1c
                androidx.camera.core.impl.utils.executor.SequentialExecutor$WorkerRunningState r0 = androidx.camera.core.impl.utils.executor.SequentialExecutor.WorkerRunningState.IDLE     // Catch: java.lang.Throwable -> L1c
                r9.f2445e = r0     // Catch: java.lang.Throwable -> L1c
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L3e
                goto L14
            L3e:
                return
            L3f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L49
                r1 = r1 | r2
                r3.run()     // Catch: java.lang.Throwable -> L49 java.lang.RuntimeException -> L4b
                goto L2
            L49:
                r9 = move-exception
                goto L56
            L4b:
                java.lang.String r2 = "SequentialExecutor"
                r3.toString()     // Catch: java.lang.Throwable -> L49
                androidx.camera.core.Logger.b(r2)     // Catch: java.lang.Throwable -> L49
                goto L2
            L54:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                throw r9     // Catch: java.lang.Throwable -> L49
            L56:
                if (r1 == 0) goto L5f
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L5f:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.impl.utils.executor.SequentialExecutor.QueueWorker.workOnQueue():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                workOnQueue();
            } catch (Error e2) {
                synchronized (SequentialExecutor.this.f2443b) {
                    SequentialExecutor.this.f2445e = WorkerRunningState.IDLE;
                    throw e2;
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class WorkerRunningState {
        private static final /* synthetic */ WorkerRunningState[] $VALUES;
        public static final WorkerRunningState IDLE;
        public static final WorkerRunningState QUEUED;
        public static final WorkerRunningState QUEUING;
        public static final WorkerRunningState RUNNING;

        static {
            WorkerRunningState workerRunningState = new WorkerRunningState("IDLE", 0);
            IDLE = workerRunningState;
            WorkerRunningState workerRunningState2 = new WorkerRunningState("QUEUING", 1);
            QUEUING = workerRunningState2;
            WorkerRunningState workerRunningState3 = new WorkerRunningState("QUEUED", 2);
            QUEUED = workerRunningState3;
            WorkerRunningState workerRunningState4 = new WorkerRunningState("RUNNING", 3);
            RUNNING = workerRunningState4;
            $VALUES = new WorkerRunningState[]{workerRunningState, workerRunningState2, workerRunningState3, workerRunningState4};
        }

        public static WorkerRunningState valueOf(String str) {
            return (WorkerRunningState) Enum.valueOf(WorkerRunningState.class, str);
        }

        public static WorkerRunningState[] values() {
            return (WorkerRunningState[]) $VALUES.clone();
        }
    }

    public SequentialExecutor(Executor executor) {
        executor.getClass();
        this.f2444c = executor;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x005f  */
    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z;
        runnable.getClass();
        synchronized (this.f2443b) {
            WorkerRunningState workerRunningState2 = this.f2445e;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j2 = this.f2446f;
                Runnable runnable2 = new Runnable() { // from class: androidx.camera.core.impl.utils.executor.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }
                };
                this.f2443b.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.f2445e = workerRunningState3;
                try {
                    this.f2444c.execute(this.d);
                    if (this.f2445e != workerRunningState3) {
                        return;
                    }
                    synchronized (this.f2443b) {
                        try {
                            if (this.f2446f == j2 && this.f2445e == workerRunningState3) {
                                this.f2445e = workerRunningState;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e2) {
                    synchronized (this.f2443b) {
                        try {
                            WorkerRunningState workerRunningState4 = this.f2445e;
                            if (workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) {
                                z = false;
                            } else if (this.f2443b.removeLastOccurrence(runnable2)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!(e2 instanceof RejectedExecutionException) || z) {
                                throw e2;
                            }
                            return;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
            this.f2443b.add(runnable);
        }
    }
}
