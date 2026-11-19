package com.bumptech.glide.load;

import defpackage.cj;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpException extends IOException {
    private static final long serialVersionUID = 1;

    public HttpException(String str, int i2, Throwable th) {
        super(cj.e(i2, str, ", status code: "), th);
    }

    @Deprecated
    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i2) {
        this(str, i2, null);
    }

    public HttpException(int i2) {
        this("Http request failed", i2);
    }
}
