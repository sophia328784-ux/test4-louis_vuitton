package com.dynatrace.android.agent.crash;

import com.networkbench.agent.impl.NBSSpanMetricUnit;

/* JADX INFO: loaded from: classes2.dex */
public enum PlatformType {
    JAVA("a"),
    JAVA_SCRIPT("j"),
    XAMARIN("x"),
    DART(NBSSpanMetricUnit.Day),
    CUSTOM("c");

    private final String protocolValue;

    PlatformType(String str) {
        this.protocolValue = str;
    }

    public final String a() {
        return this.protocolValue;
    }
}
