package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class TaskCompletionSource<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzw f32085a = new zzw();

    public TaskCompletionSource(CancellationToken cancellationToken) {
        cancellationToken.a(new zzs(this));
    }

    public final void a(Exception exc) {
        this.f32085a.p(exc);
    }

    public final void b(Object obj) {
        this.f32085a.n(obj);
    }

    public final void c(Exception exc) {
        zzw zzwVar = this.f32085a;
        zzwVar.getClass();
        Preconditions.i(exc, "Exception must not be null");
        synchronized (zzwVar.f32116a) {
            try {
                if (zzwVar.f32118c) {
                    return;
                }
                zzwVar.f32118c = true;
                zzwVar.f32120f = exc;
                zzwVar.f32117b.b(zzwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Object obj) {
        this.f32085a.o(obj);
    }

    public TaskCompletionSource() {
    }
}
