package com.clj.fastble.callback;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleBaseCallback {
    private Handler handler;
    private String key;

    public Handler getHandler() {
        return this.handler;
    }

    public String getKey() {
        return this.key;
    }

    public void setHandler(Handler handler) {
        this.handler = handler;
    }

    public void setKey(String str) {
        this.key = str;
    }
}
