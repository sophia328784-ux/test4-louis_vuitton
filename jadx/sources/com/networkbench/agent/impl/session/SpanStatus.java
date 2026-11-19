package com.networkbench.agent.impl.session;

/* JADX INFO: loaded from: classes2.dex */
public enum SpanStatus {
    SPAN_STATUS_OK(1),
    SPAN_STATUS_ERROR(-1),
    SPAN_STATUS_UNKNOWN(0);

    private int value;

    SpanStatus(int i2) {
        this.value = i2;
    }

    public int getValue() {
        return this.value;
    }
}
