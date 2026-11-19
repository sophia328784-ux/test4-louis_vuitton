package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class j<Result> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SettableFuture<Result> f39372a = new SettableFuture<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f39373b = System.nanoTime();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final NetworkTaskManager.TaskPriority f39374c;
    private volatile boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f39375e;

    public static final class a extends c {
    }

    public static final class b extends c {
    }

    public static class c extends RuntimeException {
    }

    public j(NetworkTaskManager.TaskPriority taskPriority) {
        Objects.requireNonNull(taskPriority, "priority must not be null");
        this.f39374c = taskPriority;
    }

    public abstract Result a();

    public final boolean a(Throwable th) {
        return this.f39372a.setException(th);
    }

    public final NetworkTaskManager.TaskPriority b() {
        return this.f39374c;
    }

    public final void c() {
        if (this.f39372a.isCancelled()) {
            throw new a();
        }
        if (this.d) {
            throw new b();
        }
    }

    public boolean cancel(boolean z) {
        return this.f39372a.cancel(z);
    }

    public final void d() {
        this.d = true;
    }

    public final boolean e() {
        return this.f39375e;
    }

    public final void f() {
        this.d = false;
        this.f39375e = false;
    }

    public final long g() {
        return this.f39373b;
    }

    public ListenableFuture<Result> getFuture() {
        return this.f39372a;
    }

    public final boolean isCancelled() {
        return this.f39372a.isCancelled();
    }

    public final boolean isDone() {
        return this.f39372a.isDone();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            c();
            this.f39372a.set(a());
        } catch (b unused) {
            this.f39375e = true;
        } catch (Throwable th) {
            this.f39372a.setException(th);
        }
    }
}
