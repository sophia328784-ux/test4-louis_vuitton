package com.appsflyer.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1sSDK extends AFi1ySDK {
    private Network AFKeystoreWrapper;
    private String AFLogger;

    public static final class AFa1ySDK extends ConnectivityManager.NetworkCallback {
        public AFa1ySDK() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            network.getClass();
            AFi1sSDK.this.AFKeystoreWrapper = network;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            network.getClass();
            AFi1sSDK.this.AFKeystoreWrapper = network;
            AFi1sSDK.this.AFLogger = "NetworkLost";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFi1sSDK(Context context) {
        super(context);
        context.getClass();
        this.AFLogger = "unknown";
        AFa1ySDK aFa1ySDK = new AFa1ySDK();
        try {
            ConnectivityManager unregisterClient = getUnregisterClient();
            if (unregisterClient != null) {
                unregisterClient.registerNetworkCallback(new NetworkRequest.Builder().build(), aFa1ySDK);
            }
        } catch (Throwable th) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Error at attempt to register network callback with ConnectivityManager", th, true, false, false, false, 96, null);
        }
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final String AFLogger() {
        Network networkK_ = K_();
        if (networkK_ != null) {
            ConnectivityManager unregisterClient = getUnregisterClient();
            NetworkCapabilities networkCapabilities = unregisterClient != null ? unregisterClient.getNetworkCapabilities(networkK_) : null;
            if (networkCapabilities != null) {
                if (networkCapabilities.hasTransport(1)) {
                    return "WIFI";
                }
                if (networkCapabilities.hasTransport(0)) {
                    return "MOBILE";
                }
            }
        }
        return "unknown";
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final Network K_() {
        Network activeNetwork;
        ConnectivityManager unregisterClient = getUnregisterClient();
        if (unregisterClient != null && (activeNetwork = unregisterClient.getActiveNetwork()) != null) {
            return activeNetwork;
        }
        Network network = this.AFKeystoreWrapper;
        if (network == null || Intrinsics.c(this.AFLogger, "NetworkLost")) {
            return null;
        }
        return network;
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final NetworkCapabilities L_() {
        ConnectivityManager unregisterClient;
        Network networkK_ = K_();
        if (networkK_ == null || (unregisterClient = getUnregisterClient()) == null) {
            return null;
        }
        return unregisterClient.getNetworkCapabilities(networkK_);
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final boolean registerClient() {
        Network networkK_ = K_();
        if (networkK_ != null) {
            ConnectivityManager unregisterClient = getUnregisterClient();
            NetworkCapabilities networkCapabilities = unregisterClient != null ? unregisterClient.getNetworkCapabilities(networkK_) : null;
            if (networkCapabilities != null && networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                return true;
            }
        }
        return false;
    }
}
