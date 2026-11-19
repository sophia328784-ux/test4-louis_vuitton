package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z2 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f42059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LiveSettingCtrl f42060c;
    public final /* synthetic */ LiveMakeupCtrlInterface d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f42061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Consumer f42062f;

    public /* synthetic */ z2(Set set, LiveSettingCtrl liveSettingCtrl, LiveMakeupCtrlInterface liveMakeupCtrlInterface, boolean z, Consumer consumer) {
        this.f42059b = set;
        this.f42060c = liveSettingCtrl;
        this.d = liveMakeupCtrlInterface;
        this.f42061e = z;
        this.f42062f = consumer;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new v1(this.f42059b, this.f42060c, this.d, 0));
        ListenableFuture listenableFutureH = this.f42061e ? Futures.h(listenableFutureTaskCreate, new c2(4), MakeupCamInternal.n) : listenableFutureTaskCreate;
        this.f42062f.accept(listenableFutureTaskCreate);
        return Singles.a(listenableFutureH, CallingThread.ANY);
    }
}
