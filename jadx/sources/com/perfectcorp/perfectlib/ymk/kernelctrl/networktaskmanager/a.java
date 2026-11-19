package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.h;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import defpackage.a61;
import defpackage.ho0;
import defpackage.jn0;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements h<InitResponse> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f42002c = new Object();
    public static final List d = com.perfectcorp.perfectlib.ymk.a.f41935a.f41941h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f42003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile SettableFuture f42004b;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a$a, reason: collision with other inner class name */
    public static final class C0198a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f42005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f42006b;

        public C0198a(String str, boolean z) {
            Objects.requireNonNull(str);
            this.f42005a = str;
            this.f42006b = z;
        }
    }

    @Override // com.perfectcorp.common.network.h
    public final ListenableFuture a(NetworkTaskManager.InitRequestHandler initRequestHandler) {
        int i2 = 3;
        Log.g(3, "SDKInitHandler", "[requestInit] start");
        SettableFuture settableFuture = this.f42004b;
        Log.g(3, "SDKInitHandler", "[requestInit] check local future (1)");
        if (settableFuture == null) {
            Log.g(3, "SDKInitHandler", "[requestInit] local future (1) is null");
            synchronized (f42002c) {
                try {
                    Log.g(3, "SDKInitHandler", "[requestInit] enter critical section");
                    settableFuture = this.f42004b;
                    Log.g(3, "SDKInitHandler", "[requestInit] check local future (2)");
                    if (settableFuture == null) {
                        Log.g(3, "SDKInitHandler", "[requestInit] local future (2) is null");
                        List list = d;
                        boolean z = this.f42003a;
                        Log.g(3, "SDKInitHandler", "[startInit] start");
                        SettableFuture settableFuture2 = new SettableFuture();
                        new t(new t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new ho0(initRequestHandler, list, z, i2)), new a61(14)), new a61(16)).a(new ConsumerSingleObserver(new jn0(settableFuture2, 1), new jn0(settableFuture2, 2)));
                        Log.g(3, "SDKInitHandler", "[startInit] end");
                        this.f42004b = settableFuture2;
                        Log.g(3, "SDKInitHandler", "[requestInit] future created");
                        MoreFutures.a(this.f42004b, new b(this), CallingThread.ANY);
                        Log.g(3, "SDKInitHandler", "[requestInit] future callback added");
                        settableFuture = settableFuture2;
                    } else {
                        Log.g(3, "SDKInitHandler", "[requestInit] local future (2) isn't null");
                    }
                    Log.g(3, "SDKInitHandler", "[requestInit] exit critical section");
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            Log.g(3, "SDKInitHandler", "[requestInit] local future (1) isn't null");
        }
        Log.g(3, "SDKInitHandler", "[requestInit] return local future");
        return settableFuture;
    }
}
