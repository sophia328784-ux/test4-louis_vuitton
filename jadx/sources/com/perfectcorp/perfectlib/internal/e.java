package com.perfectcorp.perfectlib.internal;

import android.net.ConnectivityManager;
import android.net.Network;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;

/* JADX INFO: loaded from: classes3.dex */
final class e extends ConnectivityManager.NetworkCallback {
    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        Log.g(3, "NetworkCallbackTrigger", "onAvailable");
        NetworkTaskManager networkTaskManagerA = NetworkTaskManagerHolder.a();
        networkTaskManagerA.f39341b.a(networkTaskManagerA.f39342c);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        Log.g(3, "NetworkCallbackTrigger", "onLost");
    }
}
