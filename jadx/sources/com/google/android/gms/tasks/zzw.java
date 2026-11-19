package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class zzw<TResult> extends Task<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f32116a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzr f32117b = new zzr();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f32118c;
    public volatile boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f32119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Exception f32120f;

    @Override // com.google.android.gms.tasks.Task
    public final void a(Executor executor, OnCanceledListener onCanceledListener) {
        this.f32117b.a(new zzh(executor, onCanceledListener));
        s();
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task addOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.f32117b.a(new zzj(TaskExecutors.f32086a, onCompleteListener));
        s();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final void b(Executor executor, OnCompleteListener onCompleteListener) {
        this.f32117b.a(new zzj(executor, onCompleteListener));
        s();
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task c(OnFailureListener onFailureListener) {
        d(TaskExecutors.f32086a, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task d(Executor executor, OnFailureListener onFailureListener) {
        this.f32117b.a(new zzl(executor, onFailureListener));
        s();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task e(OnSuccessListener onSuccessListener) {
        f(TaskExecutors.f32086a, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task f(Executor executor, OnSuccessListener onSuccessListener) {
        this.f32117b.a(new zzn(executor, onSuccessListener));
        s();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task g(Executor executor, Continuation continuation) {
        zzw zzwVar = new zzw();
        this.f32117b.a(new zzd(executor, continuation, zzwVar));
        s();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.f32116a) {
            exc = this.f32120f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Object getResult() {
        Object obj;
        synchronized (this.f32116a) {
            try {
                Preconditions.j("Task is not yet complete", this.f32118c);
                if (this.d) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f32120f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                obj = this.f32119e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task h(Executor executor, Continuation continuation) {
        zzw zzwVar = new zzw();
        this.f32117b.a(new zzf(executor, continuation, zzwVar));
        s();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Object i() {
        Object obj;
        synchronized (this.f32116a) {
            try {
                Preconditions.j("Task is not yet complete", this.f32118c);
                if (this.d) {
                    throw new CancellationException("Task is already canceled.");
                }
                boolean zIsInstance = IOException.class.isInstance(this.f32120f);
                Exception exc = this.f32120f;
                if (zIsInstance) {
                    throw ((Throwable) IOException.class.cast(exc));
                }
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                obj = this.f32119e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.f32116a) {
            try {
                z = false;
                if (this.f32118c && !this.d && this.f32120f == null) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean j() {
        return this.d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean k() {
        boolean z;
        synchronized (this.f32116a) {
            z = this.f32118c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task l(SuccessContinuation successContinuation) {
        Executor executor = TaskExecutors.f32086a;
        zzw zzwVar = new zzw();
        this.f32117b.a(new zzp(executor, successContinuation, zzwVar));
        s();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task m(Executor executor, SuccessContinuation successContinuation) {
        zzw zzwVar = new zzw();
        this.f32117b.a(new zzp(executor, successContinuation, zzwVar));
        s();
        return zzwVar;
    }

    public final void n(Object obj) {
        synchronized (this.f32116a) {
            r();
            this.f32118c = true;
            this.f32119e = obj;
        }
        this.f32117b.b(this);
    }

    public final boolean o(Object obj) {
        synchronized (this.f32116a) {
            try {
                if (this.f32118c) {
                    return false;
                }
                this.f32118c = true;
                this.f32119e = obj;
                this.f32117b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(Exception exc) {
        Preconditions.i(exc, "Exception must not be null");
        synchronized (this.f32116a) {
            r();
            this.f32118c = true;
            this.f32120f = exc;
        }
        this.f32117b.b(this);
    }

    public final void q() {
        synchronized (this.f32116a) {
            try {
                if (this.f32118c) {
                    return;
                }
                this.f32118c = true;
                this.d = true;
                this.f32117b.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        String strConcat;
        if (this.f32118c) {
            if (!k()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception exception = getException();
            if (exception != null) {
                strConcat = "failure";
            } else if (isSuccessful()) {
                strConcat = "result ".concat(String.valueOf(getResult()));
            } else {
                strConcat = this.d ? "cancellation" : "unknown issue";
            }
        }
    }

    public final void s() {
        synchronized (this.f32116a) {
            try {
                if (this.f32118c) {
                    this.f32117b.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
