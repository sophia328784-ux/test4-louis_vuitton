package com.dynatrace.agent.common.connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;", "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NetworkConnectivityCheckerImpl implements NetworkConnectivityChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f26501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f26502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedFlow f26503c;

    public NetworkConnectivityCheckerImpl(Context context, CoroutineScope coroutineScope) {
        context.getClass();
        coroutineScope.getClass();
        this.f26501a = coroutineScope;
        Object systemService = context.getSystemService("connectivity");
        this.f26502b = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        this.f26503c = FlowKt.z(FlowKt.d(new NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1(this, null)), coroutineScope, SharingStarted.Companion.a(SharingStarted.f74985a, 3), 0);
    }

    @Override // com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SharedFlow getF26503c() {
        return this.f26503c;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0041 A[Catch: SecurityException -> 0x000b, TryCatch #0 {SecurityException -> 0x000b, blocks: (B:4:0x0006, B:9:0x0010, B:11:0x0016, B:14:0x0020, B:16:0x0027, B:26:0x0043, B:17:0x002a, B:19:0x0030, B:20:0x0033, B:22:0x003a, B:23:0x003d, B:25:0x0041), top: B:30:0x0006 }] */
    @Override // com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker
    public final NetworkState b() {
        Network activeNetwork;
        NetworkType networkType;
        ConnectivityManager connectivityManager = this.f26502b;
        if (connectivityManager != null) {
            try {
                activeNetwork = connectivityManager.getActiveNetwork();
            } catch (SecurityException e2) {
                Utility.b("currentNetworkState: security exception while accessing ConnectivityManager: " + e2.getMessage());
                return new NetworkState(false, NetworkType.NONE);
            }
        } else {
            activeNetwork = null;
        }
        NetworkCapabilities networkCapabilities = connectivityManager != null ? connectivityManager.getNetworkCapabilities(activeNetwork) : null;
        boolean zHasCapability = networkCapabilities != null ? networkCapabilities.hasCapability(16) : false;
        if (networkCapabilities == null) {
            networkType = NetworkType.NONE;
        } else {
            if (networkCapabilities.hasTransport(1)) {
                networkType = NetworkType.WIFI;
            } else if (networkCapabilities.hasTransport(0)) {
                networkType = NetworkType.CELLULAR;
            } else {
                networkType = networkCapabilities.hasTransport(3) ? NetworkType.ETHERNET : NetworkType.OTHER;
            }
            if (networkType == null) {
                networkType = NetworkType.NONE;
            }
        }
        return new NetworkState(zHasCapability, networkType);
    }
}
