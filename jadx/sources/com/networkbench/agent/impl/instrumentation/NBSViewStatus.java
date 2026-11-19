package com.networkbench.agent.impl.instrumentation;

/* JADX INFO: loaded from: classes2.dex */
public enum NBSViewStatus {
    VIEW_STATUS_VALID("valid_view"),
    VIEW_STATUS_INVALID("invalid_view"),
    VIEW_STATUS_IGNORE("ignore_view");

    private final String value;

    NBSViewStatus(String str) {
        this.value = str;
    }

    public String getViewStatusValue() {
        return this.value;
    }
}
