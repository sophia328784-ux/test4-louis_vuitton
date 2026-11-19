package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
final class zzaa<T> implements zzab<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f32089b = new CountDownLatch(1);

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void b() {
        this.f32089b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f32089b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.f32089b.countDown();
    }
}
