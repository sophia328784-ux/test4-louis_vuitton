package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j1 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ListenableFutureTask f40381c;

    public /* synthetic */ j1(ListenableFutureTask listenableFutureTask, int i2) {
        this.f40380b = i2;
        this.f40381c = listenableFutureTask;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40380b;
        ListenableFutureTask listenableFutureTask = this.f40381c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                break;
            case 1:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                break;
            case 2:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                break;
            case 3:
                int i3 = PhotoMakeupInternal.n;
                break;
            case 4:
                int i4 = PhotoMakeupInternal.n;
                break;
            case 5:
                int i5 = PhotoMakeupInternal.n;
                break;
            default:
                int i6 = PhotoMakeupInternal.n;
                break;
        }
        return Singles.a(listenableFutureTask, CallingThread.ANY);
    }
}
