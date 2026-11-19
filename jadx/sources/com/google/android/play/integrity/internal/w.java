package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class w extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f33338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f33339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ae f33340c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(ae aeVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, t tVar) {
        super(taskCompletionSource);
        this.f33340c = aeVar;
        this.f33338a = taskCompletionSource2;
        this.f33339b = tVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        synchronized (this.f33340c.f33319f) {
            try {
                final ae aeVar = this.f33340c;
                final TaskCompletionSource taskCompletionSource = this.f33338a;
                aeVar.f33318e.add(taskCompletionSource);
                taskCompletionSource.f32085a.addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.v
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        ae aeVar2 = aeVar;
                        TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                        synchronized (aeVar2.f33319f) {
                            aeVar2.f33318e.remove(taskCompletionSource2);
                        }
                    }
                });
                if (this.f33340c.l.getAndIncrement() > 0) {
                    this.f33340c.f33316b.a("Already connected to the service.", new Object[0]);
                }
                ae.b(this.f33340c, this.f33339b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
