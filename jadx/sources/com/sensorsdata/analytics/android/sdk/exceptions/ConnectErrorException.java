package com.sensorsdata.analytics.android.sdk.exceptions;

import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;

/* JADX INFO: loaded from: classes3.dex */
public class ConnectErrorException extends Exception {
    private int mRetryAfter;

    public ConnectErrorException(String str, String str2) {
        super(str);
        try {
            this.mRetryAfter = Integer.parseInt(str2);
        } catch (NumberFormatException unused) {
            this.mRetryAfter = 0;
        }
    }

    public int getRetryAfter() {
        return this.mRetryAfter;
    }

    public ConnectErrorException(String str) {
        super(str);
        this.mRetryAfter = NBSApplicationStateMonitor.ALTERNATEPERIOD;
    }

    public ConnectErrorException(Throwable th) {
        super(th);
    }
}
