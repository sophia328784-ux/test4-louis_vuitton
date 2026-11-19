package com.linkplay.lpmdpkit.okhttp;

import okhttp3.Headers;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpResponseItem {
    public byte[] bytes;
    public Headers headers;
    public String body = "";
    public String url = "";
    public int code = 200;

    public boolean isSuccessful() {
        int i2 = this.code;
        return i2 >= 200 && i2 < 300;
    }
}
