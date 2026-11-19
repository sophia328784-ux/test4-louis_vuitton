package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes2.dex */
final class zzae<T> implements zzab<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f32090b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32091c;
    public final zzw d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32093f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Exception f32094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32095i;

    public zzae(int i2, zzw zzwVar) {
        this.f32091c = i2;
        this.d = zzwVar;
    }

    public final void a() {
        int i2 = this.f32092e;
        int i3 = this.f32093f;
        int i4 = i2 + i3 + this.g;
        int i5 = this.f32091c;
        if (i4 == i5) {
            Exception exc = this.f32094h;
            zzw zzwVar = this.d;
            if (exc == null) {
                if (this.f32095i) {
                    zzwVar.q();
                    return;
                } else {
                    zzwVar.n(null);
                    return;
                }
            }
            int length = String.valueOf(i3).length();
            StringBuilder sb = new StringBuilder(String.valueOf(i5).length() + length + 8 + 24);
            sb.append(i3);
            sb.append(" out of ");
            sb.append(i5);
            sb.append(" underlying tasks failed");
            zzwVar.p(new ExecutionException(sb.toString(), this.f32094h));
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void b() {
        synchronized (this.f32090b) {
            this.g++;
            this.f32095i = true;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        synchronized (this.f32090b) {
            this.f32093f++;
            this.f32094h = exc;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        synchronized (this.f32090b) {
            this.f32092e++;
            a();
        }
    }
}
