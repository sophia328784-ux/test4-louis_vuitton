package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager;

import com.perfectcorp.common.network.NetworkTaskManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NetworkTaskManagerHolder {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a f42000a = new com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a();
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NetworkTaskManager f42001a = new NetworkTaskManager(a.f42000a);
    }

    public static NetworkTaskManager a() {
        return b.f42001a;
    }

    public static com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a b() {
        return a.f42000a;
    }
}
