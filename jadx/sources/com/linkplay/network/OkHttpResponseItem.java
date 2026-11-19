package com.linkplay.network;

import java.io.Serializable;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpResponseItem implements Serializable {
    public byte[] bytes;
    public int code = 200;
    public Headers headers;

    public String toString() {
        return "[code:" + this.code + ", headers:" + this.headers.toString() + "]";
    }
}
