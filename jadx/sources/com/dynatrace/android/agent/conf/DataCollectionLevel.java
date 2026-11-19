package com.dynatrace.android.agent.conf;

/* JADX INFO: loaded from: classes2.dex */
public enum DataCollectionLevel {
    OFF(0),
    PERFORMANCE(1),
    USER_BEHAVIOR(2);

    private final int javaScriptValue;

    DataCollectionLevel(int i2) {
        this.javaScriptValue = i2;
    }

    public final int a() {
        return this.javaScriptValue;
    }
}
