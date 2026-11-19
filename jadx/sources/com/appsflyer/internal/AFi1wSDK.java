package com.appsflyer.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import java.util.ArrayList;
import kotlin.collections.ArraysKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1wSDK extends AFi1ySDK {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFi1wSDK(Context context) {
        super(context);
        context.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkInfo J_(AFi1wSDK aFi1wSDK, Network network) {
        ConnectivityManager unregisterClient = aFi1wSDK.getUnregisterClient();
        unregisterClient.getClass();
        return unregisterClient.getNetworkInfo(network);
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final String AFLogger() {
        Network[] allNetworks;
        Sequence sequenceE;
        Object next;
        NetworkInfo networkInfo;
        ConnectivityManager unregisterClient = getUnregisterClient();
        if (unregisterClient == null || (allNetworks = unregisterClient.getAllNetworks()) == null || (sequenceE = ArraysKt.e(allNetworks)) == null) {
            return "unknown";
        }
        FilteringSequence.AnonymousClass1 anonymousClass1 = new FilteringSequence.AnonymousClass1();
        do {
            if (!anonymousClass1.hasNext()) {
                next = null;
                break;
            }
            next = anonymousClass1.next();
            networkInfo = (NetworkInfo) next;
        } while (!(networkInfo != null ? networkInfo.isConnectedOrConnecting() : false));
        NetworkInfo networkInfo2 = (NetworkInfo) next;
        if (networkInfo2 == null) {
            return "unknown";
        }
        int type = networkInfo2.getType();
        if (type != 0) {
            return type != 1 ? "unknown" : "WIFI";
        }
        return "MOBILE";
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final Network K_() {
        Network[] allNetworks;
        Sequence sequenceE;
        ConnectivityManager unregisterClient = getUnregisterClient();
        Object obj = null;
        if (unregisterClient == null || (allNetworks = unregisterClient.getAllNetworks()) == null || (sequenceE = ArraysKt.e(allNetworks)) == null) {
            return null;
        }
        for (Object obj2 : sequenceE) {
            ConnectivityManager unregisterClient2 = getUnregisterClient();
            unregisterClient2.getClass();
            NetworkInfo networkInfo = unregisterClient2.getNetworkInfo((Network) obj2);
            if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                obj = obj2;
                break;
            }
        }
        return (Network) obj;
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final NetworkCapabilities L_() {
        Network networkK_ = K_();
        if (networkK_ == null) {
            return null;
        }
        ConnectivityManager unregisterClient = getUnregisterClient();
        unregisterClient.getClass();
        return unregisterClient.getNetworkCapabilities(networkK_);
    }

    @Override // com.appsflyer.internal.AFi1ySDK
    public final boolean registerClient() {
        Network[] allNetworks;
        try {
            ConnectivityManager unregisterClient = getUnregisterClient();
            if (unregisterClient != null && (allNetworks = unregisterClient.getAllNetworks()) != null) {
                ArrayList<NetworkCapabilities> arrayList = new ArrayList();
                for (Network network : allNetworks) {
                    ConnectivityManager unregisterClient2 = getUnregisterClient();
                    unregisterClient2.getClass();
                    NetworkCapabilities networkCapabilities = unregisterClient2.getNetworkCapabilities(network);
                    if (networkCapabilities != null) {
                        arrayList.add(networkCapabilities);
                    }
                }
                if (!arrayList.isEmpty()) {
                    for (NetworkCapabilities networkCapabilities2 : arrayList) {
                        if (networkCapabilities2 != null && networkCapabilities2.hasTransport(4) && !networkCapabilities2.hasCapability(15)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed collecting VPN capability data", e2, false, false, false, false, 120, null);
            return false;
        }
    }
}
