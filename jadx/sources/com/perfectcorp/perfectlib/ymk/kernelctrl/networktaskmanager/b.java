package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;

/* JADX INFO: loaded from: classes3.dex */
final class b extends DefaultFutureCallback<InitResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f42007a;

    public b(a aVar) {
        this.f42007a = aVar;
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        Log.e("SDKInitHandler", "[requestInit] onFailure", th);
        synchronized (a.f42002c) {
            Log.g(3, "SDKInitHandler", "[requestInit] reset future");
            this.f42007a.f42004b = null;
            Log.g(3, "SDKInitHandler", "[requestInit] future reset");
        }
        Log.g(3, "SDKInitHandler", "[requestInit] onFailure. exit");
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        defpackage.a.A(new StringBuilder("[requestInit] onSuccess. result="), ((InitResponse) obj).f41996e, 3, "SDKInitHandler");
    }
}
