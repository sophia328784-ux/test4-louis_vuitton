package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: loaded from: classes2.dex */
final class DefaultConnectivityMonitor implements ConnectivityMonitor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f24885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectivityMonitor.ConnectivityListener f24886c;

    public DefaultConnectivityMonitor(Context context, ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f24885b = context.getApplicationContext();
        this.f24886c = connectivityListener;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
        SingletonConnectivityReceiver singletonConnectivityReceiverA = SingletonConnectivityReceiver.a(this.f24885b);
        ConnectivityMonitor.ConnectivityListener connectivityListener = this.f24886c;
        synchronized (singletonConnectivityReceiverA) {
            singletonConnectivityReceiverA.f24901b.add(connectivityListener);
            singletonConnectivityReceiverA.b();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
        SingletonConnectivityReceiver singletonConnectivityReceiverA = SingletonConnectivityReceiver.a(this.f24885b);
        ConnectivityMonitor.ConnectivityListener connectivityListener = this.f24886c;
        synchronized (singletonConnectivityReceiverA) {
            singletonConnectivityReceiverA.f24901b.remove(connectivityListener);
            if (singletonConnectivityReceiverA.f24902c && singletonConnectivityReceiverA.f24901b.isEmpty()) {
                SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = singletonConnectivityReceiverA.f24900a;
                ((ConnectivityManager) frameworkConnectivityMonitorPostApi24.f24907c.get()).unregisterNetworkCallback(frameworkConnectivityMonitorPostApi24.d);
                singletonConnectivityReceiverA.f24902c = false;
            }
        }
    }
}
