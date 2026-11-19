package com.networkbench.agent.impl.session;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNetworkCallback extends ConnectivityManager.NetworkCallback {
    ConnectivityManager connectivityManager;
    int type;

    public NBSNetworkCallback(ConnectivityManager connectivityManager) {
        this.type = 0;
        this.connectivityManager = connectivityManager;
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            this.type = extracted(activeNetworkInfo);
        } else {
            this.type = 0;
        }
    }

    private int extracted(NetworkInfo networkInfo) {
        TelephonyManager telephonyManager;
        if (networkInfo == null) {
            return 0;
        }
        if (networkInfo.getType() == 1) {
            return 1;
        }
        if (!v.e(r.u().J()) || (telephonyManager = (TelephonyManager) r.u().J().getSystemService("phone")) == null) {
            return 0;
        }
        return v.a(r.u().J(), telephonyManager.getNetworkType());
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        super.onCapabilitiesChanged(network, networkCapabilities);
        try {
            if (r.p != 0) {
                return;
            }
            ConnectivityManager connectivityManager = this.connectivityManager;
            if (connectivityManager == null) {
                this.type = 0;
                return;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                this.type = 0;
                return;
            }
            int iExtracted = extracted(activeNetworkInfo);
            if (this.type != iExtracted) {
                Event event = new Event("network change", 2, null);
                event.getAttributes().addProperty("networkStatusFrom", Integer.valueOf(this.type));
                event.getAttributes().addProperty("networkStatusTo", Integer.valueOf(iExtracted));
                HarvestData.getSpanDatas().addEvent(event);
            }
            this.type = iExtracted;
        } catch (Throwable unused) {
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        if (r.p != 0) {
            return;
        }
        ConnectivityManager connectivityManager = this.connectivityManager;
        if (connectivityManager == null) {
            this.type = 0;
            return;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.type = extracted(activeNetworkInfo);
            }
            Event event = new Event("network change", 2, null);
            event.getAttributes().addProperty("networkStatusFrom", Integer.valueOf(this.type));
            event.getAttributes().addProperty("networkStatusTo", (Number) 0);
            HarvestData.getSpanDatas().addEvent(event);
            this.type = 0;
        } catch (Throwable unused) {
        }
    }
}
