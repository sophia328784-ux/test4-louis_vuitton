package com.appsflyer.internal.components.network.http.exceptions;

import com.appsflyer.internal.AFd1nSDK;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class HttpException extends IOException {
    private final AFd1nSDK AFKeystoreWrapper;

    public HttpException(Throwable th, AFd1nSDK aFd1nSDK) {
        super(th.getMessage(), th);
        this.AFKeystoreWrapper = aFd1nSDK;
    }

    public AFd1nSDK getMetrics() {
        return this.AFKeystoreWrapper;
    }
}
