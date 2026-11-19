package com.dynamicyield.sdk.wrapper.core.models.exception;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "isInitialize", "<init>", "(Z)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InitializeException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26385b;

    public InitializeException(boolean z) {
        super(z ? "DYSdk is already initialized" : "DYSdk is not initialized");
        this.f26385b = z ? "DYSdk is already initialized" : "DYSdk is not initialized";
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f26385b;
    }
}
