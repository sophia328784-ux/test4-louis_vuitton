package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.md;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1pSDK<ResponseBody> {
    private final AtomicBoolean AFKeystoreWrapper = new AtomicBoolean(false);
    private final ExecutorService AFLogger;
    private final AFd1iSDK<ResponseBody> d;
    private final AFd1mSDK registerClient;
    public final AFd1oSDK unregisterClient;

    public AFd1pSDK(AFd1oSDK aFd1oSDK, ExecutorService executorService, AFd1mSDK aFd1mSDK, AFd1iSDK<ResponseBody> aFd1iSDK) {
        this.unregisterClient = aFd1oSDK;
        this.AFLogger = executorService;
        this.registerClient = aFd1mSDK;
        this.d = aFd1iSDK;
    }

    public final AFd1fSDK<ResponseBody> AFKeystoreWrapper() throws IOException {
        if (this.AFKeystoreWrapper.getAndSet(true)) {
            md.k("Http call is already executed");
            return null;
        }
        AFd1fSDK<String> aFd1fSDKRegisterClient = this.registerClient.registerClient(this.unregisterClient);
        try {
            return new AFd1fSDK<>(this.d.registerClient(aFd1fSDKRegisterClient.getBody()), aFd1fSDKRegisterClient.unregisterClient, aFd1fSDKRegisterClient.AFLogger, aFd1fSDKRegisterClient.d, aFd1fSDKRegisterClient.AFKeystoreWrapper);
        } catch (JSONException e2) {
            AFLogger.INSTANCE.e(LogTag.HTTP_CLIENT, "Could not parse raw response during execute", e2, false, false);
            throw new ParsingException(e2.getMessage(), e2, aFd1fSDKRegisterClient);
        }
    }
}
