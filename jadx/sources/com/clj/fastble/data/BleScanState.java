package com.clj.fastble.data;

/* JADX INFO: loaded from: classes2.dex */
public enum BleScanState {
    STATE_IDLE(-1),
    STATE_SCANNING(1);

    private int code;

    BleScanState(int i2) {
        this.code = i2;
    }
}
