package com.dynamicyield.sdk.wrapper.core.models.exception;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/exception/MissingActiveConsentException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "()V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MissingActiveConsentException extends Exception {
    public MissingActiveConsentException() {
        super("The request is blocked because the active consent value is false and the 'activeConsentAccepted' flag is set to true. Please ensure active consent is accepted before sending the request.");
    }
}
