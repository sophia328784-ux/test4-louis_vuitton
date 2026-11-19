package com.google.android.gms.tasks;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import defpackage.r81;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Tasks {
    public static Object a(Task task) throws InterruptedException {
        Preconditions.g("Must not be called on the main application thread");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && Objects.equals(looperMyLooper.getThread().getName(), "GoogleApiHandler")) {
            md.k("Must not be called on GoogleApiHandler thread.");
            return null;
        }
        Preconditions.i(task, "Task must not be null");
        if (task.k()) {
            return h(task);
        }
        zzaa zzaaVar = new zzaa();
        Executor executor = TaskExecutors.f32087b;
        task.f(executor, zzaaVar);
        task.d(executor, zzaaVar);
        task.a(executor, zzaaVar);
        zzaaVar.f32089b.await();
        return h(task);
    }

    public static Object b(Task task, long j2, TimeUnit timeUnit) throws TimeoutException {
        Preconditions.g("Must not be called on the main application thread");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && Objects.equals(looperMyLooper.getThread().getName(), "GoogleApiHandler")) {
            md.k("Must not be called on GoogleApiHandler thread.");
            return null;
        }
        Preconditions.i(task, "Task must not be null");
        Preconditions.i(timeUnit, "TimeUnit must not be null");
        if (task.k()) {
            return h(task);
        }
        zzaa zzaaVar = new zzaa();
        Executor executor = TaskExecutors.f32087b;
        task.f(executor, zzaaVar);
        task.d(executor, zzaaVar);
        task.a(executor, zzaaVar);
        if (zzaaVar.f32089b.await(j2, timeUnit)) {
            return h(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static Task c(Callable callable, Executor executor) {
        Preconditions.i(executor, "Executor must not be null");
        zzw zzwVar = new zzw();
        executor.execute(new zzx(zzwVar, callable));
        return zzwVar;
    }

    public static Task d() {
        zzw zzwVar = new zzw();
        zzwVar.q();
        return zzwVar;
    }

    public static Task e(Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.p(exc);
        return zzwVar;
    }

    public static Task f(Object obj) {
        zzw zzwVar = new zzw();
        zzwVar.n(obj);
        return zzwVar;
    }

    public static Task g(List list) {
        if (list == null || list.isEmpty()) {
            return f(null);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Task) it.next()) == null) {
                r81.d("null tasks are not accepted");
                return null;
            }
        }
        zzw zzwVar = new zzw();
        zzae zzaeVar = new zzae(list.size(), zzwVar);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Task task = (Task) it2.next();
            Executor executor = TaskExecutors.f32087b;
            task.f(executor, zzaeVar);
            task.d(executor, zzaeVar);
            task.a(executor, zzaeVar);
        }
        return zzwVar;
    }

    public static Object h(Task task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.j()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.getException());
    }
}
