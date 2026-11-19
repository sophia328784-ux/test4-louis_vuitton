package com.sensorsdata.analytics.android.sdk.network;

import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class HttpConfig implements Serializable {
    private static final String TAG = "SA.HttpConfig";
    private int connectionTimeout = NBSApplicationStateMonitor.ALTERNATEPERIOD;
    private int readTimeout = NBSApplicationStateMonitor.ALTERNATEPERIOD;

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public void setConnectionTimeout(int i2) {
        if (i2 >= 1000) {
            this.connectionTimeout = i2;
        } else {
            SALog.i(TAG, "connectionTimeout minimum value is 1000ms");
            this.connectionTimeout = 1000;
        }
    }

    public void setReadTimeout(int i2) {
        if (i2 >= 1000) {
            this.readTimeout = i2;
        } else {
            SALog.i(TAG, "readTimeout minimum value is 1000ms");
            this.readTimeout = 1000;
        }
    }
}
