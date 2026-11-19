package com.appsflyer.internal.components.network.http.exceptions;

import com.appsflyer.internal.AFd1fSDK;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ParsingException extends IOException {
    private final AFd1fSDK<String> AFKeystoreWrapper;

    public ParsingException(String str, Throwable th, AFd1fSDK<String> aFd1fSDK) {
        super(str, th);
        this.AFKeystoreWrapper = aFd1fSDK;
    }

    public AFd1fSDK<String> getRawResponse() {
        return this.AFKeystoreWrapper;
    }
}
