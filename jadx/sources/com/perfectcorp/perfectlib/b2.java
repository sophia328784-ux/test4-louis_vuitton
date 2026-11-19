package com.perfectcorp.perfectlib;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.ApplyCallback f40044c;

    public /* synthetic */ b2(VtoApplier.ApplyCallback applyCallback, int i2) {
        this.f40043b = i2;
        this.f40044c = applyCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40043b;
        VtoApplier.ApplyCallback applyCallback = this.f40044c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                applyCallback.onSuccess(null);
                break;
            case 1:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                applyCallback.onSuccess(null);
                break;
            default:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                applyCallback.onSuccess(null);
                break;
        }
    }
}
