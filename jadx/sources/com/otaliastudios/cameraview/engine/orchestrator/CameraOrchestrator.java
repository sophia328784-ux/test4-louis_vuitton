package com.otaliastudios.cameraview.engine.orchestrator;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import defpackage.ct0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public class CameraOrchestrator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f38949e = CameraLogger.a("CameraOrchestrator");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Callback f38950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f38951b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f38952c = false;
    public final Object d = new Object();

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            final Job job;
            synchronized (CameraOrchestrator.this.d) {
                try {
                    job = null;
                    if (!CameraOrchestrator.this.f38952c) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        for (Job job2 : CameraOrchestrator.this.f38951b) {
                            if (job2.f38957e <= jCurrentTimeMillis) {
                                job = job2;
                                break;
                            }
                        }
                        if (job != null) {
                            CameraOrchestrator.this.f38952c = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (job != null) {
                final CameraOrchestrator cameraOrchestrator = CameraOrchestrator.this;
                final WorkerHandler workerHandlerA = cameraOrchestrator.f38950a.a();
                Runnable runnable = new Runnable() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            CameraOrchestrator.f38949e.b(1, job.f38954a.toUpperCase(), "- Executing.");
                            final Task task = (Task) job.f38956c.call();
                            WorkerHandler workerHandler = workerHandlerA;
                            final OnCompleteListener<Object> onCompleteListener = new OnCompleteListener<Object>() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.3.1
                                @Override // com.google.android.gms.tasks.OnCompleteListener
                                public final void onComplete(Task<Object> task2) {
                                    Exception exception = task2.getException();
                                    if (exception != null) {
                                        CameraOrchestrator.f38949e.b(2, job.f38954a.toUpperCase(), "- Finished with ERROR.", exception);
                                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                        if (job.d) {
                                            CameraOrchestrator.this.f38950a.b(exception);
                                        }
                                        job.f38955b.c(exception);
                                    } else if (task2.j()) {
                                        CameraOrchestrator.f38949e.b(1, job.f38954a.toUpperCase(), "- Finished because ABORTED.");
                                        job.f38955b.c(new CancellationException());
                                    } else {
                                        CameraOrchestrator.f38949e.b(1, job.f38954a.toUpperCase(), "- Finished.");
                                        job.f38955b.d(task2.getResult());
                                    }
                                    synchronized (CameraOrchestrator.this.d) {
                                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                                        CameraOrchestrator.a(CameraOrchestrator.this, job);
                                    }
                                }
                            };
                            if (!task.k()) {
                                task.b(workerHandler.d, onCompleteListener);
                                return;
                            }
                            Runnable runnable2 = new Runnable() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    onCompleteListener.onComplete(task);
                                }
                            };
                            workerHandler.getClass();
                            if (Thread.currentThread() == workerHandler.f39022b) {
                                runnable2.run();
                            } else {
                                workerHandler.f39023c.post(runnable2);
                            }
                        } catch (Exception e2) {
                            CameraOrchestrator.f38949e.b(1, job.f38954a.toUpperCase(), "- Finished with ERROR.", e2);
                            if (job.d) {
                                CameraOrchestrator.this.f38950a.b(e2);
                            }
                            job.f38955b.c(e2);
                            synchronized (CameraOrchestrator.this.d) {
                                CameraOrchestrator.a(CameraOrchestrator.this, job);
                            }
                        }
                    }
                };
                workerHandlerA.getClass();
                if (Thread.currentThread() == workerHandlerA.f39022b) {
                    runnable.run();
                } else {
                    workerHandlerA.f39023c.post(runnable);
                }
            }
        }
    }

    public interface Callback {
        WorkerHandler a();

        void b(Exception exc);
    }

    public static class Job<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f38954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TaskCompletionSource f38955b = new TaskCompletionSource();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Callable f38956c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f38957e;

        public Job(long j2, String str, Callable callable, boolean z) {
            this.f38954a = str;
            this.f38956c = callable;
            this.d = z;
            this.f38957e = j2;
        }
    }

    public CameraOrchestrator(Callback callback) {
        this.f38950a = callback;
    }

    public static void a(CameraOrchestrator cameraOrchestrator, Job job) {
        if (!cameraOrchestrator.f38952c) {
            ct0.o(job.f38954a, "mJobRunning was not true after completing job=");
            return;
        }
        cameraOrchestrator.f38952c = false;
        cameraOrchestrator.f38951b.remove(job);
        WorkerHandler workerHandlerA = cameraOrchestrator.f38950a.a();
        workerHandlerA.f39023c.postDelayed(cameraOrchestrator.new AnonymousClass2(), 0L);
    }

    public final Task b(String str, long j2, final Runnable runnable) {
        return c(j2, str, new Callable<Task<Void>>() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() {
                runnable.run();
                return Tasks.f(null);
            }
        }, true);
    }

    public final Task c(long j2, String str, Callable callable, boolean z) {
        f38949e.b(1, str.toUpperCase(), "- Scheduling.");
        Job job = new Job(System.currentTimeMillis() + j2, str, callable, z);
        synchronized (this.d) {
            this.f38951b.addLast(job);
            WorkerHandler workerHandlerA = this.f38950a.a();
            workerHandlerA.f39023c.postDelayed(new AnonymousClass2(), j2);
        }
        return job.f38955b.f32085a;
    }

    public final void d(int i2, String str) {
        synchronized (this.d) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Job job : this.f38951b) {
                    if (job.f38954a.equals(str)) {
                        arrayList.add(job);
                    }
                }
                f38949e.b(0, "trim: name=", str, "scheduled=", Integer.valueOf(arrayList.size()), "allowed=", Integer.valueOf(i2));
                int iMax = Math.max(arrayList.size() - i2, 0);
                if (iMax > 0) {
                    Collections.reverse(arrayList);
                    Iterator it = arrayList.subList(0, iMax).iterator();
                    while (it.hasNext()) {
                        this.f38951b.remove((Job) it.next());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
