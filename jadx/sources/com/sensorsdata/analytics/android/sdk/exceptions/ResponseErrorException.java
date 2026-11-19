package com.sensorsdata.analytics.android.sdk.exceptions;

/* JADX INFO: loaded from: classes3.dex */
public class ResponseErrorException extends Exception {
    private int httpCode;

    public ResponseErrorException(String str, int i2) {
        super(str);
        this.httpCode = i2;
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public ResponseErrorException(Throwable th, int i2) {
        super(th);
        this.httpCode = i2;
    }
}
