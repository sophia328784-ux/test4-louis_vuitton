package com.dynatrace.android.agent.metrics;

import com.batch.android.b.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;

/* JADX INFO: loaded from: classes2.dex */
public enum ConnectionType {
    OFFLINE("o"),
    MOBILE(NBSSpanMetricUnit.Minute),
    WIFI("w"),
    LAN(b.d),
    OTHER("");

    private String protocolValue;

    ConnectionType(String str) {
        this.protocolValue = str;
    }

    public final String a() {
        return this.protocolValue;
    }
}
